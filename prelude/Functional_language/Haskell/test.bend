def exp2(n):
  bend x = 0:
    when x < n:
      lft = fork(x + 1)
      rgt = fork(x + 1)
      y = lft + rgt
    else:
      y = 1
  return y


# FIXME: This is not working
# TODO: Syntax is right, but the code is not working
Exp2 n =
  (bend x = 0, soma= 0, lft = 0, rgt = 0 {
    when (< x n):(
      let lft = fork ((+ x 1) soma lft rgt) # ex2 return 1 from (+ x 1). WHy?
      let rgt = fork ((+ x 1) soma lft rgt)
      let soma = (+ lft rgt)
      soma)
    else:
      soma 
  })



Main=
  let ex1 = (exp2(10))
  let ex2 = (Exp2 10)
  ex1


