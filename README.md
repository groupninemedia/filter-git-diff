# Filter Git Diff Action
A Github Action that will filter a git diff for the specified file/dir using regex.

---

## Example Usage
```workflow
action "Git Diff" {
  uses = "groupninemedia/filter-git-diff@master"
  args = "regex ^config"
}
```