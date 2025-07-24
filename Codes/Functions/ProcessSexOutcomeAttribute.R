#Process sex upon outcome code

sexOutcomeMapping <- function(sex_outcome)
{
  if (grepl("Intact Female", sex_outcome, ignore.case = TRUE))
  {
    return (1)
  } 
  else if (grepl("Intact Male", sex_outcome, ignore.case = TRUE))
  {
    return (2)
  }
  else if (grepl("Spayed Female", sex_outcome, ignore.case = TRUE))
  {
    return (3)
  } 
  else if (grepl("Neutered Male", sex_outcome, ignore.case = TRUE))
  {
    return (4)
  }
  else
  {
    return (0)
  }
}

convertSexOutcomeType <- function(dataset)
{
  dataset$Sex_Outcome <- sapply(as.character(dataset$SexuponOutcome), FUN=sexOutcomeMapping)
  dataset
}

#"Intact Female" "Intact Male"   "Neutered Male" "Spayed Female" "Unknown" 
sexLevelsMapping <- function(value)
{
  if (grepl("intact", value, ignore.case = TRUE))
  {
      return (2) #"not operated"
  }
  else if (grepl("neutered", value, ignore.case = TRUE)) 
  {
    return (1) #"operated"
  } 
  else if (grepl("spayed", value, ignore.case = TRUE)) 
  {
    return (1) #"operated"
  } 
  else
  {
    return (0) #"Unknown"
  }
}

splitSexNumeric <- function(value)
{
  split_string <- strsplit(as.character(value), split=" ")
  if (grepl("\\<male\\>", split_string[[1]][2], ignore.case = TRUE))
  {
    return (1) #"male"
  }
  else if (grepl("female", split_string[[1]][2], ignore.case = TRUE)) 
  {
    return (2) #"female"
  } 
  else
  {
    return (0) #"Unknown"
  }
}

processSexOutcomeType <- function(dataset)
{
  dataset$is_surgical_sterilization <- sapply(as.character(dataset$SexuponOutcome), FUN=sexLevelsMapping)
  dataset$sex_numeric <- sapply(as.character(dataset$SexuponOutcome), FUN=splitSexNumeric)
  dataset
}