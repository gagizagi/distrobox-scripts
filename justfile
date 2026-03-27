# List all commands
default:
  @just --list	

# Push all the changes to github with [msg] as commit message
push msg:
  git add .
  git commit -m "{{msg}}"
  git pull --rebase
  git push
