"Set source
"Changes to this function requires restart
if !exists("*ReloadVimrc()")
	function! ReloadVimrc()
		:source $MYVIMRC
	endfunction
endif
nnoremap <F9> :call ReloadVimrc()<CR>
:command! Vimrc call ReloadVimrc()

if !exists('vim_settings')
	echo "No vim_settings set"
endif

execute "source ".vim_settings."/basic_formation.vim"

set clipboard=unnamed


"System specifics
if has('win32')
	execute "source ".vim_settings."/.vim/colors/quantum.vim"
	:set guifont=Consolas:h14
	:echo "Windows mode."
elseif has('macunix')
	execute "source ".vim_settings."/.vim/colors/quantum.vim"
	:echo "OSX mode."
else
	"Neither system identified
	:echo "Trouble in indentifying system OS"
	:echo "OSX mode."
endif

:command! W w
:command! Q q
:command! E e
:command! Ex Explore
:command! Elink edit $MYVIMRC
:command! Time :echo strftime('%c')
:command! Evimrc execute "edit ".vim_settings."/.vimrc"
:command! Ebash execute "edit ".enviroment_settings."/Bash/.bashrc"
:command! Ebashrc execute "edit ".enviroment_settings."/Bash.bashrc"
:command! Ecmd execute "edit ".enviroment_settings."/Bat/windowscmds.bat"
:command! ExEs execute "Explore ".enviroment_settings
:command! Bash ConqueTerm bash

"For XML files
if !exists("*LineAlign()")
	function! LineAlign()
		:%s/\n//g
		:%s/<\/row>/<\/row>\r/g
		:%s/<root>/\r<root>\r/g
	endfunction
endif
:command! LineAlign call LineAlign()<CR>

if !exists("*Test()")
	function! Test()
		gg
		O
		<?xml version="1.0"?>
	endfunction
endif
"execute "source ".vim_settings."/autoload/plug.vim"
"call plug#begin()
"call plug#end()
"End Message
":echo "Vimrc loaded."
