local ok, db = pcall(require, 'dashboard')
if not ok then
  return
end

db.custom_header = {
  '╭━╮╱╭┳━━━┳━━━┳╮╱╱╭┳━━┳━╮╭━╮',
  '┃┃╰╮┃┃╭━━┫╭━╮┃╰╮╭╯┣┫┣┫┃╰╯┃┃',
  '┃╭╮╰╯┃╰━━┫┃╱┃┣╮┃┃╭╯┃┃┃╭╮╭╮┃',
  '┃┃╰╮┃┃╭━━┫┃╱┃┃┃╰╯┃╱┃┃┃┃┃┃┃┃',
  '┃┃╱┃┃┃╰━━┫╰━╯┃╰╮╭╯╭┫┣┫┃┃┃┃┃',
  '╰╯╱╰━┻━━━┻━━━╯╱╰╯╱╰━━┻╯╰╯╰╯',
}

db.custom_center = {
  {
    icon = '  ',
    desc = 'Find File ',
    action = 'Telescope find_files',
    shortcut = ';ff'
  }
}
