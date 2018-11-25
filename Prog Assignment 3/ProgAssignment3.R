######### Programming Assignment 3 ###########

# Assigning working directory and reading the file

library(dplyr)
#options(warn=-1)  ## This allows NO WARNINGS TO SHOW UP
currentwd <-getwd() 
directory <- "C:/Users/gpalghat006/Documents/GitHub/datasciencecoursera/Prog Assignment 3/"
setwd(directory)
outcome_file <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
#outcome[, 11] <- as.numeric(outcome[, 11])
hospital_profile<-read.csv("hospital-data.csv", colClasses="character")
unique_list_of_states <- unique(hospital_profile$State)
unique_list_of_outcomes <- c("heart attack", "heart failure","pneumonia")
master_rank_list <- NULL


#print(best("TX", "heart attack"))
#print(best("TX", "heart failure"))
#print(best("MD", "heart attack"))
#print(best("MD", "pneumonia"))
#print(best("BB", "heart attack"))
#print(best("NY", "hert attack"))

#print(rankhospital("TX", "heart failure", 4))
#print(rankhospital("TX", "heart attack", 4))
#print(rankhospital("MD", "heart attack", "worst"))
#print(rankhospital("MN", "heart attack", 5000))

#print(rankall("heart attack", "best"))
#print(head(rankall("heart attack", 20), 10))
#print(tail(rankall("pneumonia", "worst"), 3)) # not working
#print(tail(rankall("heart failure"), 10)) # not working
#print(rankall("blubber", 10))

#print(rankall("pneumonia", "worst"))

#print(best("SC", "heart attack"))
#print(best("NY", "pneumonia"))
#print(best("AK", "pneumonia"))
#print(rankhospital("NC", "heart attack", "worst"))
#print(rankhospital("WA", "heart attack", 7)) # - Didnt work
#print(rankhospital("TX", "pneumonia", 10))
#print(rankhospital("NY", "heart attack", 7)) # - Didnt work

#print(rankall("heart attack", 4))
#r <- rankall("heart attack", 4)
#print(as.character(subset(r, State == "HI")$ Hospital.Name))

#r <- rankall("pneumonia", "worst")
#print(as.character(subset(r, State == "NJ")$Hospital.Name))

#r <- rankall("heart failure", 10)
#print(as.character(subset(r, State == "NV")$Hospital.Name))

#options(warn=0) # sets warnings back on 


#######Function to find the best hospital in state, with lowest mortality rate#######

best <- function(state, outcome) {
  ## Read outcome data - as mentioned outside the function
  ## Check that state and outcome are valid
  ## Return hospital name in that state with lowest 30-day death rate
  
  if(state %in% unique_list_of_states){
    outcomes_subset <- outcome_file[outcome_file$State==state,]
    if(outcome %in% unique_list_of_outcomes){
      if(outcome == "heart attack"){
        outcomes_subset$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack <- as.numeric(outcomes_subset$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack)
        outcomes_subset_sorted <- outcomes_subset[order(outcomes_subset$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack, outcomes_subset$Hospital.Name),]
        #outcomes_subset_sorted$Rank <- seq.int(nrow(outcomes_subset_sorted))
      }
      if(outcome == "heart failure"){
        outcomes_subset$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure <- as.numeric(outcomes_subset$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure)
        outcomes_subset_sorted <- outcomes_subset[order(outcomes_subset$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure, outcomes_subset$Hospital.Name),]
        #outcomes_subset_sorted$Rank <- seq.int(nrow(outcomes_subset_sorted))
      }
      if(outcome == "pneumonia"){
        outcomes_subset$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia <- as.numeric(outcomes_subset$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia)
        outcomes_subset_sorted <- outcomes_subset[order(outcomes_subset$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia, outcomes_subset$Hospital.Name),]
        #outcomes_subset_sorted$Rank <- seq.int(nrow(outcomes_subset_sorted))
        }
      return(outcomes_subset_sorted[1,2])
    }
    else{
      return("Invalid Outcome")
    }  
  }
  else{
    return("Invalid State")
  }
}

###################################################################################

#######Function to rank hospitals by outcome in a state#######

rankhospital <- function(state, outcome, num){
  ## Read outcome data
  ## Check that state and outcome are valid
  ## Return hospital name in that state with the given rank
  ## 30-day death rate
  
  if(state %in% unique_list_of_states){
    outcomes_subset <- outcome_file[outcome_file$State==state,]
    if(outcome %in% unique_list_of_outcomes){
      if(outcome == "heart attack"){
        outcomes_subset$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack <- as.numeric(outcomes_subset$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack)
        outcomes_subset_sorted <- outcomes_subset[,c("Hospital.Name","Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack")]
        outcomes_subset_sorted <- outcomes_subset[order(outcomes_subset_sorted$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack, outcomes_subset_sorted$Hospital.Name),]
        outcomes_subset_sorted <- outcomes_subset_sorted[complete.cases(outcomes_subset_sorted),]
        outcomes_subset_sorted$Rank <- seq.int(nrow(outcomes_subset_sorted))
      }
      if(outcome == "heart failure"){
        #print("entered heart failure")
        outcomes_subset$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure <- as.numeric(outcomes_subset$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure)
        outcomes_subset_sorted <- outcomes_subset[,c("Hospital.Name","Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure")]
        outcomes_subset_sorted <- outcomes_subset[order(outcomes_subset$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure, outcomes_subset$Hospital.Name),]
        outcomes_subset_sorted <- outcomes_subset_sorted[complete.cases(outcomes_subset_sorted),]
        outcomes_subset_sorted$Rank <- seq.int(nrow(outcomes_subset_sorted))
      }
      if(outcome == "pneumonia"){
        outcomes_subset$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia <- as.numeric(outcomes_subset$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia)
        outcomes_subset_sorted <- outcomes_subset[,c("Hospital.Name","Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia")]
        outcomes_subset_sorted <- outcomes_subset[order(outcomes_subset$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia, outcomes_subset$Hospital.Name),]
        outcomes_subset_sorted <- outcomes_subset_sorted[complete.cases(outcomes_subset_sorted),]
        outcomes_subset_sorted$Rank <- seq.int(nrow(outcomes_subset_sorted))
      }
      if(is.numeric(num)) {
        #print("Entered Num Check")
        if(num > nrow(outcomes_subset_sorted)) {
          return("NA")
        }
        else return(outcomes_subset_sorted[outcomes_subset_sorted$State==state & outcomes_subset_sorted$Rank == num, 2])
      }
      else if(num == "worst"){
        #print("Entered check if its worst")
        return(tail(outcomes_subset_sorted$Hospital.Name,1))
      }
    }
    else{
      return("Invalid Outcome")
    }  
  }
  else{
    return("Invalid State")
  } 
}

###################################################################################

#####################Function to provide rank by all states########################

rankall <- function(outcome, num = "best") {
  ## Read outcome datab
  ## Check that state and outcome are valid
  ## For each state, find the hospital of the given rank
  ## Return a data frame with the hospital names and the (abbreviated) state name
  if(outcome %in% unique_list_of_outcomes){
    if (outcome == "heart attack"){
      of <-outcome_file[,c("Hospital.Name","Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack", "State")]
      of$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack <- as.numeric(of$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack)
      of <- of[complete.cases(of),]
      ofs <- split(of, of$State)
      #print(paste("Split file length", length(ofs)))
      for (i in 1:length(ofs)){
        ofs[[i]] <- ofs[[i]][order(ofs[[i]]$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack, ofs[[i]]$Hospital.Name),]
        ofs[[i]]$Rank <- seq.int(nrow(ofs[[i]]))
        if (num == "best") {
          master_rank_list <- rbind(master_rank_list, head(ofs[[i]],1))
        }
        else if (num == "worst"){
          master_rank_list <- rbind(master_rank_list,tail(ofs[[i]],1))
        }
        else if(is.numeric(num)){
          num <- as.numeric(num)
          if(num > nrow(ofs[[i]])){
            df<-data.frame("Hospital.Name" ="NA","Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack" = 9999 ,"State" = names(ofs[i]), Rank = 9999)
            master_rank_list <- rbind(master_rank_list,df)
          }
          else {
              df<-ofs[[i]][ofs[[i]]$Rank == num,]
              master_rank_list <- rbind(master_rank_list,df)
          }
        }
        else {
          return("Invalid Rank Number")
        }
      }
      #return(master_rank_list)
      return(master_rank_list[,c("Hospital.Name","State")])
    }
    if (outcome == "heart failure"){
      of <-outcome_file[,c("Hospital.Name","Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure", "State")]
      of$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure <- as.numeric(of$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure)
      of <- of[complete.cases(of),]
      ofs <- split(of, of$State)
      #print(paste("Split file length", length(ofs)))
      for (i in 1:length(ofs)){
        ofs[[i]] <- ofs[[i]][order(ofs[[i]]$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure, ofs[[i]]$Hospital.Name),]
        ofs[[i]]$Rank <- seq.int(nrow(ofs[[i]]))
        if (num == "best") {
          master_rank_list <- rbind(master_rank_list, head(ofs[[i]],1))
        }
        else if (num == "worst"){
          master_rank_list <- rbind(master_rank_list,tail(ofs[[i]],1))
        }
        else if(is.numeric(num)){
          num <- as.numeric(num)
          if(num > nrow(ofs[[i]])){
            df<-data.frame("Hospital.Name" ="NA","Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure" = 9999 ,"State" = names(ofs[i]), Rank = 9999)
            master_rank_list <- rbind(master_rank_list,df)
          }
          else {
            df<-ofs[[i]][ofs[[i]]$Rank == num,]
            master_rank_list <- rbind(master_rank_list,df)
          }
        }
        else {
          return("Invalid Rank Number")
        }
      }
      #return(master_rank_list)
      return(master_rank_list[,c("Hospital.Name","State")])
    }
    if (outcome == "pneumonia"){
      of <-outcome_file[,c("Hospital.Name","Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia", "State")]
      of$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia <- as.numeric(of$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia)
      of <- of[complete.cases(of),]
      ofs <- split(of, of$State)
      #print(paste("Split file length", length(ofs)))
      for (i in 1:length(ofs)){
        ofs[[i]] <- ofs[[i]][order(ofs[[i]]$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia, ofs[[i]]$Hospital.Name),]
        ofs[[i]]$Rank <- seq.int(nrow(ofs[[i]]))
        if (num == "best") {
          master_rank_list <- rbind(master_rank_list, head(ofs[[i]],1))
        }
        else if (num == "worst"){
          master_rank_list <- rbind(master_rank_list,tail(ofs[[i]],1))
        }
        else if(is.numeric(num)){
          num <- as.numeric(num)
          if(num > nrow(ofs[[i]])){
            df<-data.frame("Hospital.Name" ="NA","Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia" = 9999 ,"State" = names(ofs[i]), Rank = 9999)
            master_rank_list <- rbind(master_rank_list,df)
          }
          else {
            df<-ofs[[i]][ofs[[i]]$Rank == num,]
            master_rank_list <- rbind(master_rank_list,df)
          }
        }
        else {
          return("Invalid Rank Number")
        }
      }
      #return(master_rank_list)
      return(master_rank_list[,c("Hospital.Name","State")])
    }
  }
  else{
    stop("Invalid Outcome")
  } 
}

