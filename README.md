<!-- $theme: gaia -->

# Preamble
http://bit.ly/2yZWVpX

**First 10 minutes** will be used to ensure your environment is set up.
Your environment should have:
1. `git` is installed on your computer.
2. A `Github` account setup
3. A text editor (such as textedit, nano, or atom)

Please sit in front of room if you haven't yet setup your environment.
Give your Github username to the TAs!

_If you didn't bring a computer, or are unfamiliar with terminal commands, make a friend_

---
# <Organization>

#### Thanks to <location> for hosting

#### Thanks to <speakers/TAs>

<img src="https://avatars0.githubusercontent.com/u/1081871?s=460&v=4" width="270px" /> <img src="https://raw.githubusercontent.com/probinso/introduction-git/master/images/person.png" width="270px" /> <img src="https://raw.githubusercontent.com/probinso/introduction-git/master/images/person.png" width="270px" />

---
# Intro to Git

http://bit.ly/2yZWVpX

This talk will not cover, or expect, specific programming languages
This talk will:

1. Introduce a collaborative demo using git and Github
2. Introduce vocabulary for using git and Github
3. Understand a simple git workflow
4. Talk about access control and Github

---
# Goals
If you successfully finish workshop, you will
- be able to collaborate on simple projects using git and Github
- understand basic vocabulary for git
- know what to study next and where to find resources

---
# Why should you Care?
- No more emailing document revisions
- Simpler local directory/file structures
- Remote storage
- Stable workflow
- Easily add new collaborators to project
- The world's most boring time machine

---
# Your Project!
After I assign you a **panel** of content,
- add **panel** contents to the `README.md` file
- belonging to an **existing repository**
- in **alphabetical order**.
- Finally, use git to share your changes

```text
A is for Alice who fell down the stairs
B is for Basil assaulted by bears
C is for Clara who wasted away
...
Z is for Zillah who drank to much gin
```

---
# What is Git?
- Source and version control
- Ledger of work
- Collaboration tool
- Workflow management software

competes with : **hg**, **svn**, **cvs**

---
# What is Github?
- Git service provider
- Account management and access control
- Hosting platform
- Ticket tracker / project management tool

competes with : **GitLab**, **bitbucket**, **coding.net**

---
## What to store in Github?
- source code (any language)
- markdown / Jupyter / pdf
- small or static images & data-sets

## What NOT to store?
- PASSWORDS, access tokens, or private keys
- compiled binaries
- large images & data-sets
- Non-pars-able documents (Word, Photoshop, ...)

---
# Passwords

```bash
$ cat secrets.json # this file should not be committed
{
    "password":"MySuperNeatoPassword!#"
}
```

```python
import json

# this file should be committed

with open('secrets.json') as fd:
    pwd = json.load(fd)['password']

print(pwd)
```

---
# .gitignore

Can specify file types or specific files to not commit

Each line is a file type or filename

- can use wildcard patterns: `.csv`
- don't save my `secrets.json`

```
*.csv
passwords.json
```

---
# Vocabulary (I)
- `init` / `clone` - Starts a Project
- `add`/`commit` and Commit History - Tracks Changes
- `push` - Share Changes

---
# Vocabulary (II)

- `diff`, `status`, `log` - What state am I in?
- `fetch`/`merge` and Merge Conflicts
---
# Vocabulary (III)
- `remote` **labels alias another location**

![](remote.png)

---
# Vocabulary (IV)
- `branch` - encapsulates a split in ledger of work
- `checkout` - swaps current working copy to a target
- `revert` - oh crap, I made a mistaek

![](branch.png)

# Using Git for the first time

```bash
$ git init my_new_project
$ cd my_new_project
$ nano readme.md   # we'll edit the readme file for the git
$ git add readme.md #now we add it
$ git commit -m "my first commit" # commit file with message
```

---
# Inspecting the Repository
<!-- this is where I will clone, then look at the status, log, and diff of a repository -->

---
## Merge Conflicts
```bash
$ git status
# On branch branch-b
...
# both modified:
```

```bash
$ cat styleguide.md
If you have questions, please
open an issue
```

```text
$ cat styleguide.md
If you have questions, please open an issue or
ask your question in IRC.
```

---
# Workflow Map
![simplest git workflow](./git.png)

---
# Message Flag and Editor

If you don't use the `-m` message flag, you will likely be subject to `vim`. `vim` can be a very frustrating file editor, if you don't bother to learn it.

_Look into how to change your default `EDITOR` for your operating system._

---
# Vim
To exit `vim`, Hit the `Esc` key to enter "Command mode". Then you can type `:` to enter "Command-line mode". A colon (`:`) will appear at the bottom of the screen and you can type in one of the following commands. To execute a command, press the `Enter` key.

  - `:q` to quit (short for `:quit`)
  - `:q!` to quit without saving (short for `:quit!`)
  - `:wq` to write and `quit`

---
# Defaults and `config`

```bash
$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com
```

---
# Give me your Github username in exchange for a Panel

---
# ![The Fatal Lozenge](./lozenge.png)

---
# Rules of the Game (15 min)
- 10 people per repository team {red, blue, black}
- Each panel represents one entry from poem
- Split panel text lines with <= 80 characters
- Panels ordered alphabetically (by second word)
- Your team is done when all panels added
- Do a `diff` against `origin/master` before a `merge`
- Review the `log` at least once (`q` to quit)

<sup>
team == red
https://github.com/PortlandDataScienceGroup/red.git
</sup>

---
# Git Commands
- `status`, `diff`, `log`
- `clone`, `init`
- `fetch`, `merge`, `commit`, `push`, `fetch`

```bash
$ git clone https://github.com/PortlandDataScienceGroup/ABC.git
Cloning into 'ABC'...
remote: Counting objects: 500, done.
remote: Compressing objects: 100% (36/36), done.
remote: Total 500 (delta 27), reused 33 (delta 12), pack-reused 451
Receiving objects: 100% (500/500), 6.72 MiB | 1.71 MiB/s, done.
Resolving deltas: 100% (286/286), done.
Checking connectivity... done.
$
```

---
# Intermission
- Complete the Game
- Signal TAs for help if you get stuck!

---
# Github activities
- Code reviews
- Create / destroy user and organization accounts
- Access control
- Create / destroy repository
- Issue creation / assignment / management
- Gists

---
# Collaborating without Permission
_Collaboration within a team is different than from outside, as a consequence of access control._

- `fork` - Copies repository
- `pull request` - Shares changes back to source

---
# Steps
1. `fork` repository on Github
2. `clone` forked repository to local directory
3. `add upstream` directed toward original repository
6. Edit files, save, `commit`, then `push` changes in forked repository
8. `pull request` against original repository

---
# Branching
Branching allows
- encapsulation of features
- simple `diff`s between features
- easier `pull requests`

---
# Collaboration Etiquette
- Look for a `CONTRIBUTORS.md` file
- Look for style guides
- Read documentation before collaborating
- Take code review feedback seriously and not personally
- Identify an appropriate `issue` for your skill level
- `rebase  -i` to encapsulate solution to single `issue`

---
# To Learn Next
- Github `issues`
- `checkout` - use another version as working copy
- `branch` - encapsulate work
- `rebase`/`rebase -i` - edit branch history
- Learn about branching models
- Learn about version numbers

---
# Additional Resources
- `GitFlow` http://nvie.com/posts/a-successful-git-branching-model/
- *Cheatsheet* https://the-awesome-git-cheat-sheet.com/
- *Data Camp* https://www.datacamp.com/courses/introduction-to-git-for-data-science
- *Udacity* https://www.udacity.com/course/how-to-use-git-and-github--ud775
