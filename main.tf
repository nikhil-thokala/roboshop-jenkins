resource "jenkins_folder" "folders" {
  count = length(var.folders)
  name  = element(var.folders, count.index)
}

resource "jenkins_job" "job" {
  depends_on = [jenkins_folder.folders]

  count    = length(var.jobs)
  name     = lookup(element(var.jobs, count.index), "name", null)
  folder   = "/job/${lookup(element(var.jobs, count.index), "folder", null)}"

  template   = templatefile("${path.module}/sb-job.xml", {
    repo_url = lookup(element(var.jobs, count.index), "repo_url", null)
    name     = lookup(element(var.jobs, count.index), "name", null)
  })

#  lifecycle {
#     ignore_changes = [template]
#  }
}

data "aws_instance" "jenkins" {
  instance_id = "i-0ff2c6dce03615274"
}

resource "aws_route53_record" "jenkins" {
  zone_id = "Z0834449398HDP390BFHD"
  name    = "jenkins.devopsjob.online"
  type    = "A"
  ttl     = 30
  records = [data.aws_instance.jenkins.public_ip]
}
