echo "Link found"
let enviroment_settings = "pathtocontainingfolder/EnviromentSettings"
let vim_settings = .enviroment_settings."/VimSettings"
execute "source ".vim_settings."/.vimrc"
