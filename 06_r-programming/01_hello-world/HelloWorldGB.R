library(stringr)

hello_world <- function(name, n_language, current_time = Sys.time()){
  date_and_time <- as.POSIXct(current_time, format="%Y-%m-%d %H:%M:%OS")
  hour_of_day <- as.numeric(format(date_and_time, "%H"))
  
  title_name <- str_to_title(name)
  
  language_types <- c(paste0("Hello ", title_name, "!"), 
                       "Anyeonghaseyo",
                       paste0("Ni hao ", title_name, " jintian zenmeyang?"),
                       paste0("Hola ", title_name, " como estas?"),
                       paste0("Xin chao ", title_name, " ban knoe kong?"),
                       "Que pasa causa?",
                       paste0("gwenchana", title_name, "?"))
  random_number <- sample(1:7, 1) # generates random number between 0 and 7


  day_time <- ""
  if((hour_of_day < 12) && (hour_of_day >= 6)){
    day_time <- "morning"
  }
  if((hour_of_day < 17) && (hour_of_day >= 12)){
    day_time <- "afternoon"
  }
  if((hour_of_day < 22) && (hour_of_day >= 17)){
    day_time <- "evening"
  }
  if((hour_of_day < 6) && (hour_of_day >= 22)){
    day_time <- "night"
  }
  if(day_time == "") {
    day_time = "errorintimeofday"
  }
  return(paste0("Good ", day_time,", ", language_types[random_number]))
  

}
print(hello_world("GABRIELLA"))

library(stringr)


