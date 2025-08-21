(define (domain arm_ipar_pancake_problem-domain)
 (:requirements :strips :equality :numeric-fluents :action-costs)
 (:functions 
             (pancake_0)
             (pancake_1)
             (pancake_2)
             (pancake_3)
             (pancake_4)
             (pancake_5)
             (pancake_6)
             (pancake_7)
             (pancake_8)
             (pancake_9)
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
 (:action flip_5
  :parameters ()
  :effect (and (assign (pancake_0) (pancake_5)) (assign (pancake_1) (pancake_4)) (assign (pancake_2) (pancake_3)) (assign (pancake_3) (pancake_2)) (assign (pancake_4) (pancake_1)) (assign (pancake_5) (pancake_0)) (increase (total-cost) 1)))
 (:action flip_6
  :parameters ()
  :effect (and (assign (pancake_0) (pancake_6)) (assign (pancake_1) (pancake_5)) (assign (pancake_2) (pancake_4)) (assign (pancake_3) (pancake_3)) (assign (pancake_4) (pancake_2)) (assign (pancake_5) (pancake_1)) (assign (pancake_6) (pancake_0)) (increase (total-cost) 1)))
 (:action flip_7
  :parameters ()
  :effect (and (assign (pancake_0) (pancake_7)) (assign (pancake_1) (pancake_6)) (assign (pancake_2) (pancake_5)) (assign (pancake_3) (pancake_4)) (assign (pancake_4) (pancake_3)) (assign (pancake_5) (pancake_2)) (assign (pancake_6) (pancake_1)) (assign (pancake_7) (pancake_0)) (increase (total-cost) 1)))
 (:action flip_8
  :parameters ()
  :effect (and (assign (pancake_0) (pancake_8)) (assign (pancake_1) (pancake_7)) (assign (pancake_2) (pancake_6)) (assign (pancake_3) (pancake_5)) (assign (pancake_4) (pancake_4)) (assign (pancake_5) (pancake_3)) (assign (pancake_6) (pancake_2)) (assign (pancake_7) (pancake_1)) (assign (pancake_8) (pancake_0)) (increase (total-cost) 1)))
 (:action flip_9
  :parameters ()
  :effect (and (assign (pancake_0) (pancake_9)) (assign (pancake_1) (pancake_8)) (assign (pancake_2) (pancake_7)) (assign (pancake_3) (pancake_6)) (assign (pancake_4) (pancake_5)) (assign (pancake_5) (pancake_4)) (assign (pancake_6) (pancake_3)) (assign (pancake_7) (pancake_2)) (assign (pancake_8) (pancake_1)) (assign (pancake_9) (pancake_0)) (increase (total-cost) 1)))
)
