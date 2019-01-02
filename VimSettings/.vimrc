if !exists(g:link)
	echo "Link was never found"
endif

"Setting Debugging Messages
let s:verbose=0
function! Speak(string)
	if (s:verbose)
		echo a:string
	endif
endfunction

if !exists("*ReloadVimrc()")
	function! ReloadVimrc()
		source $MYVIMRC
	endfunction
endif
nnoremap <F9> :call ReloadVimrc()<CR>
command! Vimrc call ReloadVimrc()


if !exists('vim_settings')
	echo "No vim_settings set"
endif

let &runtimepath = vim_settings."/.vim,".&runtimepath


"System specifics
if has('win32')
	execute "source ".vim_settings."/gui.vim"
	call Speak("Windows mode.")
elseif has('macunix')
	call Speak("OSX mode.")
else
	"Neither system identified
	echo "Trouble in indentifying system OS"
	echo "OSX mode."
endif

execute "source ".vim_settings."/basic_formation.vim"

set clipboard=unnamed
execute "source ".vim_settings."/commands.vim"
"au BufRead,BufNewFile *.csv set filetype=csv


"executable(D:\Programs\Git\git-cmd.exe)
call plug#begin(vim_settings."/.vim/plugin")
call plug#end()

colorscheme slate
call Speak("Vimrc loaded.")
