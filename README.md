# GitHub Action for Hugo

An Action to run [`hugo`](https://gohugo.io/) commands.

This example runs on pushes to the master branch and will run `hugo --theme=hyde-x` to build your site.

```
workflow "Hugo build" {
  resolves = [
    "Hugo Action",
  ]
  on = "push"
}

action "Hugo Action" {
  uses = "srt32/hugo-action@master"
  needs = "Filters for GitHub Actions"
  args = "--theme=hyde-x"
}

action "Filters for GitHub Actions" {
  uses = "actions/bin/filter@b2bea0749eed6beb495a8fa194c071847af60ea1"
  args = "branch master"
}
```

Want to dynamically fetch themes before building? Use [this action](https://github.com/marketplace/actions/git-actions) like this

```
workflow "Hugo build" {
  resolves = [
    "Hugo Action",
  ]
  on = "push"
}

action "Fetch git submodules" {
  uses = "srt32/git-actions@master"
  args = "cd themes && git clone https://github.com/zyro/hyde-x"
}

action "Hugo Action" {
  uses = "srt32/hugo-action@master"
  needs = ["Filters for GitHub Actions", "Fetch git submodules"]
  args = "--theme=hyde-x"
}

action "Filters for GitHub Actions" {
  uses = "actions/bin/filter@b2bea0749eed6beb495a8fa194c071847af60ea1"
  args = "branch master"
}
```
