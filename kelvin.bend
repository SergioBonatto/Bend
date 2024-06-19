def fac(n):
  switch n:
    case 1:
      return 1
    case 0:
      return 1
    case _:
      return n * fac(n - 1)


def main():
  return fac(5)




