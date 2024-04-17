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

curve(dnorm(x, 0, 1), xlim = c(-5, 5), ylim = c(0, 0.5), col = 2, lwd = 6, lty = 2, yaxs = "i")
curve(dnorm(x, 1, 1), xlim = c(-5, 5), ylim = c(0, 0.5), col = 2, lwd = 6, lty = 2, yaxs = "i")
curve(dnorm(x, 2, 1), xlim = c(-5, 5), ylim = c(0, 0.5), col = 2, lwd = 6, lty = 2, yaxs = "i")

# dystrybuanta

par(mfrow = c(1, 3))
curve(pnorm(x, 0, 1), xlim = c(-5, 5), col = "red", lwd = 6, lty = 2, yaxs = "i", add = TRUE)
legend("topleft", c("N(0,1)", "N(1,1)"), col = 2, text.col = 1, lty = 5)

# funkcja przeżycia

curve(1 - pnorm(x, 0, 1), xlim = c(-5, 5), col = 2, lwd = 6, lty = 2, yaxs = "i")



# b) N(0, 1), N(0, 0.5), N(0, 2)

# gęstość

curve(dnorm(x, 0, 1), xlim = c(-5, 5), ylim = c(0, 1), col = 2, lwd = 6, lty = 2, yaxs = "i")
curve(dnorm(x, 0, 0.5), xlim = c(-5, 5), ylim = c(0, 1), col = 2, lwd = 6, lty = 2, yaxs = "i")
curve(dnorm(x, 0, 2), xlim = c(-5, 5), ylim = c(0, 1), col = 2, lwd = 6, lty = 2, yaxs = "i")

# dystrybuanta

curve(pnorm(x, 0, 1), xlim = c(-5, 5), col = 2, lwd = 6, lty = 2, yaxs = "i")
curve(pnorm(x, 0, 0.5), xlim = c(-5, 5), col = 2, lwd = 6, lty = 2, yaxs = "i")
curve(pnorm(x, 0, 2), xlim = c(-5, 5), col = 2, lwd = 6, lty = 2, yaxs = "i")

# funkcja przeżycia

curve(1 - pnorm(x, 0, 1), xlim = c(-5, 5), col = 2, lwd = 6, lty = 2, yaxs = "i")



# Zadanie 2 ---------------------------------------------------------------

# Sprawdzenie reguły 3-sigm
cat("1 sigma: ", pnorm(1) - pnorm(-1), "\n")
cat("2 sigma: ", pnorm(2) - pnorm(-2), "\n")
cat("3 sigma: ", pnorm(3) - pnorm(-3), "\n")

# Graficzna ilustracja reguły 3-sigm


# Zadanie 3 ---------------------------------------------------------------

mean_height <- 173
mean_sd <- 6
# a)
prob <- pnorm(179, mean_height, mean_sd)
prob
# 0.8413447

# b)
prob2 <- pnorm(180, mean_height, mean_sd) - pnorm(167, mean_height, mean_sd)
prob2
# 0.7196722

# c)
prob3 <- 1 - pnorm(181, mean_height, mean_sd)
prob3

# 0.09121122

# d)
height <- qnorm(0.6, mean_height, mean_sd)
height

# 174.5201

# Zadanie 4 ---------------------------------------------------------------

# a)

qnorm(0.95)
?qt
# b)

qnorm(0.975)

# c)
?qt
qt(0.95, df = 10)

# d)

qt(0, 99, df = 20)

# e)
?qchisq

qchisq(0.9, df = 4)

# f)

qchisq(0.95, df = 10)

# g)
?qf
qf(0.95, df1 = 2, df2 = 10)

# h)

qf(0.99, 3, 18)

# Zadanie 5 ---------------------------------------------------------------

?dgamma

# a)

curve(dgamma(x, shape = 1, scale = 1), xlim = c(0, 10), ylim = c(0, 1), col=2, lwd = 6, add = TRUE)

curve(dgamma(x, shape = 0.5, scale = 1), xlim = c(0, 10),ylim = c(0, 1), col=3, lwd = 6, add = TRUE)

curve(dgamma(x, shape = 2, scale = 1), xlim = c(0, 10), ylim = c(0, 1),col=4, lwd = 6, add = TRUE)

curve(dgamma(x, shape = 3, scale = 1), xlim = c(0, 10),ylim = c(0, 1), col=5, lwd = 6, add = TRUE)

legend("topright", c("Ga(1,1)", "Ga(0.5,1)", "Ga(2,1)", "Ga(3,1)"), c=2:5)
# b)

curve(dgamma(x, shape = 0.5, scale = 1), xlim = c(0, 10), lwd = 6)

# Zadanie 6 ---------------------------------------------------------------

?dchisq

# a)



# b)


# Zadanie 7 ---------------------------------------------------------------

curve(dt(x, 1), xlim = c(-5, 5), ylim = c(0, 0.4), col = 2, lwd = 3, lty = 2, yaxs = "i", add = TRUE)
curve(dt(x, 5), xlim = c(-5, 5), ylim = c(0, 0.4), col = 3, lwd = 3, lty = 2, yaxs = "i", add = TRUE)
curve(dt(x, 30), xlim = c(-5, 5), ylim = c(0, 0.4), col = 4, lwd = 3, lty = 2, yaxs = "i", add = TRUE)


# Zadanie 8 ---------------------------------------------------------------


# a)

curve(df(x, 10, 5), xlim = c(0, 10), ylim = c(0, 1), col = 2, lwd = 3, lty = 2, yaxs = "i", add = TRUE)
curve(df(x, 10, 10), xlim = c(0, 10), ylim = c(0, 1), col = 3, lwd = 3, lty = 2, yaxs = "i", add = TRUE)
curve(df(x, 10, 20), xlim = c(0, 4), ylim = c(0, 1), col = 4, lwd = 3, lty = 2, yaxs = "i", add = TRUE)


# b)

# c)


# Zadanie 9 ---------------------------------------------------------------

curve(dbeta(x, 1, 1), xlim = c(-2, 2), ylim = c() col = 2, lwd = 3, lty = 2, yaxs = "i", add = TRUE)
curve(dbeta(x, 2, 2), xlim = c(-2, 2), col = 3, lwd = 3, lty = 2, yaxs = "i", add = TRUE)
curve(dbeta(x, 1, 1), xlim = c(-2, 2), col = 4, lwd = 3, lty = 2, yaxs = "i", add = TRUE)


# Zadanie 10 --------------------------------------------------------------
x <- 1:15

barplot(dbinom(x, 50, 0.25))
barplot(dbinom(x, 10, 0.25))

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
