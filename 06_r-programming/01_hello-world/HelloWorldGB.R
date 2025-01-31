hello_world <- function(name, languages, current_time = Sys.time()){
  date_and_time <- as.POSIXct(current_time, format="%Y-%m-%d %H:%M:%OS")
  hour_of_day <- as.numeric(format(date_and_time, "%H"))
  if(12 > hour_of_day > 6){
    return("morning")
  }
  if(17 > hour_of_day > 12){
    return("afternoon")
  }
  if(22 > hour_of_day > 17){
    return("evening")
  }
  if(6 > hour_of_day > 22){
    return("night")
  }
  print(hour_of_day)
  #languages <- c(paste0("Hello ", name, "!"), 
  # "Anyeonghaseyo",
  # paste0("Ni hao, ", name, ", jintian zenmeyang?"),
  # paste0("Hola",name, "como estas?"),
  # paste0(name, "! I'm so glad you're here!"),
  # "OMG hey!",
  # paste0("sup ", name, "?"))
  return(hour_of_day)
  }

hello_world("GB", "LANG")
