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


if !exists('vim_settings')
	echo "No vim_settings set"
endif

let &runtimepath = vim_settings."/.vim,".&runtimepath

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
	execute "source ".vim_settings."/gui.vim"
endif
execute "source ".vim_settings."/basic_formation.vim"
execute "source ".vim_settings."/commands.vim"
set clipboard=unnamed
colorscheme NewSlate 



call Speak("Vimrc loaded.")
