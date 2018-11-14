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
:set wrap
:set linebreak
:set ignorecase
:set smartcase
:set number
:set backspace=indent,eol,start
:set numberwidth=1
let tabsize = 4
execute "set tabstop=".tabsize
execute "set shiftwidth=".tabsize
execute "set softtabstop=".tabsize
syntax enable

if !exists('vim_settings')
	echo "No vim_settings set"
endif

set clipboard=unnamed


"System specific commands

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
:command! Link edit $MYVIMRC
:command! Time :echo strftime('%c')
:command! Evimrc execute "edit ".vim_settings."/.vimrc"
:command! Ebash execute "edit ".enviroment_settings."/Bash/.bashrc"
:command! Ebashrc execute "edit ".enviroment_settings."/Bash.bashrc"
:command! Ecmd execute "edit ".enviroment_settings."/Bat/windowscmds.bat"
:command! Exes execute "Explore ".enviroment_settings
:command! Bash ConqueTerm bash


"End Message
:echo "Vimrc loaded."
