#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *Version Control with git*
  ]),
  numbering: "1",
)

#import "../style.typ": style_template
#show: doc => style_template(doc,)

= Foreword

If you have not heard of the idea of version control, or use git regularly, you are about to learn one of the most important tools in software development, second to only a text editor. It is so important that I put it right after the introduction session, even before the programming language session. We are going to learn about git, mostly from a contributor perspective. Down the road in this course you will also learn about git from a maintainer perspective.

There are many great guides on the internet about how to use git (#link("https://rogerdudler.github.io/git-guide/")[This] being my favorite guide), and it is not very useful for me to go through every existing git commands. In this session, we are going to learn some of the basic commands which you will use most frequently. In case you want to dig deeper into the git rabbit hole, ```bash git help [topic]``` actually provide a great selection of tutorials for you to follow. 

By the end of this session, you will know how to use all of the following commands

#set align(center)
#table(
  columns: (auto, auto),
  inset: 5pt,
  align: horizon,
  table.header(
    [*Command*], [*Function*],
  ),
  [init], [Initialize a new git repository],
  [add], [Add files to the staging area],
  [rm], [Remove files from the staging area],
  [commit], [Commit changes to the repository],
  [push], [Push changes to a remote repository],
  [pull], [Pull changes from a remote repository],
  [fetch], [Fetch changes from a remote repository],
  [log], [Show the commit history],
  [checkout], [Checkout another branch],
  [status], [Show the status of the repository],
  [branch], [List, create, or delete branches],
  [remote], [Manage remote repositories],
  [diff], [Show changes between commits],
  [rebase], [Reapply commits on top of another base tip],
  [merge], [Join two or more development histories together],
  [prune], [Remove remote branches that no longer exist],
  [reset], [Reset current HEAD to the specified state],
  [revert], [Revert some existing commits],
  [tag], [Create, list, delete or verify a tag object signed with GPG],
  [submodule], [Initialize, update or inspect submodules],
)

#pagebreak()
#set align(left)
= Key concepts

== Git system

#figure(
  image("./assets/git-snapshots.png"),
  caption: [Git versioning system, taken from #link("https://git-scm.com/book/en/v2/Getting-Started-What-is-Git%3F")[git]],
)

= Exercises

== Starting a repository

=== Step 1 - Configuring the committer info
Before we start a repository, let's first configure some info about the committer. You can do this by running the following commands:

```bash
git config --global user.name "Your Name"
git config --global user.email "Your Email"
```

Then you should be able to see the configuration by running ```bash git config --list```.

=== Step 2 - Initializing a repository
To start a git repository on your local machine, first create a new directory for your semester project, then navigate to it. For example, on my local machine, it is going to be a series of command like this:

```bash
mkdir ./semester_project
cd ./semester_project
```

Once in the directory, you can do ```bash ls -a``` to see all the files in the directory, which should be completely empty at this point.

Then we will run the command ```bash git init``` to initialize a new git repository.

Now if you do ```bash ls -a``` again, you will see a new directory called ```.git```. This is where git stores all the information about your repository.

== Working on code

=== Step 0 - Check git status
Since your directory do not have any files in it, you can run ```bash git status``` to see the status of the repository. You will see that git has detected that the directory is clean.

=== Step 1 - Creating a file
Now let's try to move the ReadME.md file you created last week into this directory, and commit the changes with git.
Once you move the file into the directory, you can run ```bash git status``` to see the status of the repository. You will see that git has detected a new file in the directory.

=== Step 2 - Adding the file
To add the file to the staging area, you can run ```bash git add ReadME.md```. You can then run ```bash git status``` again to see the status of the repository. You will see that git has detected a new file in the staging area.

=== Step 3 - Committing the file
To make the changes permanent, you can run ```bash git commit -m "Add ReadME.md"```. You can then run ```bash git status``` again to see the status of the repository. You will see that git has detected that the directory is clean.

What happened here is you have created a new commit in the repository, which will create a new snapshot of the repository. You can see the history of the repository by running ```bash git log```.

=== Step 4 - The reason why Git is great for your health

Now we can see the biggest reason why you should always use git: to prevent accidental deletion of files. You have worked so hard on the ReadME.md file, and you accidentally deleted it with ```bash rm ReadME.md```. Normally you would go through the five stages of grief, but with git, your file can be recovered. Let's check the status of the repository with ```bash git status```. You will see that git has detected that the file has been deleted. To get your file back, you can simply run ```bash git restore ReadME.md```. Now you should see the file back in the directory, and the status of the repository is clean.

=== Rules of thumb for Committing


== Branching off

== Examining history

== Online collaboration

== Dealing with conflicts
