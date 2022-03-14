require('nvim-rooter').setup {
  rooter_patterns = { '.git', 'Makefile', '_darcs', '.hg', '.bzr', '.svn',
  'package.json', 'CMakeLists.txt', 'settings.gradle' },
  trigger_patterns = { '*' },
  manual = false,
}
