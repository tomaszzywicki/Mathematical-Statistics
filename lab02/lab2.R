###########################################
###       STATYSTYKA MATEMATYCZNA       ###
###           LABORATORIUM 2            ###
###########################################


# Cel: statystyka opisowa: graficzne metody prezentacji danych ------------
# i wyznaczanie podstawowych statystyk próbkowych -------------------------

# ZESTAW ZADAŃ 2 ----------------------------------------------------------


# Zadanie 1 ---------------------------------------------------------------

kobiety <- c(17364, 56128, 11239, 8170)
stan <- c("panny", "mężatki", "wdowy", "rozwódki")

# a)

pie(kobiety, labels = stan)

desc <- paste(stan, round(prop.table(kobiety), 4) * 100, "%")

pie(kobiety, labels = desc)

# b)


# Zadanie 2 ---------------------------------------------------------------

stacje <- read.csv("http://pages.mini.pw.edu.pl/~grzegorzewskip/www/?download=stacje.csv")

pie(table(stacje$Answers))
barplot(table(stacje$Answers))

# Zadanie 3 ---------------------------------------------------------------

notowania <- c(
    23.30, 24.50, 25.30, 25.30, 24.30, 24.80,
    25.20, 24.50, 24.60, 24.10, 24.30, 26.10,
    23.10, 25.50, 22.60, 24.60, 24.30, 25.40,
    25.20, 26.80
)

plot(notowania, type = "l", main = "Wykres notowań")

# Zadanie 4 ---------------------------------------------------------------

butelki <- read.csv("http://pages.mini.pw.edu.pl/~grzegorzewskip/www/?download=butelki.csv")
butelki

# a)

cisnienie <- butelki$strength * 0.0068947

# b)

hist(cisnienie)
hist(cisnienie, breaks = "FD")

# c)

h <- hist(cisnienie, breaks = 14)

lines(h$mids, h$counts, col = 2, lwd = 4)

# d)

stem(cisnienie)

# e)

b <- boxplot(cisnienie)

summary(cisnienie)

# f)

mean(cisnienie)
var(cisnienie)
sd(cisnienie)
median(cisnienie)
IQR(cisnienie)
quantile(cisnienie)
diff(range(cisnienie))

library(moments)

skewness(cisnienie)
kurtosis(cisnienie)

# g)

quantile(cisnienie, 0.05)

# h)

mean(cisnienie, trim = 0.1)


# Zadanie 5 ---------------------------------------------------------------

czynsz <- c(
    334, 436, 425, 398, 424, 429, 392, 428, 339, 389,
    352, 405, 392, 403, 344, 400, 424, 443, 378, 387,
    384, 498, 374, 389, 367, 457, 409, 454, 345, 422
)

summary(czynsz)
boxplot(czynsz, horizontal = TRUE)
hist(czynsz, breaks = 14)
