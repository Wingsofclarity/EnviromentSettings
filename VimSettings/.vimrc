if !exists("g:link")
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
"if has('win32')
if has("gui_running")
	execute "source ".vim_settings."/gui.vim"
endif
execute "source ".vim_settings."/basic_formation.vim"
execute "source ".vim_settings."/commands.vim"
set clipboard=unnamed
colorscheme slate
"au BufRead,BufNewFile *.csv set filetype=csv


"executable(D:\Programs\Git\git-cmd.exe)
call plug#begin('D:\EnviromentSettings\VimSettings\.vim\plugger')
call plug#end()

call Speak("Vimrc loaded.")
