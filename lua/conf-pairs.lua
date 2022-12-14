require('pairs').setup({
  pairs = {
    ['*'] = {
      {'(', ')'},
      {'[', ']'},
      {'{', '}'},
      {"'", "'"},
      {'"', '"'},
      				-- 想自动什么就在这里添加，格式像上面一样
    },
    lua = {
      {'(', ')', {ignore = {'%(', '%)', '%%'}}},
      {'[', ']', {ignore = {'%[', '%]', '%%'}}},
      {'{', '}', {ignore = {'%{', '%}', '%%'}}},
    },
    python = {
      {"'", "'", {triplet = true}},
      {'"', '"', {triplet = true}},
    },
    markdown = {
      {'`', '`', {triplet = true}},
    },
    tex = {
      {'$', '$', {cross_line = true}},
      -- Chinese pairs
      {'（', '）'},
      {'【', '】'},
      {'‘', '’'},
      {'“', '”'},
    }
  }
})

