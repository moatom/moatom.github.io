function ordinal_numbers(n)
  local ordinal, digit = {"st", "nd", "rd"}, string.sub(n, -1)
  if tonumber(digit) > 0 and tonumber(digit) <= 3 and
     string.sub(n,-2) ~= "11" and string.sub(n,-2) ~= "12" and string.sub(n,-2) ~= "13" then
    if string.sub(n, 1, 1) == "0" then
      return digit .. ordinal[tonumber(digit)]
    else
      return n .. ordinal[tonumber(digit)]
    end
  else
    if string.sub(n, 1, 1) == "0" then
        return digit .. "th"
    else
        return n .. "th"
    end
  end
end

function Meta(meta)
  if meta.date then
    local format = "(%d+)-(%d+)-(%d+)"
    local y, m, d = pandoc.utils.stringify(meta.date):match(format)
    local date = os.time({
      year = y,
      month = m,
      day = d,
    })
    local date_string = os.date("%d %b %Y", date)
    local day = string.sub(date_string,1,2)
    local month_year = string.sub(date_string,4,11)

    meta.date = pandoc.Str(string.format("%s %s", ordinal_numbers(day), month_year))
    return meta
  end
end