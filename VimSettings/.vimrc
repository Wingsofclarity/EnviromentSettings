"Set source
"Changes to this function requires restart
if !exists("*ReloadVimrc()")
	function! ReloadVimrc()
		:source $MYVIMRC
	endfunction
endif
nnoremap <F9> :call ReloadVimrc()<CR>
:command! Reload call ReloadVimrc()


"Basic formation
:set ignorecase
:set smartcase
:set number
:set backspace=indent,eol,start
:set numberwidth=1
let tabsize = 4
execute "set tabstop=".tabsize
execute "set shiftwidth=".tabsize
execute "set softtabstop=".tabsize
"if &t_Co > 1
   syntax enable
"endif

if !exists('vim_home')
	echo "No vim_home set"
endif
:command! W w
":command! Tovim cd vim_home

" ----Force Mode----
inoremap <Right> <nop>
inoremap <Left> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <c-p> <nop>
inoremap <c-n> <nop>

set clipboard=unnamed

"End Message
:echo "Vimrc loaded."

"System specific commands

if has('win32')
	execute "source ".vim_home."/.vimrc_windows"
elseif has('macunix')
	execute "source ".vim_home."/.vimrc_mac"
else
	"Neither system identified"
	echo "Trouble in indentifying system OS"
	execute "source ".vim_home."/.vimrc_mac"
endif
