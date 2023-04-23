variable "folders" {
  default = ["infra", "CI-Pipeline"]
}

 variable "jobs" {
   default = [
     { name = "roboshop", folder = "infra", repo_url = "http://github.com/roboshop-infra"},
     { name = "frontend", folder = "CI-Pipeline", repo_url = "http://github.com/roboshop-infra"},
     { name = "cart", folder = "CI-Pipeline", repo_url = "http://github.com/roboshop-infra"},
     { name = "catalogue", folder = "CI-Pipeline", repo_url = "http://github.com/roboshop-infra"},
     { name = "user", folder = "CI-Pipeline", repo_url = "http://github.com/roboshop-infra"},
     { name = "shipping", folder = "CI-Pipeline", repo_url = "http://github.com/roboshop-infra"},
     { name = "payment", folder = "CI-Pipeline", repo_url = "http://github.com/roboshop-infra"}
]
 }


