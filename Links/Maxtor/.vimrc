let verbose=0
if (verbose)
	echo "Link found"
endif
let enviroment_settings = "D:/EnviromentSettings"
"let vim_settings = "D:/EnviromentSettings/VimSettings"
let vim_settings = enviroment_settings."/VimSettings"
execute "source ".vim_settings."/.vimrc"
