;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5_2)
  (:domain mt-plant-watering-constrained)
  (:objects
    tap1 - tap
	agent1 - agent
	plant3 plant1 plant4 plant2 - plant
  )

  (:init
    (= (max_int) 80)
	(= (maxx) 5)
	(= (minx) 1)
	(= (maxy) 5)
	(= (miny) 1)
	(= (carrying) 0)
	(= (total_poured) 0)
	(= (total_loaded) 0)
	(= (total-cost) 0)
	(= (poured plant1) 0)
	(= (poured plant2) 0)
	(= (poured plant3) 0)
	(= (poured plant4) 0)
	(= (x agent1) 5)
	(= (y agent1) 1)
	(= (x plant2) 4)
	(= (y plant2) 4)
	(= (x plant3) 5)
	(= (y plant3) 5)
	(= (x tap1) 3)
	(= (y tap1) 3)
	(= (x plant4) 4)
	(= (y plant4) 4)
	(= (x plant1) 5)
	(= (y plant1) 5)
  )

  (:goal (and 
    (= (poured plant1) 5)
	(= (poured plant2) 4)
	(= (poured plant3) 9)
	(= (poured plant4) 2)
	(= (total_poured) (+ (+ (+ (poured plant1) (poured plant2)) (poured plant3)) (poured plant4)) )
  ))

  
  

  
)
