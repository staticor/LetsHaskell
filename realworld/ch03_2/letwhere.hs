bar = let b = 2
          c = True
      in let a = b
         in (a, c)

-- a just alive in let expression.



foo = x
     where x = y
          where y = 2


-- last where only alive in above




