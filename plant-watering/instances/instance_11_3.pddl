;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11_3)
  (:domain mt-plant-watering-constrained)
  (:objects
    tap1 - tap
	agent1 - agent
	plant12 plant10 plant1 plant8 plant5 plant7 plant3 plant9 plant6 plant11 plant4 plant2 - plant
  )

  (:init
    (= (max_int) 240)
	(= (maxx) 11)
	(= (minx) 1)
	(= (maxy) 11)
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
	(= (x agent1) 8)
	(= (y agent1) 9)
	(= (x plant12) 6)
	(= (y plant12) 6)
	(= (x plant10) 5)
	(= (y plant10) 5)
	(= (x plant1) 6)
	(= (y plant1) 6)
	(= (x plant8) 10)
	(= (y plant8) 10)
	(= (x plant5) 11)
	(= (y plant5) 11)
	(= (x plant7) 2)
	(= (y plant7) 2)
	(= (x plant4) 2)
	(= (y plant4) 2)
	(= (x plant3) 11)
	(= (y plant3) 11)
	(= (x plant9) 6)
	(= (y plant9) 6)
	(= (x plant6) 7)
	(= (y plant6) 7)
	(= (x plant11) 11)
	(= (y plant11) 11)
	(= (x tap1) 5)
	(= (y tap1) 5)
	(= (x plant2) 6)
	(= (y plant2) 6)
  )

  (:goal (and 
    (= (poured plant1) 2)
	(= (poured plant2) 5)
	(= (poured plant3) 9)
	(= (poured plant4) 2)
	(= (poured plant5) 7)
	(= (poured plant6) 2)
	(= (poured plant7) 6)
	(= (poured plant8) 5)
	(= (poured plant9) 3)
	(= (poured plant10) 2)
	(= (poured plant11) 4)
	(= (poured plant12) 4)
	(= (total_poured) (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ (poured plant1) (poured plant2)) (poured plant3)) (poured plant4)) (poured plant5)) (poured plant6)) (poured plant7)) (poured plant8)) (poured plant9)) (poured plant10)) (poured plant11)) (poured plant12)) )
  ))

  
  

  
)
