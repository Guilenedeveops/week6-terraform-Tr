resource "aws_iam_user" "name" {
    name = "guigui"
  }

resource "aws_iam_group" "group" {
    name = "sre"
  }

resource "aws_iam_group_membership" "name" {
    name = "addding_user"
    group = "aws_iam_group.group.name"
    users = [aws_iam_user.name.name]

}
