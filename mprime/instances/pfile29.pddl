(define (problem mprime-x-29)
   (:domain mystery-prime-typed)
   (:objects papaya scallop melon popover pear shrimp broccoli pork
             - food
             achievement excitement - pleasure
             abrasion hangover anger laceration anxiety angina grief
             prostatitis boils sciatica jealousy - pain
)
   (:init
(= (locale scallop) 6)
(= (locale melon) 8)
          (eats melon shrimp)
          (craves anxiety melon)
          (eats popover shrimp)
          (craves achievement scallop)
          (craves excitement pork)
          (eats scallop pork)
          (eats melon scallop)
          (craves abrasion papaya)

          (eats shrimp melon)
          (eats broccoli pork)

          (eats pork scallop)

(= (locale popover) 5)
          (eats pear papaya)
(= (harmony excitement) 3)
          (eats papaya popover)
          (craves laceration melon)
          (eats popover papaya)
          (eats papaya pear)

          (craves angina melon)
          (craves boils broccoli)

          (eats shrimp broccoli)
          (craves hangover scallop)
          (craves grief shrimp)
(= (locale pear) 0)
          (eats shrimp popover)
          (craves anger scallop)
          (craves sciatica pork)
(= (locale papaya) 3)


          (eats pork pear)

          (craves jealousy pork)
          (eats pork broccoli)
          (eats pear pork)


          (eats scallop melon)
(= (locale broccoli) 2)
(= (locale shrimp) 7)
          (craves prostatitis shrimp)
(= (locale pork) 5)

(= (harmony achievement) 3)
          (eats broccoli shrimp))
   (:goal (and (craves jealousy shrimp)
               (craves prostatitis shrimp))))
