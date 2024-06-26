;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_17_3)
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
	(= (x agent1) 16)
	(= (y agent1) 12)
	(= (x plant12) 14)
	(= (y plant12) 14)
	(= (x plant10) 7)
	(= (y plant10) 7)
	(= (x plant20) 13)
	(= (y plant20) 13)
	(= (x plant8) 15)
	(= (y plant8) 15)
	(= (x plant21) 6)
	(= (y plant21) 6)
	(= (x plant27) 11)
	(= (y plant27) 11)
	(= (x plant5) 2)
	(= (y plant5) 2)
	(= (x plant7) 4)
	(= (y plant7) 4)
	(= (x plant13) 5)
	(= (y plant13) 5)
	(= (x plant22) 15)
	(= (y plant22) 15)
	(= (x plant3) 1)
	(= (y plant3) 1)
	(= (x plant9) 3)
	(= (y plant9) 3)
	(= (x plant24) 13)
	(= (y plant24) 13)
	(= (x plant4) 4)
	(= (y plant4) 4)
	(= (x plant25) 16)
	(= (y plant25) 16)
	(= (x plant17) 10)
	(= (y plant17) 10)
	(= (x plant19) 14)
	(= (y plant19) 14)
	(= (x plant1) 16)
	(= (y plant1) 16)
	(= (x plant14) 7)
	(= (y plant14) 7)
	(= (x plant15) 16)
	(= (y plant15) 16)
	(= (x plant16) 10)
	(= (y plant16) 10)
	(= (x plant23) 15)
	(= (y plant23) 15)
	(= (x tap1) 17)
	(= (y tap1) 17)
	(= (x plant6) 10)
	(= (y plant6) 10)
	(= (x plant2) 12)
	(= (y plant2) 12)
	(= (x plant26) 5)
	(= (y plant26) 5)
	(= (x plant11) 4)
	(= (y plant11) 4)
	(= (x plant28) 3)
	(= (y plant28) 3)
	(= (x plant18) 2)
	(= (y plant18) 2)
  )

  (:goal (and 
    (= (poured plant1) 6)
	(= (poured plant2) 4)
	(= (poured plant3) 10)
	(= (poured plant4) 3)
	(= (poured plant5) 10)
	(= (poured plant6) 7)
	(= (poured plant7) 9)
	(= (poured plant8) 5)
	(= (poured plant9) 4)
	(= (poured plant10) 10)
	(= (poured plant11) 3)
	(= (poured plant12) 5)
	(= (poured plant13) 2)
	(= (poured plant14) 6)
	(= (poured plant15) 1)
	(= (poured plant16) 8)
	(= (poured plant17) 1)
	(= (poured plant18) 3)
	(= (poured plant19) 9)
	(= (poured plant20) 1)
	(= (poured plant21) 7)
	(= (poured plant22) 1)
	(= (poured plant23) 2)
	(= (poured plant24) 1)
	(= (poured plant25) 7)
	(= (poured plant26) 4)
	(= (poured plant27) 9)
	(= (poured plant28) 8)
	(= (total_poured) (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (poured plant1) (poured plant2)) (poured plant3)) (poured plant4)) (poured plant5)) (poured plant6)) (poured plant7)) (poured plant8)) (poured plant9)) (poured plant10)) (poured plant11)) (poured plant12)) (poured plant13)) (poured plant14)) (poured plant15)) (poured plant16)) (poured plant17)) (poured plant18)) (poured plant19)) (poured plant20)) (poured plant21)) (poured plant22)) (poured plant23)) (poured plant24)) (poured plant25)) (poured plant26)) (poured plant27)) (poured plant28)) )
  ))

  
  

  
)
