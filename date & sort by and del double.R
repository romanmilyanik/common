birth <- c("1989-12-01 roman", "1992-11-07 zoria", "1991-12-29 taras", "1996-05-04 uriua")
people <- c("Roman", "Zoriana", "Taras", "Ura")

rm(birth)
summary(birth)

data.frame(c(birth, people))

taba <-data.frame(cbind(people, birth))
class(taba$birth)
class(taba$people)

taba$people <- as.character(taba$people)
taba$birth <- as.character(taba$birth)
as.character(taba$birth)

summary(taba)

taba$year <- substr(taba$birth, 1, 4)
taba$month <- substr(taba$birth, 6, 7)
taba$day <- substr(taba$birth, 9, 10)

taba$date <- paste(taba$day, taba$month, taba$year, sep = ".")

class(taba$date2)

taba$date1 <- NULL
taba$date2 <- as.Date(taba$date1)

taba$date_plus_1 <- taba$date2 + 3

taba$difdate <- taba$date_plus_1 - taba$date2
# ===============================================

birth <- c("1989-12-01", "1992-11-07", "1991-12-29", "1996-05-04", "1989-12-02", "1992-11-06")
people <- c("Roman", "Zoriana", "Taras", "Ura", "Roman", "Zoriana")

taba1 <-data.frame(cbind(people, birth))

class(taba1$birth)
class(taba1$people)

taba1$people <- as.character(taba1$people)
taba1$birth <- as.Date(taba1$birth)

taba2 <- taba1[order(taba1$people, taba1$birth, decreasing = T),]   # просортувати в спадаючому порядку
taba2 <- taba2[!duplicated(taba2$people),]   # видвлити дублікати


# сортування і видалення дублікатів
library(dplyr)
taba3 <- taba1 %>%
  group_by(people) %>%
  summarise(birth = max(birth))
taba3













