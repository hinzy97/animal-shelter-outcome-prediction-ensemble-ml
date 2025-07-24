#Color processing

popularColor <- function(dataset)
{
  df <- as.data.frame(table(dataset$Color))
  df <- df[which(df$Freq >= floor(mean(df$Freq))),]
  dataset$pop_color <- ifelse(dataset$Color %in% df$Var1,1,0)
  dataset
}

popularColorByYear <- function(dataset)
{
  lev <- levels(as.factor(dataset$year))
  for(i in 1:length(lev))
  {
    filtered_ds <- dataset[which(dataset$year == lev[i]),]
    df <- as.data.frame(table(filtered_ds$Color))
    df <- df[which(df$Freq >= ceiling(mean(df$Freq))),]
    att_name <- paste("pop_col_by_year_", as.character(lev[i]),sep="")
    col_names <- c(colnames(dataset),att_name)
    dataset$pc <- ifelse(dataset$Color %in% df$Var1,1,0)
    names(dataset) <- col_names
  }
  dataset
}

colorLevels <- function(color_value)
{
  if (grepl("/", color_value, ignore.case = TRUE))
  {
    return ("pattern")
  }
  else
  {
    return (color_value)
  }
}
colorLevelsNumeric <- function(value)
{
  if (grepl("pattern", value, ignore.case = TRUE))
  {
    return (1)
  }
  else
  {
    return (0)
  }
}

colorLevelsNumeric <- function(value)
{
  if (grepl("pattern", value, ignore.case = TRUE))
  {
    return (1)
  }
  else
  {
    return (0)
  }
}

reduceColorLevels <- function(dataset)
{
  dataset$is_pattern <- sapply(as.character(dataset$Color), FUN=colorLevels)
  dataset$is_pattern_numeric <- sapply(as.character(dataset$is_pattern), FUN=colorLevelsNumeric)
  dataset
}


convertColorToFeatures <- function(dataset)
{
  unique_color_train <- c(unique(dataset$is_pattern))
  for (i in unique_color_train)
  {
    dataset[i] <- as.numeric(grepl(i, as.character(dataset$is_pattern)))
  }
  colnames(dataset) <- gsub(" ", "_", colnames(dataset))
  dataset
}



reduce <- function(value, arg1, arg2)
{
  if(!(value %in% arg1))
  {
    return ("other")
  }
  else
  {
    return (value)
  }
}

reduceNumeric <- function(value, arg1, arg2)
{
  if(!(value %in% arg1))
  {
    return (0)
  }
  else
  {
    return (arg2[which(arg2$Var1 == value),2]) #frequency of the color
    #return (value)
  }
}

reduceToPopularColors <- function(dataset, arg1, arg2)
{
  #top_50_color <- popularColors(training_data)
  dataset$reduced_colors_level <- sapply(as.character(dataset$is_pattern), FUN=reduce, arg1 = arg1, arg2 = arg2)
  dataset$reduced_colors_numeric <- sapply(as.character(dataset$is_pattern), FUN=reduceNumeric, arg1 = arg1, arg2 = df_colors)
  dataset
}