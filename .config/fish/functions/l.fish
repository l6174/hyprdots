function l --wraps='exa -l --color=always --group-directories-first' --description 'alias l=exa -l --color=always --group-directories-first'
  exa -l --color=always --group-directories-first $argv; 
end
