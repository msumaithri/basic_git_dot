useful commands
-----

git remote add origin git@github.com:msumaithri/basic_git_dot.git

git push -u origin master

$ git config --global user.name "Sumaithri Mukkamalla"
$ git config --global user.email sumaithri.mukkamalla<domain>.com

git log --pretty=oneline
git log --name-status --oneline <SHA1>      ---- to see the files associated with the commit

git diff <SHA1_commit1> <SHA1_commit>       ---- shows the differences between two commits - as a patch

squashing two commits to one; commits are always listed from old to new from top to bottom
git rebase --interactive HEAD~2

UNDO git add or to basically remove the changes from the working directory
git checkout -- <file_path>

to just update/edit git commit message
(this is if the changes are not yet pushed to the branch)

git commit --amend  OR  git commit --amend -m "New commit message"

To RENAME local git repo 
git branch -m <new_name>

Stash your changes - no commit - switch branches and then come back to old branch to work again!

git stash save
git checkout branch
// do something
git checkout oldbranch
git stash pop
