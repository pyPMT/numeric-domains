;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_24_2)
  (:domain fn-counters)
  (:objects
    c0 c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20 c21 c22 c23 - counter
  )

  (:init
    (= (max_int) 48)
	(= (value c0) 29)
	(= (value c1) 42)
	(= (value c2) 2)
	(= (value c3) 18)
	(= (value c4) 12)
	(= (value c5) 23)
	(= (value c6) 4)
	(= (value c7) 0)
	(= (value c8) 36)
	(= (value c9) 18)
	(= (value c10) 17)
	(= (value c11) 14)
	(= (value c12) 29)
	(= (value c13) 39)
	(= (value c14) 41)
	(= (value c15) 8)
	(= (value c16) 29)
	(= (value c17) 8)
	(= (value c18) 20)
	(= (value c19) 37)
	(= (value c20) 0)
	(= (value c21) 13)
	(= (value c22) 32)
	(= (value c23) 24)
  )

  (:goal (and 
(<= (+ (value c0) 1) (value c1))
(<= (+ (value c1) 1) (value c2))
(<= (+ (value c2) 1) (value c3))
(<= (+ (value c3) 1) (value c4))
(<= (+ (value c4) 1) (value c5))
(<= (+ (value c5) 1) (value c6))
(<= (+ (value c6) 1) (value c7))
(<= (+ (value c7) 1) (value c8))
(<= (+ (value c8) 1) (value c9))
(<= (+ (value c9) 1) (value c10))
(<= (+ (value c10) 1) (value c11))
(<= (+ (value c11) 1) (value c12))
(<= (+ (value c12) 1) (value c13))
(<= (+ (value c13) 1) (value c14))
(<= (+ (value c14) 1) (value c15))
(<= (+ (value c15) 1) (value c16))
(<= (+ (value c16) 1) (value c17))
(<= (+ (value c17) 1) (value c18))
(<= (+ (value c18) 1) (value c19))
(<= (+ (value c19) 1) (value c20))
(<= (+ (value c20) 1) (value c21))
(<= (+ (value c21) 1) (value c22))
(<= (+ (value c22) 1) (value c23))
  ))

  
)