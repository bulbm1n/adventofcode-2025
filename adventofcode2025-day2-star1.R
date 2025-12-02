
input = scan("day2_input.csv", sep=",", what=character())
invalid_total <- 0



for(range in input) {
  range_array <- unlist(strsplit(range, split="-"))
  for(num in c(range_array[1]:range_array[2]))
    
    if(as.numeric(substring(as.character(num), 1, (nchar(as.character(num))%/%2))) == as.numeric(substring(as.character(num), (nchar(as.character(num))%/%2)+1, nchar(as.character(num)))) && ((nchar(as.character(num)) %% 2) == 0) )
      invalid_total <- invalid_total + num
      {
        
  }
  
}

print(invalid_total)