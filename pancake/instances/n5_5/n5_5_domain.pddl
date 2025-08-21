(define (domain arm_ipar_pancake_problem-domain)
 (:requirements :strips :equality :numeric-fluents :action-costs)
 (:functions 
             (pancake_0)
             (pancake_1)
             (pancake_2)
             (pancake_3)
             (pancake_4)
             (total-cost)
 )
 (:action flip_1
  :parameters ()
  :effect (and (assign (pancake_0) (pancake_1)) (assign (pancake_1) (pancake_0)) (increase (total-cost) 1)))
 (:action flip_2
  :parameters ()
  :effect (and (assign (pancake_0) (pancake_2)) (assign (pancake_1) (pancake_1)) (assign (pancake_2) (pancake_0)) (increase (total-cost) 1)))
 (:action flip_3
  :parameters ()
  :effect (and (assign (pancake_0) (pancake_3)) (assign (pancake_1) (pancake_2)) (assign (pancake_2) (pancake_1)) (assign (pancake_3) (pancake_0)) (increase (total-cost) 1)))
 (:action flip_4
  :parameters ()
  :effect (and (assign (pancake_0) (pancake_4)) (assign (pancake_1) (pancake_3)) (assign (pancake_2) (pancake_2)) (assign (pancake_3) (pancake_1)) (assign (pancake_4) (pancake_0)) (increase (total-cost) 1)))
)
