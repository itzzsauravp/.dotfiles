COMMIT_MSG=${1:-"sync: update dotfiles"}
echo -e "\n =======>>>> Pushing to Git with commit message: \"$COMMIT_MSG\""
cd "$DOTFILES_DIR" && git add . && git commit -m "$COMMIT_MSG" && git push
