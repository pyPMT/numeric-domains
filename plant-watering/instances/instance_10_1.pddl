;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10_1)
  (:domain mt-plant-watering-constrained)
  (:objects
    tap1 - tap
	agent1 - agent
	plant10 plant9 plant2 plant3 plant1 plant8 plant6 plant5 plant7 plant4 - plant
  )

  (:init
    (= (max_int) 200)
	(= (maxx) 10)
	(= (minx) 1)
	(= (maxy) 10)
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
	(= (x agent1) 5)
	(= (y agent1) 1)
	(= (x plant10) 9)
	(= (y plant10) 9)
	(= (x plant1) 5)
	(= (y plant1) 5)
	(= (x plant3) 8)
	(= (y plant3) 8)
	(= (x plant2) 4)
	(= (y plant2) 4)
	(= (x plant8) 5)
	(= (y plant8) 5)
	(= (x plant6) 1)
	(= (y plant6) 1)
	(= (x plant4) 5)
	(= (y plant4) 5)
	(= (x plant7) 1)
	(= (y plant7) 1)
	(= (x tap1) 8)
	(= (y tap1) 8)
	(= (x plant5) 1)
	(= (y plant5) 1)
	(= (x plant9) 9)
	(= (y plant9) 9)
  )

  (:goal (and 
    (= (poured plant1) 3)
	(= (poured plant2) 1)
	(= (poured plant3) 8)
	(= (poured plant4) 10)
	(= (poured plant5) 1)
	(= (poured plant6) 8)
	(= (poured plant7) 8)
	(= (poured plant8) 1)
	(= (poured plant9) 9)
	(= (poured plant10) 3)
	(= (total_poured) (+ (+ (+ (+ (+ (+ (+ (+ (+ (poured plant1) (poured plant2)) (poured plant3)) (poured plant4)) (poured plant5)) (poured plant6)) (poured plant7)) (poured plant8)) (poured plant9)) (poured plant10)) )
  ))

  
  

  
)
