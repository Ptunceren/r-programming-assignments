A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

print(A)
print(B)

# Compute A + B
A + B

# Compute A - B
A - B

# Diagonal Matrix
D <- diag(c(4, 1, 2, 3))

print(D)

# Custom 5 X 5 Matrix method
MTRX <- diag(3, 5)
MTRX[1, 2:5] <- 1
MTRX[2:5, 1] <- 2

print(MTRX)

# Custom 5 X 5 cbind/rbind method
MTRIX <- cbind(
  c(3, rep(2, 4)),
  rbind(rep(1, 4), diag(3, 4))
)

print(MTRIX)
