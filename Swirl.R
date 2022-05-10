
# Start of file

y <- x[!is.na(x)]
y[y > 0]
x[!is.na(x) & x > 0]
x[c(-2, -10)]
vect <- c(foo = 11, bar = 2, norf = NA)
names(vect2) <- c("foo", "bar", "norf")
identical(vect, vect2)

# End of file