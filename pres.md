<!-- $theme: gaia -->

# Elementary Intro to Git

---
# What is Git?
- Source and version control
- Ledger of work
- Collaboration tool
- Workflow managment software

competes with : **hg**, **svn**, **cvs**, **darcs**

---
# What is Github?
- Git service provider
- Account managment and access control
- Hosting platform
- Ticket tracker / project management tool

competes with : **GitLab**, **bitbucket**, **coding.net**

---
## What to store (Github)?
- source code (language ambiguos)
- markdown / jupyter / pdf
- small or static images & datasets

## What NOT to store?
- PASSWORDS, secrets, or private keys
- binaries & executables (with some exceptions)
- large or unstable images & datasets
- Non-parsable documents (Word, Photoshop, ...)

---
# New to Git
![Alt text](https://g.gravizo.com/source/gitroduction0?https://raw.githubusercontent.com/PortlandDataScienceGroup/introduction-git/master/pres.md)

<details>
<summary></summary>
gitroduction0
  digraph G {
    aize ="4,4";
    NewProject -> LocalRepository [label="git init ."];
    OldProject -> LocalRepository [label="git clone git@github.com:probinso/splinqr.git"];
    LocalRepository -> BeginWork [label="git status"];
    BeginWork -> MakeChanges [label="make changes to code on disk"];
  }
gitroduction0
</details>


---
# Git Commands
- status, diff
- clone, init
- push, pull, fetch, merge, checkout, branch

```bash
$ git clone git@github.com:probinso/Intro-to-Python.git
Cloning into 'Intro-to-Python'...
remote: Counting objects: 500, done.
remote: Compressing objects: 100% (36/36), done.
remote: Total 500 (delta 27), reused 33 (delta 12), pack-reused 451
Receiving objects: 100% (500/500), 6.72 MiB | 1.71 MiB/s, done.
Resolving deltas: 100% (286/286), done.
Checking connectivity... done.
$
```

---
# Github activities
- create / destroy user and organization accounts
- create / destroy repository
- fork
- issue creation / assigment
- `pull request`
