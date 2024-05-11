function la --wraps='exa -l -a --color=always --group-directories-first' --description 'alias la=exa -l -a --color=always --group-directories-first'
  exa -l -a --color=always --group-directories-first $argv; 
end
