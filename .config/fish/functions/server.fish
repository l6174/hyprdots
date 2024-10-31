function server --wraps='ssh l6174@192.168.1.2 -i ~/.ssh/server' --description 'alias server=ssh l6174@192.168.1.2 -i ~/.ssh/server'
  ssh l6174@192.168.1.2 -i ~/.ssh/server $argv
        
end
