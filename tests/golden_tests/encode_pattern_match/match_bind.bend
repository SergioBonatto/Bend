cheese =
  switch num = (+ 2 3) {
  | 0: 653323
  | _: (+ num num-1)
  }

main = cheese
