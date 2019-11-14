# to execute this file run this command:
# bash ./build-push.sh
# this assumes you are at the top in master


rm -rf ./docs
gitbook build
cp -rf ./_book/. ./docs/
rm -rf _book
git add .
git commit -m build-push
git push origin master
