if status --is-interactive
  set -g fish_user_abbreviations

  abbr --add ls       exa
  abbr --add v        nvim
  abbr --add add      git add
  abbr --add commit   git commit
  abbr --add push     git push
  abbr --add status   git status

  if test (uname -s) = "Darwin"
	  abbr --add less bat
  else
	  abbr --add less batcat
    abbr --add xremap   xremap ~/.config/xremap/xremap.conf --device 'Topre REALFORCE 87 US' 
  end

end

set PATH ~/go/bin $PATH
set PATH /usr/local/go/bin $PATH
set PATH ~/.local/bin $PATH
set PATH ~/.cargo/bin $PATH
set EDITOR nvim
set VISUAL nvim
# set PAGER bat

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/furudono/.ghcup/bin $PATH # ghcup-env

# -- vi mode --

fish_vi_key_bindings

# Do after `fish_vi_key_bindings`, which overwrites follows
set fish_cursor_default     block      blink
set fish_cursor_insert      line       # blink
set fish_cursor_replace_one underscore # blink
set fish_cursor_visual      block

