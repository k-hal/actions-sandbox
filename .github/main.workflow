workflow "New workflow" {
  on = "push"
  resolves = ["Hello World2"]
}

action "Hello World1" {
  uses = "./action-a"
  env = {
    MY_NAME = "k-hal"
  }
  args = "\"Hello world, I'm $MY_NAME!\""
}

action "Hello World2" {
  needs = "Hello World1"
  uses = "./action-a"
  env = {
    MY_NAME = "test2"
  }
  args = "\"Hello world, I'm $MY_NAME!\""
}
