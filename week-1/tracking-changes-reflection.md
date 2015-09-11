How does tracking and adding changes make developers' lives easier? By tracking changes to a file or project, a developer can easily look back and see what has been done on the file. This includes personal and group projects. On a personal project, it makes it easy to look back at changes in the code and follow back to your own thought process as to what changes were made and how. On a group project, it enables you to quickly see both the history of changes to the project and the changes that are being pulled to the master branch.

What is a commit? A commit is a savepoint after a specific change has been made. It enables you to make a summary and note which changes were made and why. This is useful for tracking changes in your branch or project as a whole.

What are the best practices for commit messages? Generally the summary line should be have a soft limit of 50 characters and give a clear idea of what is being changed. It should be followed by a blank line. Conversely, the following description should be as verbose as needed to fully explain the change being commited. All should be in imperative form, as a commit is not the same as merging it into the working code, and therefore hasn't technically been done yet.

What does the HEAD^ argument mean? The HEAD argument refers to the current commit. HEAD^ refers to the commit before that. Further commit messages are possible using HEAD-3, HEAD-4, ect.

What are the 3 stages of a git change and how do you move a file from one stage to the other? After a change has happened, it must be staged for commit, commited, and pushed to the remote repository. Each stage has a command line function to be invoked, listed below, and can be checked at each stage using 'git status'.

Write a handy cheatssheet of the commands you need to commit your changes.
git add -file- ..... stage file for commit
git commit -m "summary message" .... commit the file with summary
git merge master ... merges original branch into current branch that has changes
git push origin BRANCH-NAME-HERE ... push commits to remote location
git branch -d BRANCH-NAME-HERE ... deletes branch after it has been fully merged (including pull requests completed) and cleared from remote location

What is a pull request and how do you create and merge one? A pull request is a way to merge a branch into the main working code or master branch. I believe that it can also be used to merge code from one branch into another. After code has been pushed to GitHub, you can go to the pull request tab on the right of the screen when you are in the proper repository and choose which branch you would like to create the pull from and to. When this is done, there will be an option from the main repository to merge the changes, and then to confirm the merge.

Why are pull requests prefered when working with teams? They are prefered because a second person will be responsible for reviewing your code and merging it. This prevents broken code, or unpolished features, from making their way into the working copy. In this case, the pull request is used to mark your finish point with the current branch/features.