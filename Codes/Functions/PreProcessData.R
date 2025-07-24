% Author - Hina Tariq

#Pre processing code

preProcessData <- function(dataset)
{
  #Process date attribute
  dataset <- split_datetime_attribute(dataset)
  
  #Process sex outcome attribute
  dataset <- processSexOutcomeType(dataset)
  #dataset <- convertSexOutcomeType(dataset)
  
  #Process age attribute
  dataset <- ConvertIntoDaysAndReplace(dataset)
  dataset <- processAgeInDaysAttribute(dataset)
  
  #Process animal type attribute
  dataset <- convertAnimalType(dataset)
  
  #Process name attribute
  dataset <- processNameAtrribute2(dataset)
  #dataset <- processNameAtrribute(dataset)
  
  #Process color attribute
  dataset <- reduceColorLevels(dataset)
  
  #dataset <- convertColorToFeatures(dataset)
  #dataset <- popularColor(dataset)
  #dataset <- popularColorByYear(dataset)
  
  #Process breed attribute
  
  dataset <- reduceMixedBreedLevels2(dataset)
  dataset <- reduceHairBreedLevels(dataset)
  dataset <- reduceDomesticBreedLevels(dataset)
  
  #dataset <- convertBreedCatToFeatures(dataset)
  #dataset <- popularBreed(dataset)
  #dataset <- popularBreedByYear(dataset)
  
  #dataset
}

