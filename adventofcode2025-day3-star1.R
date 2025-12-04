input = scan("day3_input.csv", sep = "\n", what = character())

total_joltage <- 0

for (bank in input) {
  first_max <- 0
  index <- 0
  second_max <- 0
  for (i in 1:(nchar(bank) - 1))
  {
    as.numeric(substring(bank, i, i)) > first_max
    if (as.numeric(substring(bank, i, i)) > first_max)
    {
      first_max <- as.numeric(substring(bank, i, i))
      index <- i
    }
  }
  
  for (j in (index+1):nchar(bank))
  {
    if (as.numeric(substring(bank, j, j)) > second_max)
    {
      second_max <- as.numeric(substring(bank, j, j))
    }
  }
  total_joltage <- total_joltage + as.numeric(paste(first_max, second_max, sep =
                                                      ""))
  
}
print(total_joltage)

