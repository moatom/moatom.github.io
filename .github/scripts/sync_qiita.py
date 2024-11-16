import os
import json
import requests
from pathlib import Path

# Qiita APIの設定
QIITA_API_URL = "https://qiita.com/api/v2/items"
QIITA_ACCESS_TOKEN = os.getenv("QIITA_API_TOKEN")

# 記事/IDを管理するファイルのパス
POSTS_DIR = "qiita_posts/"
ARTICLE_IDS_FILE = Path(".github/scripts/qiita_article_ids.json")

# qiita_posts ディレクトリ内の変更されたファイルを取得する関数
def get_modified_files():
    # git diff を使って、qiita_posts/ 内で変更されたファイルを取得
    result = subprocess.run(
        ["git", "diff", "--name-only", "HEAD", POSTS_DIR],
        stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True
    )
    modified_files = result.stdout.splitlines()
    return modified_files

# Qiitaに記事を投稿または更新する関数
def post_or_update_article(file_path, article_id=None):
    # 記事の内容を読み込む
    with open(file_path, "r", encoding="utf-8") as f:
        content = f.read()

    # 記事IDがある場合は更新、ない場合は新規投稿
    if article_id:
        # 更新処理
        print(f"Updating article: {article_id}")
        response = requests.patch(
            f"{QIITA_API_URL}/{article_id}",
            headers={"Authorization": f"Bearer {ACCESS_TOKEN}"},
            json={"body": content}
        )
    else:
        # 新規投稿
        print(f"Creating new article from {file_path.name}")
        response = requests.post(
            QIITA_API_URL,
            headers={"Authorization": f"Bearer {ACCESS_TOKEN}"},
            json={"title": file_path.stem, "body": content, "tags": [], "private": True}  # プライベート設定
        )

    # エラーチェック
    if response.status_code == 200:
        return response.json()["id"]
    else:
        print(f"Error: {response.status_code} - {response.text}")
        return None

# 記事IDを管理するJSONファイルを更新する関数
def update_article_ids(new_article_id):
    # 記事IDを管理するファイルが存在しない場合は初期化
    if ARTICLE_IDS_FILE.exists():
        with open(ARTICLE_IDS_FILE, "r", encoding="utf-8") as f:
            data = json.load(f)
    else:
        data = {"article_ids": []}

    # 新しい記事IDを追加
    if new_article_id not in data["article_ids"]:
        data["article_ids"].append(new_article_id)

    # JSONファイルを更新
    with open(ARTICLE_IDS_FILE, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=4)

# メイン処理
def sync_articles():
    # 変更されたファイルを検出
    modified_files = get_modified_files()

    # qiita_posts/ 内の変更されたファイルを処理
    for file in modified_files:
        file_path = Path(file)

        # 変更されたファイルが qiita_posts/ に含まれているか確認
        if file_path.startswith(POSTS_DIR) and file_path.suffix == ".md": # TODO Path.globでやるのもあり。
          article_id = None
          # article_id がすでに JSON に存在するか確認
          with open(ARTICLE_IDS_FILE, "r", encoding="utf-8") as f:
              data = json.load(f)
          for existing_article_id in data["article_ids"]:
              if existing_article_id in file.name:
                  article_id = existing_article_id
                  break

          # Qiita に記事を投稿または更新
          new_article_id = post_or_update_article(file, article_id)

          # 成功した場合は記事IDを更新
          if new_article_id:
              update_article_ids(new_article_id)

if __name__ == "__main__":
    sync_articles()
