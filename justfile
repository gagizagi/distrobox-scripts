# Push all the changes to github
push msg:
  git add .
  git commit -m "{{msg}}"
  git pull --rebase
  git push
