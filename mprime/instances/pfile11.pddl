(define (problem mprime-x-11)
   (:domain mystery-prime-typed)
   (:objects pistachio bacon pear sweetroll shrimp chicken cherry
             tomato - food
             lubricity - pleasure
             jealousy dread laceration loneliness sciatica hangover
             prostatitis boils - pain
)
   (:init
(craves sciatica shrimp)
          (eats pear cherry)
          (eats bacon pistachio)
(= (locale shrimp) 4)
          (eats pistachio chicken)
(= (locale sweetroll) 1)
          (eats sweetroll pear)
(= (locale pear) 2)
(= (locale bacon) 0)

          (eats tomato chicken)
          (eats cherry pear)
          (eats sweetroll tomato)
          (eats pistachio bacon)
          (craves lubricity pear)
          (eats chicken pistachio)
(= (locale tomato) 2)
          (eats tomato shrimp)
          (eats bacon pear)
          (eats pear sweetroll)
          (craves dread bacon)
          (eats shrimp chicken)

          (craves jealousy pistachio)
          (eats chicken tomato)

          (craves boils tomato)

          (eats tomato sweetroll)
(= (locale chicken) 5)
          (craves hangover chicken)
          (craves laceration pear)
(= (locale cherry) 3)
          (eats shrimp tomato)
          (eats pear bacon)

          (eats cherry chicken)

          (craves loneliness sweetroll)
          (eats chicken cherry)
          (craves prostatitis cherry)

          (eats chicken shrimp)
(= (locale pistachio) 3)
(= (harmony lubricity) 2))
   (:goal (and (craves laceration shrimp)
               (craves loneliness shrimp))))
