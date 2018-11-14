"Set source
"Changes to this function requires restart
if !exists("*ReloadVimrc()")
	function! ReloadVimrc()
		:source $MYVIMRC
	endfunction
endif
nnoremap <F10> :call ReloadVimrc()<CR>
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
:command! E e
:command! Ex Explore
:command! Link edit $MYVIMRC
:command! Time :echo strftime('%c')
:command! Here :cd %:p:h

set clipboard=unnamed

"End Message
:echo "Vimrc loaded."

"System specific commands

if has('win32')
	execute "source ".vim_settings."/.quantum"
	:set guifont=Consolas:h14
	:echo "Windows mode."
elseif has('macunix')
	execute "source ".vim_settings."/.quantum"
	:echo "OSX mode."
else
	"Neither system identified
	execute "source ".vim_settings."/.quantum"
	:echo "Trouble in indentifying system OS"
	:echo "OSX mode."
endif

"Thesis project specifics
if has('win32')
	execute "source ".vim_settings."/thesis.vim"
endif

:command! Evimrc execute "edit ".vim_settings."/.vimrc"
:command! Ebash execute "edit ".enviroment_settings."/Bash/.bashrc"
:command! Ebashrc execute "edit ".enviroment_settings."/Bash.bashrc"
:command! Ecmd execute "edit ".enviroment_settings."/Bat/windowscmds.bat"
:command! Exes execute "Explore ".enviroment_settings
:command! Bash ConqueTerm bash
:command! Power ConqueTerm C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
