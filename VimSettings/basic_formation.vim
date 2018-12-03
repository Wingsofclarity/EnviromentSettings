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
:call Speak(verbose,"Basic formation loaded.")
