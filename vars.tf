variable "folders" {
  default = ["infra", "CI-Pipeline"]
}

 variable "jobs" {
   default = [
     { name = "roboshop", folder = "infra", repo_url = "http://github.com/roboshop-infra"},
     { name = "frontend", folder = "CI-Pipeline", repo_url = "http://github.com/frontend"},
     { name = "cart", folder = "CI-Pipeline", repo_url = "http://github.com/cart"},
     { name = "catalogue", folder = "CI-Pipeline", repo_url = "http://github.com/catalogue"},
     { name = "user", folder = "CI-Pipeline", repo_url = "http://github.com/user"},
     { name = "shipping", folder = "CI-Pipeline", repo_url = "http://github.com/roboshop-shipping"},
     { name = "payment", folder = "CI-Pipeline", repo_url = "http://github.com/roboshop-payment"}
]
 }


