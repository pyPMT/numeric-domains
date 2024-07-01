;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_17_1)
  (:domain mt-plant-watering-constrained)
  (:objects
    tap1 - tap
	agent1 - agent
	plant12 plant10 plant20 plant8 plant21 plant27 plant5 plant7 plant13 plant22 plant3 plant9 plant24 plant4 plant25 plant17 plant19 plant1 plant14 plant11 plant16 plant23 plant6 plant2 plant26 plant15 plant28 plant18 - plant
  )

  (:init
    (= (max_int) 560)
	(= (maxx) 17)
	(= (minx) 1)
	(= (maxy) 17)
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
	(= (x agent1) 15)
	(= (y agent1) 7)
	(= (x plant12) 1)
	(= (y plant12) 1)
	(= (x plant10) 10)
	(= (y plant10) 10)
	(= (x plant20) 14)
	(= (y plant20) 14)
	(= (x plant8) 14)
	(= (y plant8) 14)
	(= (x plant21) 15)
	(= (y plant21) 15)
	(= (x plant27) 1)
	(= (y plant27) 1)
	(= (x plant5) 17)
	(= (y plant5) 17)
	(= (x plant7) 13)
	(= (y plant7) 13)
	(= (x plant13) 17)
	(= (y plant13) 17)
	(= (x plant22) 4)
	(= (y plant22) 4)
	(= (x plant3) 4)
	(= (y plant3) 4)
	(= (x plant9) 7)
	(= (y plant9) 7)
	(= (x plant24) 6)
	(= (y plant24) 6)
	(= (x plant4) 8)
	(= (y plant4) 8)
	(= (x plant25) 12)
	(= (y plant25) 12)
	(= (x plant17) 3)
	(= (y plant17) 3)
	(= (x plant19) 2)
	(= (y plant19) 2)
	(= (x plant1) 10)
	(= (y plant1) 10)
	(= (x plant14) 16)
	(= (y plant14) 16)
	(= (x plant15) 3)
	(= (y plant15) 3)
	(= (x plant16) 17)
	(= (y plant16) 17)
	(= (x plant23) 16)
	(= (y plant23) 16)
	(= (x tap1) 12)
	(= (y tap1) 12)
	(= (x plant6) 3)
	(= (y plant6) 3)
	(= (x plant2) 15)
	(= (y plant2) 15)
	(= (x plant26) 3)
	(= (y plant26) 3)
	(= (x plant11) 3)
	(= (y plant11) 3)
	(= (x plant28) 13)
	(= (y plant28) 13)
	(= (x plant18) 16)
	(= (y plant18) 16)
  )

  (:goal (and 
    (= (poured plant1) 7)
	(= (poured plant2) 9)
	(= (poured plant3) 5)
	(= (poured plant4) 5)
	(= (poured plant5) 6)
	(= (poured plant6) 8)
	(= (poured plant7) 1)
	(= (poured plant8) 6)
	(= (poured plant9) 1)
	(= (poured plant10) 5)
	(= (poured plant11) 6)
	(= (poured plant12) 8)
	(= (poured plant13) 7)
	(= (poured plant14) 3)
	(= (poured plant15) 2)
	(= (poured plant16) 8)
	(= (poured plant17) 8)
	(= (poured plant18) 3)
	(= (poured plant19) 10)
	(= (poured plant20) 6)
	(= (poured plant21) 9)
	(= (poured plant22) 9)
	(= (poured plant23) 10)
	(= (poured plant24) 6)
	(= (poured plant25) 5)
	(= (poured plant26) 1)
	(= (poured plant27) 7)
	(= (poured plant28) 4)
	(= (total_poured) (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (poured plant1) (poured plant2)) (poured plant3)) (poured plant4)) (poured plant5)) (poured plant6)) (poured plant7)) (poured plant8)) (poured plant9)) (poured plant10)) (poured plant11)) (poured plant12)) (poured plant13)) (poured plant14)) (poured plant15)) (poured plant16)) (poured plant17)) (poured plant18)) (poured plant19)) (poured plant20)) (poured plant21)) (poured plant22)) (poured plant23)) (poured plant24)) (poured plant25)) (poured plant26)) (poured plant27)) (poured plant28)) )
  ))

  
  

  
)
