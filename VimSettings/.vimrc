
"Setting Debugging
let s:verbose=1
if (s:verbose)
	echo "Link found"
endif
function! Speak(string)
	if (s:verbose)
		echo a:string
	endif
endfunction

if !exists("*ReloadVimrc()")
	function! ReloadVimrc()
		:source $MYVIMRC
	endfunction
endif
:nnoremap <F9> :call ReloadVimrc()<CR>
:command! Vimrc call ReloadVimrc()


if !exists('vim_settings')
	echo "No vim_settings set"
endif

:let &runtimepath = vim_settings."/.vim,".&runtimepath


"System specifics
if has('win32')
	execute "source ".vim_settings."/gui.vim"
	:call Speak("Windows mode.")
elseif has('macunix')
	:call Speak("OSX mode.")
else
	"Neither system identified
	:echo "Trouble in indentifying system OS"
	:echo "OSX mode."
endif

:colorscheme slate
execute "source ".vim_settings."/basic_formation.vim"

:set clipboard=unnamed
:command! W w
:command! Q q
:command! E e
:command! Ex Explore
:command! Elink edit $MYVIMRC
:command! Time :echo strftime('%c')
:command! Evimrc execute "edit ".vim_settings."/.vimrc"
:command! Ebash execute "edit ".enviroment_settings."/Bash/.bashrc"
:command! Ebashrc execute "edit ".enviroment_settings."/Bash.bashrc"
:command! Ecmd execute "edit ".enviroment_settings."/cmd/windowscmds.bat"
:command! ExEs execute "Explore ".enviroment_settings
:command! Bash ConqueTerm bash
:command! Here execute "cd %:p:h"
"au BufRead,BufNewFile *.csv set filetype=csv


"executable(D:\Programs\Git\git-cmd.exe)
call plug#begin(vim_settings."/.vim/plugin")
call plug#end()

:call Speak( "Vimrc loaded.")
