(define (problem depotprob7615) (:domain depot)
(:objects
	depot0 depot1 depot2 depot3 - depot
	distributor0 distributor1 distributor2 distributor3 - distributor
	truck0 truck1 truck2 truck3 - truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 - crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 - hoist)
(:init
	(located pallet0 depot0)
	(clear crate13)
	(located pallet1 depot1)
	(clear crate14)
	(located pallet2 depot2)
	(clear pallet2)
	(located pallet3 depot3)
	(clear crate5)
	(located pallet4 distributor0)
	(clear pallet4)
	(located pallet5 distributor1)
	(clear crate9)
	(located pallet6 distributor2)
	(clear crate8)
	(located pallet7 distributor3)
	(clear crate10)
	(located pallet8 depot1)
	(clear crate11)
	(located pallet9 depot2)
	(clear pallet9)
	(located truck0 distributor2)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 458)
	(located truck1 depot0)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 400)
	(located truck2 depot1)
	(= (current_load truck2) 0)
	(= (load_limit truck2) 390)
	(located truck3 distributor1)
	(= (current_load truck3) 0)
	(= (load_limit truck3) 379)
	(located hoist0 depot0)
	(available hoist0)
	(located hoist1 depot1)
	(available hoist1)
	(located hoist2 depot2)
	(available hoist2)
	(located hoist3 depot3)
	(available hoist3)
	(located hoist4 distributor0)
	(available hoist4)
	(located hoist5 distributor1)
	(available hoist5)
	(located hoist6 distributor2)
	(available hoist6)
	(located hoist7 distributor3)
	(available hoist7)
	(located crate0 distributor3)
	(on crate0 pallet7)
	(= (weight crate0) 64)
	(located crate1 distributor1)
	(on crate1 pallet5)
	(= (weight crate1) 1)
	(located crate2 depot3)
	(on crate2 pallet3)
	(= (weight crate2) 50)
	(located crate3 depot0)
	(on crate3 pallet0)
	(= (weight crate3) 56)
	(located crate4 depot0)
	(on crate4 crate3)
	(= (weight crate4) 36)
	(located crate5 depot3)
	(on crate5 crate2)
	(= (weight crate5) 68)
	(located crate6 depot1)
	(on crate6 pallet1)
	(= (weight crate6) 90)
	(located crate7 distributor2)
	(on crate7 pallet6)
	(= (weight crate7) 55)
	(located crate8 distributor2)
	(on crate8 crate7)
	(= (weight crate8) 94)
	(located crate9 distributor1)
	(on crate9 crate1)
	(= (weight crate9) 44)
	(located crate10 distributor3)
	(on crate10 crate0)
	(= (weight crate10) 36)
	(located crate11 depot1)
	(on crate11 pallet8)
	(= (weight crate11) 47)
	(located crate12 depot1)
	(on crate12 crate6)
	(= (weight crate12) 88)
	(located crate13 depot0)
	(on crate13 crate4)
	(= (weight crate13) 97)
	(located crate14 depot1)
	(on crate14 crate12)
	(= (weight crate14) 84)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 pallet3)
		(on crate1 crate11)
		(on crate2 pallet6)
		(on crate3 crate0)
		(on crate4 crate5)
		(on crate5 crate14)
		(on crate6 pallet4)
		(on crate7 pallet2)
		(on crate8 pallet7)
		(on crate9 crate8)
		(on crate11 pallet5)
		(on crate12 crate6)
		(on crate13 crate2)
		(on crate14 pallet1)
	)
)

(:metric minimize (fuel-cost)))
