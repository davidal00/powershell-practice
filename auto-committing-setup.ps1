#1    declare a $GitHubUsername variable with your username (this will be used to clone your forked repo)
#2    declare a $CommitMessage variable with the value auto committed from auto-committing-setup.ps1!
#3    declare a $PracticeRepoDir variable with the value of the path where the repo will be cloned
#4    clone your forked repo into a directory at the $PracticeRepoDir path
#5    copy the auto-committing-setup.ps1 script (by its absolute path) into the cloned repo directory
#6    change into the cloned directory ($PracticeRepoDir)
#7    add the new script file in the cloned directory to git staging
#8    commit the changes to the repo using the message variable ($CommitMessage)
#9    push the local git history back to your forked repo

# declare variables
$GitHubUsername='davidal00'
$PracticeRepoDir='/Users/davidleblanc/Desktop/LAUNCHCODE/Powershell/9.6 Studio/Script'
$CommitMessage='auto committed from auto-committing-setup.ps1!'

# fork and clone this repo into the powershell-studio directory
git clone "https://github.com/$GitHubUsername/powershell-practice" "$PracticeRepoDir"

# TODO: complete steps 5-9

Copy-Item -Path "$PSCommandPath" -Destination "$PracticeRepoDir"
Set-Location -Path "$PracticeRepoDir"
git add .
git commit -m $CommitMessage
git push
