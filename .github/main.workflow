workflow "New workflow" {
  on = "repository_dispatch"
  resolves = ["GPR Publish"]
}

action "GPR Publish" {
  uses = "./"
}
