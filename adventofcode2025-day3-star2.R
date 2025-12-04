input = scan("day3_input.csv", sep = "\n", what = character())

total_joltage <- 0



recursive.jolt <- function(bank, places) {
  if(places <= 0 ) {
    return ("")
  }
  
  max <- 0
  index <- 0
  for (i in 1:((nchar(bank) - (places-1))))
  {
    if (as.numeric(substring(bank, i, i)) > max)
    {
      max <- as.numeric(substring(bank, i, i))
      index <- i
    }
  }
  return(paste(max, recursive.jolt(substring(bank, index+1), places-1), sep=""))
}   

for (bank in input) {
  total_joltage <- total_joltage + as.numeric(recursive.jolt(bank, 12))
}
print(total_joltage, digits=20)

