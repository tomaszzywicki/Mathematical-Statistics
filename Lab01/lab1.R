###########################################
###       STATYSTYKA MATEMATYCZNA       ###
###           LABORATORIUM 1            ###
###########################################


# Cel: wybrane rozkłady prawdopodobieństwa --------------------------------

# nrom - rozkład normalny
# chisq - rozkład chi-kwadrat
# gamma - rozkład gamma
# exp - rozkład wykładniczy
# f - rozkład F-Snedecora

# d - gęstość f(x) lub rozkład prawdopodobieństwa P(X=x)
# p - dystrybuanta F(x) = P(X<=x)
# q - funkcja kwantylowa F^{1}(p)
# r - generowanie liczb pseudolosowych


# Zadanie 1 ---------------------------------------------------------------

# a) N(0, 1), N(1, 1), N(2, 1)

# gęstość

?curve
# curve can plot also an expression in the variable x

curve(dnorm(x, 0, 1), xlim = c(-5, 5), ylim = c(0, 0.5), col = 2, lwd = 6, lty = 2)
curve(dnorm(x, 1, 1), xlim = c(-5, 5), ylim = c(0, 0.5), col = 2, lwd = 6, lty = 2)
curve(dnorm(x, 2, 1), xlim = c(-5, 5), ylim = c(0, 0.5), col = 2, lwd = 6, lty = 2)

# dystrybuanta

curve(pnorm(x, 0, 1), xlim = c(-5, 5), col = 2, lwd = 6, lty = 2)
curve(pnorm(x, 1, 1), xlim = c(-5, 5), col = 2, lwd = 6, lty = 2)
curve(pnorm(x, 2, 1), xlim = c(-5, 5), col = 2, lwd = 6, lty = 2)

# funkcja przeżycia 

curve(1 - pnorm(x, 0, 1), xlim = c(-5, 5), col = 2, lwd = 6, lty = 2)
curve(1 - pnorm(x, 1, 1), xlim = c(-5, 5), col = 2, lwd = 6, lty = 2)
curve(1 - pnorm(x, 2, 1), xlim = c(-5, 5), col = 2, lwd = 6, lty = 2)

# b) N(0, 1), N(0, 0.5), N(0, 2)

# gęstość

curve(dnorm(x, 0, 1), xlim = c(-5, 5), ylim = c(0, 1), col = 2, lwd = 6, lty = 2)
curve(dnorm(x, 0, 0.5), xlim = c(-5, 5), ylim = c(0, 1), col = 2, lwd = 6, lty = 2)
curve(dnorm(x, 0, 2), xlim = c(-5, 5), ylim = c(0, 1), col = 2, lwd = 6, lty = 2)

# dystrybuanta

curve(pnorm(x, 0, 1), xlim = c(-5, 5), col = 2, lwd = 6, lty = 2)
curve(pnorm(x, 0, 0.5), xlim = c(-5, 5), col = 2, lwd = 6, lty = 2)
curve(pnorm(x, 0, 2), xlim = c(-5, 5), col = 2, lwd = 6, lty = 2)

# funkcja przeżycia

curve(1 - pnorm(x, 0, 1), xlim = c(-5, 5), col = 2, lwd = 6, lty = 2)
curve(1 - pnorm(x, 0, 0.5), xlim = c(-5, 5), col = 2, lwd = 6, lty = 2)
curve(1 - pnorm(x, 0, 2), xlim = c(-5, 5), col = 2, lwd = 6, lty = 2)

# Zadanie 2 ---------------------------------------------------------------

# Sprawdzenie reguły 3-sigm
cat("1 sigma: ", pnorm(1) - pnorm(-1), "\n")
cat("2 sigma: ", pnorm(2) - pnorm(-2), "\n")
cat("3 sigma: ", pnorm(3) - pnorm(-3), "\n")

# Graficzna ilustracja reguły 3-sigm
curve(dnorm(x, 0, 1), xlim = c(-4, 4), ylim = c(0,0.5), col = 2, lwd = 6, lty = 2, ylab = "Density", xlab = "x", main = "3-Sigma Rule", yaxs = 'i')
abline(v = c(-1, 1), col = "orange", lwd = 4, lty = 2)
abline(v = c(-2, 2), col = "purple", lwd = 4, lty = 2)
abline(v = c(-3, 3), col = "blue", lwd = 4, lty = 2)
legend("topright", legend = c("1 sigma", "2 sigma", "3 sigma"), col = c("blue", "green", "red"), lty = 2)



# Zadanie 3 ---------------------------------------------------------------

# a)


 
# b)
 
# c)
 
# d)
 

# Zadanie 4 ---------------------------------------------------------------

# a)
 
# b)
 
# c)
?qt
# d)
 
# e)
?qchisq
# f)
 
# g)
?qf
# h)
 

# Zadanie 5 ---------------------------------------------------------------

?dgamma

# a)

# b)


# Zadanie 6 ---------------------------------------------------------------

?dchisq

# a)

# b)


# Zadanie 7 ---------------------------------------------------------------



# Zadanie 8 ---------------------------------------------------------------


# a)

# b)

# c)


# Zadanie 9 ---------------------------------------------------------------




# Zadanie 10 --------------------------------------------------------------




# Zadanie 11 --------------------------------------------------------------




# Zadanie 12 --------------------------------------------------------------




# Zadanie 13 --------------------------------------------------------------

# a)

# b)


# Zadanie 14 --------------------------------------------------------------

# a)

# b)

# c)

# d)


# Zadanie 15 --------------------------------------------------------------

# a)

# b)
