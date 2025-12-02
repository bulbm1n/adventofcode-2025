
input = scan("day2_input.csv", sep=",", what=character())
invalid_total <- 0



for(range in input) {
  range_array <- unlist(strsplit(range, split="-"))
  for(num in c(range_array[1]:range_array[2])) {
    
    if(nchar(as.character(num)) == 1){
      next
    }
    for(i in 2:nchar(as.character(num))) {
      if((nchar(as.character(num)) %% i != 0) && prior_factor == 0) {
        next
      }
      splitnums <- strsplit(as.character(num), paste("(?<=.{",(nchar(as.character(num)))/i,"})", sep=""), perl = TRUE)
      
      
      if(length(unique(unlist(splitnums)))==1) {
        invalid_total <- invalid_total + num
        break
        
      }   
    }
  }  
}



print(invalid_total)
