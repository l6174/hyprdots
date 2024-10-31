function ssh-host --wraps='ssh l6174@192.168.1.2 -p 2222 -i ~/.ssh/host' --description 'alias ssh-host=ssh l6174@192.168.1.2 -p 2222 -i ~/.ssh/host'
  ssh l6174@192.168.1.2 -p 2222 -i ~/.ssh/host $argv
        
end
