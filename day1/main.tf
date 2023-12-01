locals {
  input = file("${path.module}/input.txt")
  part1 = sum([ for i in split("\n", replace(local.input, "/[^0-9\n]/", "")): length(i) == 1 ? tonumber("${i}${i}")
            : length(i) == 2 ? tonumber(i)
            : tonumber("${element(split("", i),0)}${element(split("", i),length(i)-1)}") ])
  part2 = sum([ for i in split("\n", replace(local.input, "/[^0-9\n]/", "")): length(i) == 1 ? tonumber("${i}${i}")
            : length(i) == 2 ? tonumber(i)
            : tonumber("${element(split("", i),0)}${element(split("", i),length(i)-1)}") ])
}

output "part1" {
  value = local.part1
}