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
![Alt text](https://g.gravizo.com/source/custom_mark10?https://raw.githubusercontent.com/PortlandDataScienceGroup/introduction-git/master/pres.md)

<details>
<summary></summary>
custom_mark10
digraph Simple {
        aize = "4,4"
        compound=true;
        {
                NewProject[label="New Project", shape=doublecircle];
                ExistingProject[label="Existing Project", shape=doublecircle];
                rank=same;
        }
        Local[label="Local Project"];
        subgraph cluster0 {
                label="Local With Remote";
                color=lightgray;
                style=filled;
                Tracked [shape=doublecircle];
                {Untracked; Staged; rank=same;}
                Tracked -> Untracked [label="Make changes\nSave changes"];
                Untracked -> Staged [label="git add <filenames...>"];
                Staged -> Tracked [label="git diff # to understand changes  \ngit commit -m 'describe changes'"];
                Fetched -> Tracked [label="git merge <branch>"]
                };
                Local -> Tracked [
                                  label="git remote add origin https://github.com/splinqr",
                                  lhead=cluster0];
                NewProject -> Local [label="git init ."];
                ExistingProject -> Tracked [
                                            label="git clone https://github.com/splinqr"
                                            lhead=cluster0];
                Tracked -> Remote [label="git push <remote> <branch>"];

                Remote -> Fetched [label="git fetch <remote>"];
}
custom_mark10
</details>


---
# Git Commands
- status, diff
- clone, init
- push, pull, fetch, merge, checkout, branch

```bash
$ git clone https://github.com/probinso/visframe.git
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
