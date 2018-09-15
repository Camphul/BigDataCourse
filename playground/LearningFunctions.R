numbers <- c(1,4,5,8,9,23,53,64)
numbers

simpleDerivative <- sd(numbers)
simpleDerivative

args(sd)

oneToTen <- c(1:10)
oneToTenSimpleDerivative <- sd(oneToTen)

oneToTenSimpleDerivative

triple <- function(x) {
  return(x*3)
}

tripled <- triple(6)

tripled

mathMagic <- function(x,y = 1) {
  if(y == 0) {
    #prevent division by 0
    return(0)
  }
  x*y + x/y
}

mathMagic(2,4)

rollDice <- function(possibilities = 1:6) {
  sample(possibilities, size=1)
}

rollDice()
rollDice()
