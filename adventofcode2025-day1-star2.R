input = scan("day1_input.csv", sep="\n", what=character())

dial <- c(50)
zeros_found <- 0

for(rotation in input) {
  current_pos <- dial[length(dial)]
  
  amount <- as.integer(substring(rotation, 2))
  
  if(substr(rotation, 1, 1) == 'L') {
    new_pos <- (current_pos - amount)
  } else {
    new_pos <- (current_pos + amount)
  }
  
  if(new_pos < 0 && current_pos!=0) {
        zeros_found <- zeros_found + 1
  }
  
  dial <- append(dial, new_pos %% 100)
  zeros_found <- zeros_found + (abs(new_pos) %/% 100)
  
  if (new_pos == 0) {
    zeros_found <- zeros_found + 1
  }
  
}

print(zeros_found)

