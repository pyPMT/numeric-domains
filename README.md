# Repository of Numeric Planning Benchmarks

## Categories

[SNP] Simple Numeric Planning domains only use increase and decrease with constants, and have linear conditions.
[LNP] Linear Numeric Planning domains add the possibility of using linear combinations of variables on the effects and also the assign operation.
[NLNP] Non-Linear Numeric Planning domains use multiplication or division of fluent variables (e.g., `(* fluent fluent)` or `(/ fluent fluent)`).
[SDAC] State-Dependant Action Costs are domains where the cost of the actions depend on the state they are executed in (cost expression references dynamic fluent functions that change during planning).
[Unit] Unit cost domains where all actions have a cost of 1 or no explicit cost metric.
[Constant] Constant cost domains where actions have different fixed numeric costs (including costs expressed via static fluent references that never change).
[CE] Conditional effects.

## Domains

15-puzzle [LNP, Unit]
  - LNP: assigns fluent to fluent `(assign (puzzle_0_0) (puzzle_1_0))`

block-grouping [SNP, Unit]

counters [SNP, Unit]

delivery [LNP, Constant]
  - LNP: increase by fluent `(increase (current_load ?b) (weight ?i))`, weight is static
  - Constant: metric tracks `cost`; actions increase it by literal 1, 2, or 3

depots [LNP, Constant]
  - LNP: increase by fluent `(increase (current_load ?z) (weight ?y))`, weight is static
  - Constant: metric tracks `fuel-cost`; actions increase it by literal 1 or 10

driverlog [NLP, SDAC]
  - NLNP: `(* (fuel_per_minute ?truck) (time_to_drive ?loc_from ?loc_to))` — fluent * fluent
  - SDAC: metric tracks `fuel_used`; `fuel_per_minute` used in cost expression is dynamic (changes with load/unload)

drone [LNP, Unit]
  - LNP: uses assign and fluent expressions in effects

elevators [LNP, Constant]
  - LNP: `(increase (total-cost) (travel-slow ?f1 ?f2))` — increase by fluent
  - Constant: metric is `total-cost`; `travel-slow` and `travel-fast` used in cost are static (never modified)

expedition [SNP, Unit]

ext-plant-watering [SNP, Unit]

factory-robot [NLNP]
  - NLNP: `(>= (energy ?r) (* (workload ?r) (efficiency ?r)))` in precondition — workload is dynamic, efficiency is static

farmland [SNP, Constant]
  - Constant: metric tracks `cost`; move-fast increases it by 1, move-slow by 0

fo-counters [LNP, Unit]
  - LNP: uses assign and fluent expressions in effects

fo-farmland [LNP, Unit]
  - LNP: linear fluent expressions `(* 4 (num-of-cars))` in effects

fo-sailing [LNP, Unit]
  - LNP: uses assign and fluent expressions in effects

forestfire [SNP, Unit]

hydropower [LNP, Constant]
  - LNP: `(decrease (funds) (* 1.05 (value ?n1)))` and `(increase (funds) (value ?n1))`
  - Constant: metric tracks `funds`; the amounts use `value` which is static (never modified)

markettrader [LNP, Constant]
  - LNP: `(decrease (cash) (price ?g ?m))`, `(decrease (cash) (drive-cost ?from ?to))`
  - Constant: metric tracks `cash`; the amounts use `price` and `drive-cost` which are static (never modified)

minecraft-pogo-advanced [SNP, Unit]

minecraft-sword-advanced [SNP, Unit]

mprime [SNP, Unit]

pancake [LNP, Unit]
  - LNP: assigns fluent to fluent `(assign (pancake_0) (pancake_1))`

pathwaysmetric [LNP, Unit]
  - LNP: `(decrease (available ?x1) (need-for-association ?x1 ?x2 ?x3))` — increase/decrease by static fluents

petri-net [SNP, Unit]

petrobras [LNP, CE]
  - LNP: uses assign and fluent expressions in effects
  - CE: uses `when` conditional effects

planes [LNP, Unit]
  - LNP: `(decrease (fuel ?a) (distance ?c1 ?c2))` and `(assign (fuel ?a) (capacity ?a))`

plant-watering [SNP, Unit]

plotting [LNP, CE, Unit]
  - LNP: uses assign `(assign (count_0) 0)`
  - CE: uses `when` conditional effects

rover [SNP, Constant]
  - Constant: metric tracks `energy`; different actions decrease it by different literal amounts

rover-linear [LNP, Constant]
  - LNP: `(increase (energy ?x) (- 20 recharges))` — fluent expression in effect
  - Constant: metric tracks `energy`; most actions decrease it by literal amounts (8, 3, 5, 2, 1, 4, 6)

sailing [SNP, Unit]

satellite [LNP, Constant]
  - LNP: `(increase (fuel-used) (slew_time ?d_new ?d_prev))` and `(decrease (data_capacity ?s) (data ?d ?m))`
  - Constant: metric tracks `fuel-used` and `data-stored`; the amounts use `slew_time` and `data` which are static (never modified)

sec_clearance [LNP, SDAC]
  - LNP: `(increase (cost_d1) (priority_d1))` — increase by fluent
  - SDAC: metric tracks `cost_d1`/`cost_d2`; `priority_d1` and `priority_d2` used in cost are dynamic (change during planning)

settlers [LNP, Constant]
  - LNP: uses assign `(assign (space-in ?v) 5)`
  - Constant: metric tracks `labour`; actions increase it by literal 1, 2, 3, 5, or 10

settlersnoassign [SNP, Constant]
  - Constant: metric tracks `labour`; actions increase it by literal 1, 2, or 3

sugar [LNP, Constant]
  - LNP: `(increase (mill-cost) (cost-process ?m))` and `(* 5 (cost-process ?m))`
  - Constant: metric tracks `mill-cost`, `inventory-cost`, `handling-cost`; the amounts use `cost-process`, `max-produce`, `capacity`, `max-service-time` which are all static (never modified)

tpp [NLP, SDAC]
  - NLNP: `(* (- (request ?g) (bought ?g)) (price ?g ?m))` — fluent * fluent
  - SDAC: metric is `total-cost`; `bought` and `on-sale` used in cost expression are dynamic (change during planning)

tpp-metric [NLP, SDAC]
  - NLNP: `(* (- (request ?g) (bought ?g)) (price ?g ?m))` — fluent * fluent
  - SDAC: metric is `total-cost`; `bought` and `on-sale` used in cost expression are dynamic (change during planning)

worksworld [NLP, Constant]
  - NLNP: `(* (msg_size ?dct) (msg_max_rate ?dc))`, `(/ (work_amount ?wc ?rtwc) (resource_total ?it ?rtwc))`
  - Constant: metric is `total-cost`; all fluents in its cost expressions (`work-cost-weight`, `work_amount`, `resource_total`, `msg_size`, `msg_max_rate`) are static (never modified)

zenotravel [NLP, Constant]
  - NLNP: `(* (distance ?c1 ?c2) (slow-burn ?a))` — fluent * fluent
  - Constant: metric tracks `total-fuel-used`; the amounts use `distance`, `slow-burn`, `fast-burn` which are all static (never modified)


# Suspected Unsolvable
- [ ]drone/pfile14
- [ ]drone/pfile18
- [ ]expedition/pfile7
- [ ]ext-plant-watering/pfile14
- [ ]ext-plant-watering/pfile17
- [ ]farmland/instance_6_1000_1229
- [ ]plant-watering/instance_11_2
- [ ]plant-watering/instance_12_1
- [ ]plant-watering/instance_12_2
- [ ]plant-watering/instance_13_2
- [ ]plant-watering/instance_13_3
- [ ]plant-watering/instance_14_1
- [ ]plant-watering/instance_14_3
- [ ]plant-watering/instance_15_3
- [ ]plant-watering/instance_16_3
- [ ]plant-watering/instance_17_1
- [ ]plant-watering/instance_17_2
- [ ]plant-watering/instance_18_1
- [ ]plant-watering/instance_18_2
- [ ]plant-watering/instance_18_3
- [ ]plant-watering/instance_19_1
- [ ]plant-watering/instance_20_3
- [ ]sailing/instance_1_10_1229
- [ ]sailing/instance_1_1_1229
- [ ]sailing/instance_1_2_1229
- [ ]sailing/instance_1_3_1229
- [ ]sailing/instance_1_4_1229
- [ ]sailing/instance_1_5_1229
- [ ]sailing/instance_1_6_1229
- [ ]sailing/instance_1_7_1229
- [ ]sailing/instance_1_8_1229
- [ ]sailing/instance_1_9_1229
- [ ]sailing/instance_2_10_1229
- [ ]sailing/instance_2_1_1229
- [ ]sailing/instance_2_2_1229
- [ ]sailing/instance_2_3_1229
- [ ]sailing/instance_2_4_1229
- [ ]sailing/instance_2_5_1229
- [ ]sailing/instance_2_6_1229
- [ ]sailing/instance_2_7_1229
- [ ]sailing/instance_2_9_1229
- [ ]sailing/instance_3_1_1229
- [ ]sailing/instance_3_2_1229
- [ ]sailing/instance_3_3_1229
- [ ]sailing/instance_3_4_1229
- [ ]sailing/instance_3_5_1229
- [ ]sailing/instance_3_6_1229
- [ ]sailing/instance_3_7_1229
- [ ]sailing/instance_3_9_1229
- [ ]sailing/instance_4_1_1229
- [ ]sailing/instance_4_2_1229
- [ ]sailing/instance_4_3_1229
- [ ]sailing/instance_4_4_1229
- [ ]sailing/instance_4_5_1229
- [ ]sailing/instance_4_6_1229
- [ ]sailing/instance_4_9_1229
- [ ]settlersnumeric/pfile08
- [ ]settlersnumericnoassign/pfile8
