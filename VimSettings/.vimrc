<<<<<<< HEAD
if !exists(a:verbose)
	echo "Verbose variable not set."
	let verbose=1
endif
if !exists("*ReloadVimrc()")
	function! ReloadVimrc()
		:source $MYVIMRC
	endfunction
=======
if !exists("g:link")
	echo "Link was never found"
>>>>>>> e9cfa365d83973711b05c2b6e41aec49fb714bca
endif

<<<<<<< HEAD
function! Speak(verbose, string)
	if !exists(a:verbose)
		echo "Verbose variable not set."
		let verbose=1
	endif
	if (a:verbose)
=======
"Setting Debugging Messages
let s:verbose=0
function! Speak(string)
	if (s:verbose)
>>>>>>> e9cfa365d83973711b05c2b6e41aec49fb714bca
		echo a:string
	endif
endfunction

<<<<<<< HEAD
"function! SaveAs(string)
"	:w a:string
"	:e a:string
"endfunction
=======
>>>>>>> e9cfa365d83973711b05c2b6e41aec49fb714bca

if !exists('vim_settings')
	echo "No vim_settings set"
endif

let &runtimepath = &runtimepath.",".vim_settings."/.vim"

"TODO: Change this to dynamic location
call plug#begin("C:/Users/gusros/EnviromentSettings/VimSettings/.vim/plugger")
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/Conque-shell'
Plug 'OrangeT/vim-csharp'
call plug#end()

if !exists("*ReloadVimrc()")
	function! ReloadVimrc()
		source $MYVIMRC
	endfunction
endif
nnoremap <F8> :call ReloadVimrc()<CR>
command! Vimrc call ReloadVimrc()



"System specifics
if has("gui_running")
	call Speak("Graphical vim detected")
	execute "source ".vim_settings."/gui.vim"
endif
execute "source ".vim_settings."/basic_formation.vim"
execute "source ".vim_settings."/commands.vim"
set clipboard=unnamed
colorscheme NewSlate 



call Speak("Vimrc loaded.")
