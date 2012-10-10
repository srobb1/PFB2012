PFB2012
=======

Code and samples from lecture and review sessions

To get class scripts as we add them to this repository, PFB2012,  and to add your own files to your own personal repository. The steps were summarized from https://help.github.com/articles/fork-a-repo

This repository and your personal repositories are accessible from github now and later from anywhere. Follow these instructions to set up git and to get sstarted. 

---
Sofia's Definitions
Repository: A place to store scripts. In our case it is at a remote location on the servers of GitHub.
-Fork      : A copy of a repository (repo) that you can change and edit. 
-Clone     : The act of copying a repo
-Merge     : ***I am not sure what is lost or kept in a merge 
-git add	  : Add files to a list of files that are ready for a commit
-git commit: Save a version of the file to be sent to GitHub later with a push
-git push  : Send files that have been committed to GitHub 
---

1. go to https://github.com/
2. create an account.
3. set up github on your local machine -- skip the install, go to set up
	1. https://help.github.com/articles/set-up-git
		1. git config --global user.name "Your Name Here"
		   # Sets the default name for git to use when you commit
		2. git config --global user.email "your_email@youremail.com"
		   # Sets the default email for git to use when you commit
		   # Your email address should be the same one associated with your GitHub account
		3. git config --global credential.helper osxkeychain
		   # Set git to use the osxkeychain credential helper
3. change into a directory that you want the repo to go.
4. go to https://github.com/srobb1/PFB2012
5. Click on the FORK button
5. go to http button, copy the address
6. in your terminal type 'git clone https://github.com/yourGitUserName/PFB2012.git'
7. You can add files, change files, make directories and files for problem sets and other notes
	1. git add path_to_new_file
	2. git commit -m 'note about file'
	3. git push origin master 
8. To get new files from the orignal PFB2012 repo you need to do this:
	1. (one time only) git remote add upstream https://github.com/srobb1/PFB2012.git #Assigns the original repo to a remote called "upstream"
	2. (every time) git fetch upstream #Pulls in changes not present in your local repository, without modifying your files
9. To merge the files in your personal repository you can do this
	1. git merge upstream/master #Merges any changes fetched into your working files
