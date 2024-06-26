;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_18_3)
  (:domain mt-plant-watering-constrained)
  (:objects
    tap1 - tap
	agent1 - agent
	plant12 plant10 plant20 plant8 plant21 plant27 plant5 plant7 plant13 plant22 plant3 plant9 plant24 plant4 plant25 plant17 plant19 plant31 plant1 plant30 plant14 plant11 plant16 plant23 plant6 plant2 plant29 plant32 plant26 plant15 plant28 plant18 - plant
  )

  (:init
    (= (max_int) 640)
	(= (maxx) 18)
	(= (minx) 1)
	(= (maxy) 18)
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
	(= (x agent1) 18)
	(= (y agent1) 13)
	(= (x plant12) 15)
	(= (y plant12) 15)
	(= (x plant10) 13)
	(= (y plant10) 13)
	(= (x plant20) 3)
	(= (y plant20) 3)
	(= (x plant8) 10)
	(= (y plant8) 10)
	(= (x plant21) 13)
	(= (y plant21) 13)
	(= (x plant27) 12)
	(= (y plant27) 12)
	(= (x plant5) 3)
	(= (y plant5) 3)
	(= (x plant7) 10)
	(= (y plant7) 10)
	(= (x plant13) 6)
	(= (y plant13) 6)
	(= (x plant22) 17)
	(= (y plant22) 17)
	(= (x plant3) 5)
	(= (y plant3) 5)
	(= (x plant9) 9)
	(= (y plant9) 9)
	(= (x plant24) 7)
	(= (y plant24) 7)
	(= (x plant4) 14)
	(= (y plant4) 14)
	(= (x plant25) 8)
	(= (y plant25) 8)
	(= (x plant17) 14)
	(= (y plant17) 14)
	(= (x plant19) 2)
	(= (y plant19) 2)
	(= (x plant31) 17)
	(= (y plant31) 17)
	(= (x plant1) 7)
	(= (y plant1) 7)
	(= (x plant30) 11)
	(= (y plant30) 11)
	(= (x plant14) 9)
	(= (y plant14) 9)
	(= (x plant15) 10)
	(= (y plant15) 10)
	(= (x plant16) 14)
	(= (y plant16) 14)
	(= (x plant23) 10)
	(= (y plant23) 10)
	(= (x tap1) 15)
	(= (y tap1) 15)
	(= (x plant6) 6)
	(= (y plant6) 6)
	(= (x plant2) 4)
	(= (y plant2) 4)
	(= (x plant29) 3)
	(= (y plant29) 3)
	(= (x plant32) 7)
	(= (y plant32) 7)
	(= (x plant26) 17)
	(= (y plant26) 17)
	(= (x plant11) 16)
	(= (y plant11) 16)
	(= (x plant28) 8)
	(= (y plant28) 8)
	(= (x plant18) 18)
	(= (y plant18) 18)
  )

  (:goal (and 
    (= (poured plant1) 2)
	(= (poured plant2) 8)
	(= (poured plant3) 7)
	(= (poured plant4) 7)
	(= (poured plant5) 8)
	(= (poured plant6) 8)
	(= (poured plant7) 8)
	(= (poured plant8) 2)
	(= (poured plant9) 2)
	(= (poured plant10) 8)
	(= (poured plant11) 3)
	(= (poured plant12) 8)
	(= (poured plant13) 6)
	(= (poured plant14) 10)
	(= (poured plant15) 1)
	(= (poured plant16) 4)
	(= (poured plant17) 7)
	(= (poured plant18) 8)
	(= (poured plant19) 2)
	(= (poured plant20) 4)
	(= (poured plant21) 3)
	(= (poured plant22) 8)
	(= (poured plant23) 5)
	(= (poured plant24) 9)
	(= (poured plant25) 10)
	(= (poured plant26) 4)
	(= (poured plant27) 10)
	(= (poured plant28) 5)
	(= (poured plant29) 3)
	(= (poured plant30) 2)
	(= (poured plant31) 7)
	(= (poured plant32) 9)
	(= (total_poured) (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (poured plant1) (poured plant2)) (poured plant3)) (poured plant4)) (poured plant5)) (poured plant6)) (poured plant7)) (poured plant8)) (poured plant9)) (poured plant10)) (poured plant11)) (poured plant12)) (poured plant13)) (poured plant14)) (poured plant15)) (poured plant16)) (poured plant17)) (poured plant18)) (poured plant19)) (poured plant20)) (poured plant21)) (poured plant22)) (poured plant23)) (poured plant24)) (poured plant25)) (poured plant26)) (poured plant27)) (poured plant28)) (poured plant29)) (poured plant30)) (poured plant31)) (poured plant32)) )
  ))

  
  

  
)
