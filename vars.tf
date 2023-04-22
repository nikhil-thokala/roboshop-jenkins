variable "folders" {
  default = ["infra"]
}

 variable "jobs" {
   default = [
     { name = "roboshop", folder = "infra", repo_url = "http://github.com/roboshop-infra"}
]
 }


