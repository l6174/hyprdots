function update --wraps='sudo pacman -Syu --noconfirm' --description 'alias update=sudo pacman -Syu --noconfirm'
  sudo pacman -Syu --noconfirm $argv; 
end
