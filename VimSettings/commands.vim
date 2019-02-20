command! W w
command! Q q
command! E e
command! Ex Explore
command! Elink edit $MYVIMRC
command! Time :echo strftime('%c')
command! Evimrc execute "edit ".vim_settings."/.vimrc"
command! Ebash execute "edit ".enviroment_settings."/Bash/.bashrc"
command! Ebashrc execute "edit ".enviroment_settings."/Bash.bashrc"
command! Ecmd execute "edit ".enviroment_settings."/cmd/windowscmds.bat"
command! ExEs execute "Explore ".enviroment_settings
command! Bash ConqueTerm bash
command! Here execute "cd %:p:h"
command! CP :%s/ROWTERMINATOR = '\\n'/ROWTERMINATOR = '¦\\n',\r	CODEPAGE = '1252'/g
command! Bit :%s/boolean,/bit NULL,/g
nnoremap <F2> :messages<CR>
