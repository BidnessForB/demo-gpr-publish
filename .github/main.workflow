workflow "New workflow" {
  on = "repository_dispatch"
  resolves = ["GPR Publish"]
}

action "GPR Publish" {
  uses = "actions/npm@59b64a598378f31e49cb76f27d6f3312b582f680"
  secrets = ["GITHUB_TOKEN"]
}
