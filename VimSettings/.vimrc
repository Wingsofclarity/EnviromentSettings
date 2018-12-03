function! Speak(verbose, string)
	if (a:verbose)
		echo a:string
	endif
endfunction

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
let &runtimepath .= ",".vim_settings."/.vim"


"System specifics
if has('win32')
	:set guifont=Consolas:h14
	:call Speak(verbose,"Windows mode.")
elseif has('macunix')
	"execute "source ".vim_settings."/.vim/colors/quantum.vim"
	:call Speak(verbose, "OSX mode.")
else
	"Neither system identified
	:echo "Trouble in indentifying system OS"
	:echo "OSX mode."
endif

:colorscheme quantum
execute "source ".vim_settings."/basic_formation.vim"
:set guioptions-=T
:set guioptions-=m
:set guioptions-=r

set clipboard=unnamed
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


:call Speak(verbose, "Vimrc loaded.")
