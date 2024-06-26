;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6_2)
  (:domain mt-plant-watering-constrained)
  (:objects
    tap1 - tap
	agent1 - agent
	plant3 plant1 plant4 plant2 - plant
  )

  (:init
    (= (max_int) 80)
	(= (maxx) 6)
	(= (minx) 1)
	(= (maxy) 6)
	(= (miny) 1)
	(= (carrying) 0)
	(= (total_poured) 0)
	(= (total_loaded) 0)
	(= (total-cost) 0)
	(= (poured plant1) 0)
	(= (poured plant2) 0)
	(= (poured plant3) 0)
	(= (poured plant4) 0)
	(= (x agent1) 6)
	(= (y agent1) 5)
	(= (x plant2) 1)
	(= (y plant2) 1)
	(= (x plant3) 3)
	(= (y plant3) 3)
	(= (x tap1) 2)
	(= (y tap1) 2)
	(= (x plant4) 2)
	(= (y plant4) 2)
	(= (x plant1) 2)
	(= (y plant1) 2)
  )

  (:goal (and 
    (= (poured plant1) 1)
	(= (poured plant2) 6)
	(= (poured plant3) 9)
	(= (poured plant4) 10)
	(= (total_poured) (+ (+ (+ (poured plant1) (poured plant2)) (poured plant3)) (poured plant4)) )
  ))

  
  

  
)
