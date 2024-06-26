;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_19_2)
  (:domain mt-plant-watering-constrained)
  (:objects
    tap1 - tap
	agent1 - agent
	plant12 plant10 plant20 plant8 plant21 plant27 plant5 plant7 plant13 plant22 plant36 plant35 plant3 plant9 plant24 plant33 plant34 plant4 plant25 plant17 plant19 plant31 plant1 plant30 plant14 plant11 plant16 plant23 plant6 plant2 plant29 plant32 plant26 plant15 plant28 plant18 - plant
  )

  (:init
    (= (max_int) 720)
	(= (maxx) 19)
	(= (minx) 1)
	(= (maxy) 19)
	(= (miny) 1)
	(= (carrying) 0)
	(= (total_poured) 0)
	(= (total_loaded) 0)
	(= (total-cost) 0)
	(= (poured plant1) 0)
	(= (poured plant2) 0)
	(= (poured plant3) 0)
	(= (poured plant4) 0)
	(= (poured plant5) 0)
	(= (poured plant6) 0)
	(= (poured plant7) 0)
	(= (poured plant8) 0)
	(= (poured plant9) 0)
	(= (poured plant10) 0)
	(= (poured plant11) 0)
	(= (poured plant12) 0)
	(= (poured plant13) 0)
	(= (poured plant14) 0)
	(= (poured plant15) 0)
	(= (poured plant16) 0)
	(= (poured plant17) 0)
	(= (poured plant18) 0)
	(= (poured plant19) 0)
	(= (poured plant20) 0)
	(= (poured plant21) 0)
	(= (poured plant22) 0)
	(= (poured plant23) 0)
	(= (poured plant24) 0)
	(= (poured plant25) 0)
	(= (poured plant26) 0)
	(= (poured plant27) 0)
	(= (poured plant28) 0)
	(= (poured plant29) 0)
	(= (poured plant30) 0)
	(= (poured plant31) 0)
	(= (poured plant32) 0)
	(= (poured plant33) 0)
	(= (poured plant34) 0)
	(= (poured plant35) 0)
	(= (poured plant36) 0)
	(= (x agent1) 17)
	(= (y agent1) 13)
	(= (x plant12) 6)
	(= (y plant12) 6)
	(= (x plant10) 10)
	(= (y plant10) 10)
	(= (x plant20) 14)
	(= (y plant20) 14)
	(= (x plant28) 13)
	(= (y plant28) 13)
	(= (x plant8) 4)
	(= (y plant8) 4)
	(= (x plant21) 11)
	(= (y plant21) 11)
	(= (x plant27) 18)
	(= (y plant27) 18)
	(= (x plant5) 4)
	(= (y plant5) 4)
	(= (x plant7) 8)
	(= (y plant7) 8)
	(= (x plant13) 12)
	(= (y plant13) 12)
	(= (x plant22) 6)
	(= (y plant22) 6)
	(= (x plant3) 9)
	(= (y plant3) 9)
	(= (x plant9) 19)
	(= (y plant9) 19)
	(= (x plant24) 6)
	(= (y plant24) 6)
	(= (x plant34) 12)
	(= (y plant34) 12)
	(= (x plant4) 11)
	(= (y plant4) 11)
	(= (x plant25) 9)
	(= (y plant25) 9)
	(= (x plant1) 2)
	(= (y plant1) 2)
	(= (x plant17) 12)
	(= (y plant17) 12)
	(= (x plant19) 10)
	(= (y plant19) 10)
	(= (x plant31) 14)
	(= (y plant31) 14)
	(= (x plant33) 13)
	(= (y plant33) 13)
	(= (x plant36) 10)
	(= (y plant36) 10)
	(= (x plant14) 17)
	(= (y plant14) 17)
	(= (x plant15) 5)
	(= (y plant15) 5)
	(= (x plant35) 16)
	(= (y plant35) 16)
	(= (x plant23) 4)
	(= (y plant23) 4)
	(= (x tap1) 8)
	(= (y tap1) 8)
	(= (x plant30) 7)
	(= (y plant30) 7)
	(= (x plant6) 2)
	(= (y plant6) 2)
	(= (x plant2) 17)
	(= (y plant2) 17)
	(= (x plant29) 17)
	(= (y plant29) 17)
	(= (x plant32) 2)
	(= (y plant32) 2)
	(= (x plant26) 7)
	(= (y plant26) 7)
	(= (x plant11) 3)
	(= (y plant11) 3)
	(= (x plant16) 8)
	(= (y plant16) 8)
	(= (x plant18) 18)
	(= (y plant18) 18)
  )

  (:goal (and 
    (= (poured plant1) 3)
	(= (poured plant2) 4)
	(= (poured plant3) 6)
	(= (poured plant4) 7)
	(= (poured plant5) 10)
	(= (poured plant6) 6)
	(= (poured plant7) 2)
	(= (poured plant8) 7)
	(= (poured plant9) 1)
	(= (poured plant10) 10)
	(= (poured plant11) 1)
	(= (poured plant12) 8)
	(= (poured plant13) 1)
	(= (poured plant14) 4)
	(= (poured plant15) 7)
	(= (poured plant16) 8)
	(= (poured plant17) 9)
	(= (poured plant18) 2)
	(= (poured plant19) 8)
	(= (poured plant20) 4)
	(= (poured plant21) 1)
	(= (poured plant22) 1)
	(= (poured plant23) 2)
	(= (poured plant24) 2)
	(= (poured plant25) 6)
	(= (poured plant26) 7)
	(= (poured plant27) 6)
	(= (poured plant28) 6)
	(= (poured plant29) 5)
	(= (poured plant30) 3)
	(= (poured plant31) 10)
	(= (poured plant32) 1)
	(= (poured plant33) 3)
	(= (poured plant34) 8)
	(= (poured plant35) 4)
	(= (poured plant36) 9)
	(= (total_poured) (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (poured plant1) (poured plant2)) (poured plant3)) (poured plant4)) (poured plant5)) (poured plant6)) (poured plant7)) (poured plant8)) (poured plant9)) (poured plant10)) (poured plant11)) (poured plant12)) (poured plant13)) (poured plant14)) (poured plant15)) (poured plant16)) (poured plant17)) (poured plant18)) (poured plant19)) (poured plant20)) (poured plant21)) (poured plant22)) (poured plant23)) (poured plant24)) (poured plant25)) (poured plant26)) (poured plant27)) (poured plant28)) (poured plant29)) (poured plant30)) (poured plant31)) (poured plant32)) (poured plant33)) (poured plant34)) (poured plant35)) (poured plant36)) )
  ))

  
  

  
)
