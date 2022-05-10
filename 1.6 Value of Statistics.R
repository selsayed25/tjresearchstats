load("~/ClassRatings.RData")
#
# Class F
#

summary(Class_F)
IQR(Class_F)
sd(Class_F)

#
# Class G
#

summary(Class_G)
IQR(Class_G)
sd(Class_G)

#
# Class H
#

summary(Class_H)
IQR(Class_H)
sd(Class_H)

#
# Class I
#

summary(Class_I)
IQR(Class_I)
sd(Class_I)

#
# Class J
#

summary(Class_J)
IQR(Class_J)
sd(Class_J)

#
# Class F Dotplot
#

stripchart(Class_F, method="stack", at=0, main="Class F Ratings", xlab="Ratings", ylab="# of Students")

#
# Class G Dotplot
#

stripchart(Class_G, method="stack", at=0, main="Class G Ratings", xlab="Ratings", ylab="# of Students")

#
# Class H Dotplot
#

stripchart(Class_H, method="stack", at=0, main="Class H Ratings", xlab="Ratings", ylab="# of Students")

#
# Class I Dotplot
#

stripchart(Class_I, method="stack", at=0, main="Class I Ratings", xlab="Ratings", ylab="# of Students")

#
# Class J Dotplot
#

stripchart(Class_J, method="stack", at=0, main="Class J Ratings", xlab="Ratings", ylab="# of Students")

#
# Hypothetical Example 1
#

small <- c(1, 1, 1, 1, 1, 1, 1, 1, 1, 2)
stripchart(small, method="stack", at=0, main="Class Ratings", xlab="Ratings", ylab="# of Students")
sd(small)

#
# Hypothetical Example 2
#

large <- c(1, 1, 1, 1, 1, 9, 9, 9, 9, 9)
stripchart(large, method="stack", at=0, main="Class Ratings", xlab="Ratings", ylab="# of Students")
sd(large)
