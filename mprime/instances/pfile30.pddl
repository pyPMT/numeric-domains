(define (problem mprime-x-30)
   (:domain mystery-prime-typed)
   (:objects turkey cucumber baguette beef muffin hotdog mutton
             chicken hamburger yogurt scallop rice guava - food
             triumph intoxication expectation excitement achievement
             - pleasure
             prostatitis dread laceration anxiety boils sciatica abrasion
             - pain
)
   (:init
(eats hotdog cucumber)
(= (locale baguette) 6)
(= (locale hamburger) 10)
          (eats muffin baguette)
          (eats baguette muffin)
          (eats rice scallop)
          (craves prostatitis cucumber)
          (craves intoxication beef)

(= (locale muffin) 8)
          (eats guava yogurt)
          (eats turkey chicken)
          (craves sciatica yogurt)

          (craves excitement yogurt)
          (craves anxiety chicken)
          (eats turkey muffin)
          (eats beef hamburger)
          (eats baguette rice)
          (eats hamburger hotdog)
          (eats mutton chicken)
(= (harmony excitement) 3)
(= (harmony triumph) 1)
(= (locale guava) 8)
(= (locale hotdog) 12)
          (eats mutton hotdog)
          (eats chicken hotdog)
          (eats guava rice)

          (eats hotdog hamburger)
          (eats muffin turkey)
          (eats cucumber hotdog)
          (eats rice baguette)
          (eats beef baguette)
          (craves triumph turkey)

          (eats turkey cucumber)
          (eats baguette beef)
          (eats scallop yogurt)
          (eats hamburger beef)
          (eats beef hotdog)
(= (locale chicken) 3)


          (craves achievement guava)
(= (locale turkey) 4)
          (eats cucumber baguette)
          (eats chicken mutton)
          (eats baguette cucumber)


(= (harmony expectation) 3)
          (eats scallop rice)
(= (locale yogurt) 9)

          (eats chicken turkey)

          (craves dread baguette)

          (eats hotdog beef)
(= (harmony achievement) 1)
          (craves abrasion guava)

          (eats rice guava)
          (craves expectation hamburger)
          (eats cucumber turkey)

(= (harmony intoxication) 3)
          (eats yogurt guava)
          (eats hotdog chicken)
(= (locale cucumber) 10)
          (eats yogurt scallop)

(= (locale beef) 10)
(= (locale mutton) 1)
(= (locale scallop) 8)
(= (locale rice) 6)
          (craves laceration muffin)

          (eats hotdog mutton)
          (craves boils hamburger))
   (:goal (and (craves dread mutton)
               (craves boils mutton)
               (craves anxiety chicken))))
