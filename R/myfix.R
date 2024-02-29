#' My String Fix Function
#'
#' This function converts a Windows file path on your clipboard to an R-friendly path on your clipboard.
#' @export
#' @return The string in your clipboard is edited to make windows paths R friendly.
#' @details This function uses normalizePath() to convert backslashes to forward slashes in the text on
#' your clipboard. It uses gsub() to remove any quotation marks, then writes the resulting text to your clipboard.
#' ```
#' myfix <- function() {
#'   str <- readClipboard()
#'   str <- gsub('"', "", str)
#'   str <- normalizePath(str, winslash = "/")
#'   str <- charToRaw(paste0(str, " "))
#'   writeClipboard(str)
#' }
#' ```
#' @examples
#' myfix()

myfix <- function() {
  str <- readClipboard()
  str <- gsub('"', "", str)
  str <- normalizePath(str, winslash = "/")
  str <- charToRaw(paste0(str, " "))
  writeClipboard(str)
}


#' My String Fix Function - Shorthand
#'
#' This function converts a windows path on your clipboard to an R-friendly path on your clipboard.
#' @export
#' @return The string in your clipboard is edited to make windows paths R friendly.
#' @details This function uses normalizePath() to convert backslashes to forward slashes in the text on
#' your clipboard. It uses gsub() to remove any quotation marks, then writes the resulting text to your clipboard.
#' ```
#' mf <- function() {
#'   str <- readClipboard()
#'   str <- gsub('"', "", str)
#'   str <- normalizePath(str, winslash = "/")
#'   str <- charToRaw(paste0(str, " "))
#'   writeClipboard(str)
#' }
#' ```
#' @examples
#' mf()

mf <- function() {
  str <- readClipboard()
  str <- gsub('"', "", str)
  str <- normalizePath(str, winslash = "/")
  str <- charToRaw(paste0(str, " "))
  writeClipboard(str)
}



#' Viedoc rename function
#'
#' This function simplifies the most common variable names in Viedoc
#' @export
#' @return A list of data sheets with simplified variable names
#' @details List of changes:
#' ```
#' 
#' vrn <- function(x) {
#'  sapply(x, function(y){
#'  if("SubjectId" %in% names(y))
#'  y %>%
#'     rename(id = SubjectId,
#'            event = EventName,
#'            event.date = EventDate)
#'  else y
#'  })
#' }
#' ```
#' @examples
#' vrn(x)

vrn <- function(x) {
  sapply(x, function(y){
    if("SubjectId" %in% names(y))
      y %>%
      rename(id = SubjectId,
             event = EventName,
             event.date = EventDate)
    else y
  })
}


#' Load PAM50 color palette
#'
#' Create a color palette for PAM50
#' @export
#' @return A vector of four colors, representing Luminal A, Luminal B, HER2-enriched and Basal-like breast cancer.
#' @details 
#' ```
#' Colors: c("blue", "deepskyblue", "magenta", "red")
#' ```
#' @examples
#' palette <- pamcol()

pamcol <- function(){
  c <- c("blue", "deepskyblue", "magenta", "red")
  return(c)
}




#' Load essential packages
#'
#' Loads the packages I use every day: tidvyerse, myfix, survival, survminer, readxl, ggsci, and broom
#' @export
#' @details 
#' ```
#' ```
#' @examples
#' mp()

mp <- function(){
  library(tidyverse)
  library(myfix)
  library(survival)
  library(survminer)
  library(ggsci)
  library(readxl)
  library(broom)
}


