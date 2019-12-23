let g:verbose=0
let g:link=1
if (g:verbose)
	echo "Link found"
endif
let enviroment_settings = "F:/EnviromentSettings"
let vim_settings = enviroment_settings."/VimSettings"
execute "source ".vim_settings."/.vimrc"
