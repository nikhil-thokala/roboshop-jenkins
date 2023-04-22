variable "folders" {
  default = ["infra"]
}

 variable "jobs" {
   default = [
     { name = "infra/roboshop", repo_url = "http://github.com/roboshop-infra"}
]
 }


