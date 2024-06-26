(define (problem depotprob1916) (:domain depot)
(:objects
	depot0 depot1 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 truck2 truck3 - truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 - crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 - hoist)
(:init
	(located pallet0 depot0)
	(clear crate13)
	(located pallet1 depot1)
	(clear crate11)
	(located pallet2 distributor0)
	(clear crate14)
	(located pallet3 distributor1)
	(clear crate10)
	(located pallet4 depot0)
	(clear pallet4)
	(located pallet5 distributor0)
	(clear crate8)
	(located pallet6 distributor1)
	(clear crate3)
	(located pallet7 depot1)
	(clear crate5)
	(located truck0 depot1)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 460)
	(located truck1 distributor0)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 229)
	(located truck2 depot0)
	(= (current_load truck2) 0)
	(= (load_limit truck2) 314)
	(located truck3 depot1)
	(= (current_load truck3) 0)
	(= (load_limit truck3) 282)
	(located hoist0 depot0)
	(available hoist0)
	(located hoist1 depot1)
	(available hoist1)
	(located hoist2 distributor0)
	(available hoist2)
	(located hoist3 distributor1)
	(available hoist3)
	(located hoist4 distributor0)
	(available hoist4)
	(located hoist5 depot0)
	(available hoist5)
	(located hoist6 distributor0)
	(available hoist6)
	(located hoist7 distributor1)
	(available hoist7)
	(located crate0 depot0)
	(on crate0 pallet0)
	(= (weight crate0) 7)
	(located crate1 depot1)
	(on crate1 pallet1)
	(= (weight crate1) 94)
	(located crate2 distributor0)
	(on crate2 pallet2)
	(= (weight crate2) 46)
	(located crate3 distributor1)
	(on crate3 pallet6)
	(= (weight crate3) 3)
	(located crate4 depot0)
	(on crate4 crate0)
	(= (weight crate4) 15)
	(located crate5 depot1)
	(on crate5 pallet7)
	(= (weight crate5) 90)
	(located crate6 distributor0)
	(on crate6 pallet5)
	(= (weight crate6) 58)
	(located crate7 depot0)
	(on crate7 crate4)
	(= (weight crate7) 69)
	(located crate8 distributor0)
	(on crate8 crate6)
	(= (weight crate8) 77)
	(located crate9 distributor1)
	(on crate9 pallet3)
	(= (weight crate9) 42)
	(located crate10 distributor1)
	(on crate10 crate9)
	(= (weight crate10) 38)
	(located crate11 depot1)
	(on crate11 crate1)
	(= (weight crate11) 11)
	(located crate12 distributor0)
	(on crate12 crate2)
	(= (weight crate12) 82)
	(located crate13 depot0)
	(on crate13 crate7)
	(= (weight crate13) 46)
	(located crate14 distributor0)
	(on crate14 crate12)
	(= (weight crate14) 88)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 crate10)
		(on crate1 pallet6)
		(on crate2 crate12)
		(on crate4 pallet4)
		(on crate5 pallet2)
		(on crate6 pallet7)
		(on crate8 crate4)
		(on crate9 crate1)
		(on crate10 pallet1)
		(on crate11 pallet5)
		(on crate12 crate5)
		(on crate13 pallet3)
		(on crate14 pallet0)
	)
)

;(:metric minimize (total-time)))
)
