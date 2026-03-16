;; Non-linear extension of the fo-farmland domain.
;; Based on: Li, D., Scala, E., Haslum, P., & Bogomolov, S. (2018, July).
;;           Effect-abstraction based relaxation for linear numeric planning.
;;           In Proceedings of the 27th International
;;           Joint Conference on Artificial Intelligence (pp. 4787-4793).
;;
;; NLNP extension: Transport cost depends on fleet size × fuel price.
;; Fuel price increases each time a car is hired (scarcity / demand pressure),
;; making the cost expression (* (num-of-cars) (fuel-price)) non-linear
;; as both fluents are dynamic.

(define (domain nlnp_farmland)
    (:requirements :strips :fluents :adl)
    (:types farm -object

    )
    (:predicates (adj ?f1 ?f2 - farm) (dummy))
    (:functions
        (x ?b - farm)
        (cost)
        (num-of-cars)
        (fuel-price)
    )

    ;; Move workers by car; cost depends on fleet size and current fuel price
    (:action move-by-car
        :parameters (?f1 ?f2 - farm)
        :precondition (and (not (= ?f1 ?f2)) (>= (x ?f1) (* 4 (num-of-cars))) (adj ?f1 ?f2) )
        :effect (and  (decrease (x ?f1) (* 4 (num-of-cars)))
                      (increase (x ?f2) (* 4 (num-of-cars)))
                      (increase (cost) (* (num-of-cars) (fuel-price)))
                )
    )

    (:action move-slow
         :parameters (?f1 ?f2 - farm)
         :precondition (and (not (= ?f1 ?f2)) (>= (x ?f1) 1) (adj ?f1 ?f2))
         :effect (and(decrease (x ?f1) 1) (increase (x ?f2) 1))
    )

    (:action hire-car
        :parameters ()
	:precondition ( and (not (dummy)))
        :effect (and  (increase (num-of-cars) 1)
                      (increase (fuel-price) 0.1))
    )
)
