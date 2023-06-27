ORIGINAL_URL="git@github.com:soma/rts-lab.git"
NEW_URL=`git remote get-url origin`
grep -rl $ORIGINAL_URL | grep -v README.md | xargs sed -i'' "s|$ORIGINAL_URL|$NEW_URL|g"
git add .
git commit -m "Switch repository to $NEW_URL"
git push
