provider "jenkins" {
  server_url = "https://172.31.6.187:8080"
  username   = data.aws_ssm_parameter.jenkins_user.value
  password   = data.aws_ssm_parameter.jenkins_pass.value
}

data "aws_ssm_parameter" "jenkins_user" {
  name = "jenkins.user"
}

data "aws_ssm_parameter" "jenkins_pass" {
  name = "jenkins.pass"
}
