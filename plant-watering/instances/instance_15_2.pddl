;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15_2)
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
	(= (x agent1) 7)
	(= (y agent1) 13)
	(= (x plant12) 5)
	(= (y plant12) 5)
	(= (x plant10) 5)
	(= (y plant10) 5)
	(= (x plant20) 7)
	(= (y plant20) 7)
	(= (x plant8) 8)
	(= (y plant8) 8)
	(= (x plant21) 2)
	(= (y plant21) 2)
	(= (x plant5) 5)
	(= (y plant5) 5)
	(= (x plant7) 6)
	(= (y plant7) 6)
	(= (x plant13) 11)
	(= (y plant13) 11)
	(= (x plant22) 8)
	(= (y plant22) 8)
	(= (x plant3) 7)
	(= (y plant3) 7)
	(= (x plant9) 9)
	(= (y plant9) 9)
	(= (x tap1) 1)
	(= (y tap1) 1)
	(= (x plant17) 8)
	(= (y plant17) 8)
	(= (x plant19) 11)
	(= (y plant19) 11)
	(= (x plant1) 13)
	(= (y plant1) 13)
	(= (x plant14) 7)
	(= (y plant14) 7)
	(= (x plant15) 9)
	(= (y plant15) 9)
	(= (x plant16) 1)
	(= (y plant16) 1)
	(= (x plant4) 10)
	(= (y plant4) 10)
	(= (x plant6) 15)
	(= (y plant6) 15)
	(= (x plant2) 6)
	(= (y plant2) 6)
	(= (x plant11) 3)
	(= (y plant11) 3)
	(= (x plant18) 15)
	(= (y plant18) 15)
  )

  (:goal (and 
    (= (poured plant1) 5)
	(= (poured plant2) 10)
	(= (poured plant3) 5)
	(= (poured plant4) 9)
	(= (poured plant5) 5)
	(= (poured plant6) 6)
	(= (poured plant7) 10)
	(= (poured plant8) 10)
	(= (poured plant9) 10)
	(= (poured plant10) 1)
	(= (poured plant11) 6)
	(= (poured plant12) 6)
	(= (poured plant13) 6)
	(= (poured plant14) 3)
	(= (poured plant15) 3)
	(= (poured plant16) 2)
	(= (poured plant17) 2)
	(= (poured plant18) 2)
	(= (poured plant19) 5)
	(= (poured plant20) 3)
	(= (poured plant21) 2)
	(= (poured plant22) 4)
	(= (total_poured) (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (poured plant1) (poured plant2)) (poured plant3)) (poured plant4)) (poured plant5)) (poured plant6)) (poured plant7)) (poured plant8)) (poured plant9)) (poured plant10)) (poured plant11)) (poured plant12)) (poured plant13)) (poured plant14)) (poured plant15)) (poured plant16)) (poured plant17)) (poured plant18)) (poured plant19)) (poured plant20)) (poured plant21)) (poured plant22)) )
  ))

  
  

  
)
