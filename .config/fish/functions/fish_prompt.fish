# vim:ft=fish ts=2 sw=2 sts=2

set -g segment_separator \ue0b6
set -g right_segment_separator \ue0b4


# ===========================
# Segments functions
# ===========================

function prompt_segment -d "Function to draw a segment"
  set -l bg
  set -l fg
  if [ -n "$argv[1]" ]
    set bg $argv[1]
  else
    set bg normal
  end
  if [ -n "$argv[2]" ]
    set fg $argv[2]
  else
    set fg normal
  end

  set -l sep_col (set_color $bg)
  set -l txt_col (set_color $fg -b $bg)
  set -l normal (set_color normal)

  set -l lsep $sep_col $segment_separator
  set -l rsep $sep_col $right_segment_separator

  if [ -n "$argv[3]" ]
    set -l data  $txt_col $argv[3] $normal
    echo -n -s $lsep $data $rsep
  end
end

function fish_prompt
  set -l cur_dir $(basename (prompt_pwd))

  switch $fish_bind_mode
    case default
      set -l color
      prompt_segment brred black $cur_dir
    case insert
      prompt_segment brgreen black $cur_dir
    case visual
      prompt_segment bryellow black $cur_dir
    case replace_one
      prompt_segment brblue black $cur_dir
    case '*'
      prompt_segment brmagenta black $cur_dir
  end

  echo -n " " \ueabc " "
end
