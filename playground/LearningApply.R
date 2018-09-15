power <- function(x, n=2) {
  x^2
}

nums <- c(1:10)

#lapply always returns a list so we need to unlist it to turn it back to a vector
factors <- unlist(lapply(nums, power))
factors

cities <- c("New York", "Paris", "London", "Tokyo")
firstAndLast <- function(name) {
  name <- gsub(" ", "", name)
  letters <- strsplit(name, split="")[[1]]
  c(first=min(letters), last=max(letters))
}

#returns matrix
sapply(cities, firstAndLast)

uniqueLetters <- function(name) {
  name <- gsub(" ", "", name)
  letters <- strsplit(name, split="")[[1]]
  unique(letters)
}

#cannot be simplified, should use for
lapply(cities, uniqueLetters)


#create 3x2 matrix
sapply(list(runif (10), runif (10)), 
       function(x) c(min = min(x), mean = mean(x), max = max(x)))

#defines vector length of firstAndLast
#really have to think of the returned values by the function
vapply(cities, firstAndLast, character(2))

#ERROR since the uniqueLetters result could be different.
vapply(cities, uniqueLetters, character(4))

#accept 1 logical
vapply(cities, function(x){length(x) > 5}, logical(1))


