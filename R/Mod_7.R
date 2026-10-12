data("mtcars")
head(mtcars)
str(mtcars)
print(mtcars)
summary(mtcars)
plot(mtcars)

s3_obj <- list(name = "Paul T.", age =33, GPA = 3.3)
class(s3_obj) <- "student_s3"

setClass("student_s4",
         slots = c(name = "character", age = "numeric", GPA = "numeric"))
s4_obj <- new("student_s4", name = "Paul T.", age = 33, GPA = 3.3)

print(s3_obj)
print(s4_obj)
lm(mtcars)
