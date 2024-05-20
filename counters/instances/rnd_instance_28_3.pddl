;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_28_3)
  (:domain fn-counters)
  (:objects
    c0 c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20 c21 c22 c23 c24 c25 c26 c27 - counter
  )

  (:init
    (= (max_int) 56)
	(= (value c0) 34)
	(= (value c1) 38)
	(= (value c2) 42)
	(= (value c3) 29)
	(= (value c4) 47)
	(= (value c5) 3)
	(= (value c6) 18)
	(= (value c7) 14)
	(= (value c8) 14)
	(= (value c9) 37)
	(= (value c10) 45)
	(= (value c11) 52)
	(= (value c12) 12)
	(= (value c13) 8)
	(= (value c14) 17)
	(= (value c15) 11)
	(= (value c16) 39)
	(= (value c17) 20)
	(= (value c18) 27)
	(= (value c19) 35)
	(= (value c20) 33)
	(= (value c21) 26)
	(= (value c22) 15)
	(= (value c23) 15)
	(= (value c24) 36)
	(= (value c25) 52)
	(= (value c26) 34)
	(= (value c27) 1)
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
(<= (+ (value c23) 1) (value c24))
(<= (+ (value c24) 1) (value c25))
(<= (+ (value c25) 1) (value c26))
(<= (+ (value c26) 1) (value c27))
  ))

  
)
