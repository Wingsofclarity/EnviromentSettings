"Set source
"Changes to this function requires restart
if !exists("*ReloadVimrc()")
	function! ReloadVimrc()
		:source $MYVIMRC
	endfunction
endif
nnoremap <F9> :call ReloadVimrc()<CR>
:command! Vimrc call ReloadVimrc()


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

if !exists('vim_settings')
	echo "No vim_settings set"
endif
:command! W w
:command! Q q
:command! Link edit $MYVIMRC
:command! Time :echo strftime('%c')

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
	execute "source ".vim_settings."/.vimrc_windows"
elseif has('macunix')
	execute "source ".vim_settings."/.vimrc_mac"
else
	"Neither system identified
	echo "Trouble in indentifying system OS"
	execute "source ".vim_settings."/.vimrc_mac"
endif

"Thesis project specifics
if has('win32')
	execute "source ".vim_settings."/.vimrc_thesis"
endif

:command! Evimrc execute "edit ".vim_settings."/.vimrc"
