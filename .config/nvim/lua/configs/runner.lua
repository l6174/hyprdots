require("runner-nvchad").setup {
  pos = "sp", --(vsp|sp|float) "horizontal|vertical|float"
  id = "ekk",
  clear_cmd = false, -- clear output previous run
  autoremove = false, -- auto clear $fileNameWithoutExt
  commands = {
    lua = {
      comp = "lua run $filePath",
    },
    cpp = {
      comp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt", --default
      dbgcomp = "cd $dir && g++ -g $fileName -o $fileNameWithoutExt", -- default
    },
  },
}
