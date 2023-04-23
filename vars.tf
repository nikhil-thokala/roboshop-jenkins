variable "folders" {
  default = ["infra", "CI-Pipeline"]
}

 variable "jobs" {
   default = [
     { name = "roboshop", folder = "infra", repo_url = "http://github.com/nikhil-thokala/roboshop-infra" },
     { name = "frontend", folder = "CI-Pipeline", repo_url = "http://github.com/nikhil-thokala/frontend" },
     { name = "cart", folder = "CI-Pipeline", repo_url = "http://github.com/nikhil-thokala/cart" },
     { name = "catalogue", folder = "CI-Pipeline", repo_url = "http://github.com/nikhil-thokala/catalogue" },
     { name = "user", folder = "CI-Pipeline", repo_url = "http://github.com/nikhil-thokala/user" },
     { name = "shipping", folder = "CI-Pipeline", repo_url = "http://github.com/nikhil-thokala/shipping" },
     { name = "payment", folder = "CI-Pipeline", repo_url = "http://github.com/nikhil-thokala/payment" }
]
 }


