PFB2012
=======

Code and samples from lecture and review sessions

To get, keep up-to-date and to add your own files to your own branch follow these instructions.
These were summarized from https://help.github.com/articles/fork-a-repo

1. go to https://github.com/
2. create an account.
3. change into a directory that you want the repo to go.
4. go to https://github.com/srobb1/PFB2012
5. Click on the FORK button
5. go to http button, copy the address
6. in your terminal type 'git clone https://github.com/yourGitUserName/PFB2012.git'
7. You can add files, change files, make directories and files for problem sets and other notes
	1. git add path_to_new_file
	2. git commit -m 'note about file' #saves your file as it is for a later push to your storage at GitHub
	3. git push origin master #Pushes commits to your remote repo stored on GitHub
8. To get new files from the orignal PFB2012 repo you need to do this:
	1. (one time only) git remote add upstream https://github.com/srobb1/PFB2012.git #Assigns the original repo to a remote called "upstream"
	2. (every time) git fetch upstream #Pulls in changes not present in your local repository, without modifying your files
9. To merge the files in your personal branch you can do this
	1. git merge upstream/master #Merges any changes fetched into your working files
