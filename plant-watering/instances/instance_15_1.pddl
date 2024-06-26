;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15_1)
  (:domain mt-plant-watering-constrained)
  (:objects
    tap1 - tap
	agent1 - agent
	plant12 plant10 plant20 plant8 plant21 plant5 plant7 plant13 plant22 plant3 plant9 plant4 plant17 plant19 plant1 plant14 plant11 plant16 plant6 plant2 plant15 plant18 - plant
  )

  (:init
    (= (max_int) 440)
	(= (maxx) 15)
	(= (minx) 1)
	(= (maxy) 15)
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
	(= (x agent1) 12)
	(= (y agent1) 10)
	(= (x plant12) 11)
	(= (y plant12) 11)
	(= (x plant10) 4)
	(= (y plant10) 4)
	(= (x plant20) 13)
	(= (y plant20) 13)
	(= (x plant8) 5)
	(= (y plant8) 5)
	(= (x plant21) 11)
	(= (y plant21) 11)
	(= (x plant5) 7)
	(= (y plant5) 7)
	(= (x plant7) 2)
	(= (y plant7) 2)
	(= (x plant13) 6)
	(= (y plant13) 6)
	(= (x plant22) 10)
	(= (y plant22) 10)
	(= (x plant3) 10)
	(= (y plant3) 10)
	(= (x plant9) 3)
	(= (y plant9) 3)
	(= (x tap1) 8)
	(= (y tap1) 8)
	(= (x plant17) 11)
	(= (y plant17) 11)
	(= (x plant19) 12)
	(= (y plant19) 12)
	(= (x plant1) 13)
	(= (y plant1) 13)
	(= (x plant14) 2)
	(= (y plant14) 2)
	(= (x plant15) 1)
	(= (y plant15) 1)
	(= (x plant16) 15)
	(= (y plant16) 15)
	(= (x plant4) 4)
	(= (y plant4) 4)
	(= (x plant6) 2)
	(= (y plant6) 2)
	(= (x plant2) 3)
	(= (y plant2) 3)
	(= (x plant11) 4)
	(= (y plant11) 4)
	(= (x plant18) 13)
	(= (y plant18) 13)
  )

  (:goal (and 
    (= (poured plant1) 2)
	(= (poured plant2) 4)
	(= (poured plant3) 3)
	(= (poured plant4) 1)
	(= (poured plant5) 2)
	(= (poured plant6) 1)
	(= (poured plant7) 5)
	(= (poured plant8) 1)
	(= (poured plant9) 6)
	(= (poured plant10) 2)
	(= (poured plant11) 2)
	(= (poured plant12) 6)
	(= (poured plant13) 9)
	(= (poured plant14) 3)
	(= (poured plant15) 3)
	(= (poured plant16) 5)
	(= (poured plant17) 6)
	(= (poured plant18) 9)
	(= (poured plant19) 1)
	(= (poured plant20) 3)
	(= (poured plant21) 3)
	(= (poured plant22) 2)
	(= (total_poured) (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (poured plant1) (poured plant2)) (poured plant3)) (poured plant4)) (poured plant5)) (poured plant6)) (poured plant7)) (poured plant8)) (poured plant9)) (poured plant10)) (poured plant11)) (poured plant12)) (poured plant13)) (poured plant14)) (poured plant15)) (poured plant16)) (poured plant17)) (poured plant18)) (poured plant19)) (poured plant20)) (poured plant21)) (poured plant22)) )
  ))

  
  

  
)
