#!/bin/bash
: <<'END_COMMENT'
https://github.com/fluent/fluentd/pull/4865/files
chmod u+x ./fluentd.bash
sudo rm -rf /tmp/2
END_COMMENT

# /tmp/2ディレクトリを作成
sudo mkdir -p /tmp/2/d--- /tmp/2/d--x /tmp/2/dr-x
sudo chmod 770 /tmp/2/d---
sudo chmod 771 /tmp/2/d--x
sudo chmod 775 /tmp/2/dr-x

# d---ディレクトリ内のファイルを作成
# sudo touch /tmp/2/d---/file_---.log /tmp/2/d---/file_r--.log
sudo sh -c 'echo test > /tmp/2/d---/file_---.log'
sudo sh -c 'echo test > /tmp/2/d---/file_r--.log'
sudo chmod 640 /tmp/2/d---/file_---.log
sudo chmod 644 /tmp/2/d---/file_r--.log
sudo chown root:root /tmp/2/d---/file_---.log /tmp/2/d---/file_r--.log

# d--xディレクトリ内のファイルを作成
# sudo touch /tmp/2/d--x/file_---.log /tmp/2/d--x/file_r--.log
sudo sh -c 'echo test > /tmp/2/d--x/file_---.log'
sudo sh -c 'echo test > /tmp/2/d--x/file_r--.log'
sudo chmod 640 /tmp/2/d--x/file_---.log
sudo chmod 644 /tmp/2/d--x/file_r--.log
sudo chown root:root /tmp/2/d--x/file_---.log /tmp/2/d--x/file_r--.log

# dr-xディレクトリ内のファイルを作成
# sudo touch /tmp/2/dr-x/file_---.log /tmp/2/dr-x/file_r--.log
sudo sh -c 'echo test > /tmp/2/dr-x/file_---.log'
sudo sh -c 'echo test > /tmp/2/dr-x/file_r--.log'
sudo chmod 660 /tmp/2/dr-x/file_---.log
sudo chmod 664 /tmp/2/dr-x/file_r--.log
sudo chown root:root /tmp/2/dr-x/file_---.log /tmp/2/dr-x/file_r--.log

# 権限を設定したディレクトリとファイルの一覧を表示
sudo ls -lR /tmp/2
