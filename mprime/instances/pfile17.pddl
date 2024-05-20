(define (problem mprime-x-17)
   (:domain mystery-prime-typed)
   (:objects papaya endive cherry rice wurst yogurt potato onion
             marzipan shrimp wonderbread mutton turkey arugula ham haroset
             - food
             excitement achievement satiety love entertainment satisfaction
             lubricity intoxication rest - pleasure
             dread hangover grief depression laceration jealousy
             prostatitis abrasion loneliness angina anger anxiety boils
             jealousy-2 sciatica boils-1 loneliness-3 abrasion-4
             depression-7 laceration-8 - pain
)
   (:init
(craves anger marzipan)
(= (locale shrimp) 4)
          (craves prostatitis wurst)
(= (locale yogurt) 3)
(= (locale arugula) 5)
          (eats papaya rice)
          (eats potato yogurt)
(= (locale papaya) 4)


(= (harmony satisfaction) 1)
          (eats turkey haroset)
          (eats endive wurst)
          (craves lubricity shrimp)
          (eats onion ham)

          (craves boils-1 arugula)

          (craves abrasion yogurt)
          (eats ham onion)
          (craves dread papaya)
          (eats papaya wurst)
          (eats wonderbread yogurt)
          (eats wurst papaya)
          (eats rice papaya)
          (eats potato shrimp)
(= (locale marzipan) 5)
(= (locale wonderbread) 4)
          (eats yogurt potato)
          (eats wonderbread ham)
          (eats marzipan rice)
          (craves sciatica wonderbread)
          (eats potato arugula)
(= (harmony rest) 1)
          (craves intoxication arugula)
          (eats marzipan cherry)
          (eats endive cherry)
          (craves laceration cherry)
          (eats marzipan haroset)
          (eats ham mutton)
          (eats marzipan onion)
(= (locale potato) 3)
          (eats shrimp potato)
          (craves angina onion)
          (eats shrimp onion)
(= (locale mutton) 2)
(= (locale ham) 2)
          (craves love rice)
          (eats cherry rice)
(= (harmony lubricity) 3)
          (eats rice cherry)
          (craves grief endive)
(= (locale onion) 4)
          (craves depression endive)
          (eats mutton ham)
          (eats wurst endive)
          (craves satisfaction potato)
(= (harmony entertainment) 3)
          (eats ham wonderbread)
          (eats yogurt wonderbread)
          (craves abrasion-4 ham)
          (eats cherry marzipan)
(= (locale wurst) 0)
(= (locale cherry) 4)
(= (harmony excitement) 3)
(= (harmony achievement) 2)
(= (locale endive) 4)
          (eats marzipan mutton)
          (craves loneliness-3 ham)
          (craves jealousy-2 wonderbread)
          (craves achievement endive)

          (eats haroset turkey)
(= (harmony love) 3)
(= (harmony intoxication) 3)
          (eats arugula potato)
(= (locale haroset) 2)
          (eats shrimp turkey)
          (eats haroset marzipan)
          (craves satiety cherry)

          (eats rice marzipan)
          (craves entertainment wurst)
          (eats wonderbread arugula)
          (eats turkey shrimp)
(= (locale turkey) 1)
(= (harmony satiety) 1)
          (craves loneliness potato)
          (craves anxiety marzipan)
          (craves excitement papaya)
          (eats onion shrimp)
          (eats arugula wonderbread)
          (craves laceration-8 haroset)
          (craves boils shrimp)
          (craves rest ham)

(= (locale rice) 4)
          (eats onion marzipan)

          (craves depression-7 haroset)
          (eats cherry endive)
          (craves jealousy rice)
          (eats mutton marzipan)
          (craves hangover papaya))
   (:goal (and (craves abrasion wonderbread))))
