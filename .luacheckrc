return {
  exclude_files = {
    '**/*_test.lua',
    'src/helpers/test_helpers.lua'
  },
  globals = {
    "json",
    "globals",
    "http",
    "pplus"
  },
}