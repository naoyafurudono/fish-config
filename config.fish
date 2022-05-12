if status --is-interactive
  set -g fish_user_abbreviations

  abbr --add ls       exa
  abbr --add less     batcat
  abbr --add v        nvim
  abbr --add add      git add
  abbr --add commit   git commit
  abbr --add push     git push
  abbr --add status   git status
end

function gi; curl -sLw n https://www.toptal.com/developers/gitignore/api/$argv; end

set PATH /Users/nfurudono/.cargo/bin $PATH
set PATH ~/go/bin $PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nfurudono/google-cloud-sdk/path.fish.inc' ]; . '/Users/nfurudono/google-cloud-sdk/path.fish.inc'; end
