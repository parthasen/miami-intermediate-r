a <- 2
b <- 4
sigSq <- 0.5
n <- 80

x <- runif(n)
(avgX <- mean(x))
write(avgX, "avgX.txt")

y <- a + b * x + rnorm(n, sd = sqrt(sigSq)/2)

plot(x, y)
abline(a, b, col = "green", lwd = 2)

dev.print(pdf, "nifty_plot.pdf")
