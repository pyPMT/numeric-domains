;; Non-linear extension of the fo-sailing domain.
;; Based on: Li, D., Scala, E., Haslum, P., & Bogomolov, S. (2018, July).
;;           Effect-abstraction based relaxation for linear numeric planning.
;;           In Proceedings of the 27th International
;;           Joint Conference on Artificial Intelligence (pp. 4787-4793).
;;
;; NLNP extension: Boats consume fuel proportional to velocity squared,
;; modelling hydrodynamic drag (drag force ~ v^2). Faster sailing saves time
;; but burns fuel quadratically, forcing the planner to balance speed vs fuel.

(define (domain nlnp_fo_sailing)
    (:types boat - object person - object)
    (:predicates
        (saved ?t - person)
	(dummy)
    )
    (:functions
        (x ?b - boat)
        (y ?b - boat)
	(v ?b - boat)
        (d ?t - person)
        (fuel ?b - boat)
    )

    (:action go_north_east
         :parameters (?b - boat)
	 :precondition (and(not(dummy)) (>= (fuel ?b) (* (v ?b) (v ?b))))
         :effect (and (increase (x ?b) (* (v ?b) 1.5))
		      (increase (y ?b) (* (v ?b) 1.5))
                      (decrease (fuel ?b) (* (v ?b) (v ?b)))
                 )
    )

    (:action go_north_west
         :parameters (?b - boat)
	 :precondition (and(not(dummy)) (>= (fuel ?b) (* (v ?b) (v ?b))))
         :effect (and (decrease (x ?b) (* (v ?b) 1.5))
		      (increase (y ?b) (* (v ?b) 1.5))
                      (decrease (fuel ?b) (* (v ?b) (v ?b)))
                 )
    )
    (:action go_est
         :parameters (?b - boat)
	 :precondition (and(not(dummy)) (>= (fuel ?b) (* (v ?b) (v ?b))))
         :effect (and (increase (x ?b) (* (v ?b) 3))
                      (decrease (fuel ?b) (* (v ?b) (v ?b)))
                 )
    )
    (:action go_west
         :parameters (?b - boat)
	 :precondition (and(not(dummy)) (>= (fuel ?b) (* (v ?b) (v ?b))))
         :effect (and (decrease (x ?b) (* (v ?b) 3))
                      (decrease (fuel ?b) (* (v ?b) (v ?b)))
                 )
    )
    (:action go_south_west
         :parameters(?b - boat)
	 :precondition (and(not(dummy)) (>= (fuel ?b) (* (v ?b) (v ?b))))
         :effect (and (increase (x ?b) (* (v ?b) 2))
		      (decrease (y ?b) (* (v ?b) 2))
                      (decrease (fuel ?b) (* (v ?b) (v ?b)))
                 )
    )
    (:action go_south_east
         :parameters(?b - boat)
	:precondition (and(not(dummy)) (>= (fuel ?b) (* (v ?b) (v ?b))))
         :effect (and (decrease (x ?b) (* (v ?b) 2))
                      (decrease (y ?b) (* (v ?b) 2))
                      (decrease (fuel ?b) (* (v ?b) (v ?b)))
                 )
    )
    (:action go_south
         :parameters(?b - boat)
	:precondition (and(not(dummy)) (>= (fuel ?b) (* (v ?b) (v ?b))))
         :effect (and (decrease (y ?b) (* (v ?b) 2))
                      (decrease (fuel ?b) (* (v ?b) (v ?b)))
                 )
    )

    (:action accelerate
	 :parameters(?b - boat)
         :precondition (and (<= (+ (v ?b) 1) 3))
         :effect (and (increase (v ?b) 1))
    )

    (:action decelerate
	 :parameters(?b - boat)
	 :precondition (and (>= (- (v ?b) 1) 1))
         :effect (and (decrease (v ?b) 1))
    )

    (:action save_person
        :parameters(?b - boat ?t - person)
        :precondition ( and  (>= (+ (x ?b) (y ?b)) (d ?t))
                             (>= (- (y ?b) (x ?b)) (d ?t))
                             (<= (+ (x ?b) (y ?b)) (+ (d ?t) 25))
                             (<= (- (y ?b) (x ?b)) (+ (d ?t) 25))
                             (<= (v ?b) 1)
                      )
        :effect (and(saved ?t))
    )

)
