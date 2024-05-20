;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem settlers) (:domain civ)
 (:objects vehicle7 - vehicle vehicle6 - vehicle vehicle5 - vehicle vehicle4 -
  vehicle vehicle3 - vehicle vehicle2 - vehicle vehicle1 - vehicle vehicle0 -
  vehicle location8 - place location7 - place location6 - place location5 -
  place location4 - place location3 - place location2 - place location1 - place
  location0 - place)
 (:init (= (resource-use) 0) (= (labour) 0) (= (pollution) 0)
  (mountain location0) (woodland location0) (by-coast location0)
  (metalliferous location0) (= (housing location0) 0)
  (= (available wood location0) 0) (= (available timber location0) 0)
  (= (available ore location0) 0) (= (available stone location0) 0)
  (= (available iron location0) 0) (= (available coal location0) 0)
  (woodland location1) (by-coast location1) (= (housing location1) 0)
  (= (available wood location1) 0) (= (available timber location1) 0)
  (= (available ore location1) 0) (= (available stone location1) 0)
  (= (available iron location1) 0) (= (available coal location1) 0)
  (woodland location2) (by-coast location2) (= (housing location2) 0)
  (= (available wood location2) 0) (= (available timber location2) 0)
  (= (available ore location2) 0) (= (available stone location2) 0)
  (= (available iron location2) 0) (= (available coal location2) 0)
  (mountain location3) (woodland location3) (= (housing location3) 0)
  (= (available wood location3) 0) (= (available timber location3) 0)
  (= (available ore location3) 0) (= (available stone location3) 0)
  (= (available iron location3) 0) (= (available coal location3) 0)
  (woodland location4) (by-coast location4) (= (housing location4) 0)
  (= (available wood location4) 0) (= (available timber location4) 0)
  (= (available ore location4) 0) (= (available stone location4) 0)
  (= (available iron location4) 0) (= (available coal location4) 0)
  (metalliferous location5) (= (housing location5) 0)
  (= (available wood location5) 0) (= (available timber location5) 0)
  (= (available ore location5) 0) (= (available stone location5) 0)
  (= (available iron location5) 0) (= (available coal location5) 0)
  (= (housing location6) 0) (= (available wood location6) 0)
  (= (available timber location6) 0) (= (available ore location6) 0)
  (= (available stone location6) 0) (= (available iron location6) 0)
  (= (available coal location6) 0) (mountain location7) (woodland location7)
  (= (housing location7) 0) (= (available wood location7) 0)
  (= (available timber location7) 0) (= (available ore location7) 0)
  (= (available stone location7) 0) (= (available iron location7) 0)
  (= (available coal location7) 0) (by-coast location8)
  (metalliferous location8) (= (housing location8) 0)
  (= (available wood location8) 0) (= (available timber location8) 0)
  (= (available ore location8) 0) (= (available stone location8) 0)
  (= (available iron location8) 0) (= (available coal location8) 0)
  
  
        ;;vehicle0
  (= (space-in vehicle0) 0)
  (= (available timber vehicle0) 0)
  (= (available wood vehicle0) 0)
  (= (available coal vehicle0) 0)
  (= (available stone vehicle0) 0)
  (= (available iron vehicle0) 0)
  (= (available ore vehicle0) 0)
  
    ;;vehicle1
  (= (space-in vehicle1) 0)
  (= (available timber vehicle1) 0)
  (= (available wood vehicle1) 0)
  (= (available coal vehicle1) 0)
  (= (available stone vehicle1) 0)
  (= (available iron vehicle1) 0)
  (= (available ore vehicle1) 0)
  
    ;;vehicle2
  (= (space-in vehicle2) 0)
  (= (available timber vehicle2) 0)
  (= (available wood vehicle2) 0)
  (= (available coal vehicle2) 0)
  (= (available stone vehicle2) 0)
  (= (available iron vehicle2) 0)
  (= (available ore vehicle2) 0)
  
    ;;vehicle3
  (= (space-in vehicle3) 0)
  (= (available timber vehicle3) 0)
  (= (available wood vehicle3) 0)
  (= (available coal vehicle3) 0)
  (= (available stone vehicle3) 0)
  (= (available iron vehicle3) 0)
  (= (available ore vehicle3) 0)
  
    ;;vehicle4
  (= (space-in vehicle4) 0)
  (= (available timber vehicle4) 0)
  (= (available wood vehicle4) 0)
  (= (available coal vehicle4) 0)
  (= (available stone vehicle4) 0)
  (= (available iron vehicle4) 0)
  (= (available ore vehicle4) 0)
  
      ;;vehicle5
  (= (space-in vehicle5) 0)
  (= (available timber vehicle5) 0)
  (= (available wood vehicle5) 0)
  (= (available coal vehicle5) 0)
  (= (available stone vehicle5) 0)
  (= (available iron vehicle5) 0)
  (= (available ore vehicle5) 0)
  
        ;;vehicle6
  (= (space-in vehicle6) 0)
  (= (available timber vehicle6) 0)
  (= (available wood vehicle6) 0)
  (= (available coal vehicle6) 0)
  (= (available stone vehicle6) 0)
  (= (available iron vehicle6) 0)
  (= (available ore vehicle6) 0)
  
          ;;vehicle7
  (= (space-in vehicle7) 0)
  (= (available timber vehicle7) 0)
  (= (available wood vehicle7) 0)
  (= (available coal vehicle7) 0)
  (= (available stone vehicle7) 0)
  (= (available iron vehicle7) 0)
  (= (available ore vehicle7) 0)
  
  (connected-by-land location0 location1)
  (connected-by-land location1 location0)
  (connected-by-land location0 location2)
  (connected-by-land location2 location0)
  (connected-by-land location0 location7)
  (connected-by-land location7 location0)
  (connected-by-land location1 location2)
  (connected-by-land location2 location1)
  (connected-by-land location1 location3)
  (connected-by-land location3 location1)
  (connected-by-land location2 location3)
  (connected-by-land location3 location2)
  (connected-by-land location2 location6)
  (connected-by-land location6 location2)
  (connected-by-land location3 location0)
  (connected-by-land location0 location3)
  (connected-by-land location4 location0)
  (connected-by-land location0 location4)
  (connected-by-land location4 location1)
  (connected-by-land location1 location4)
  (connected-by-land location4 location2)
  (connected-by-land location2 location4)
  (connected-by-land location4 location3)
  (connected-by-land location3 location4)
  (connected-by-land location4 location6)
  (connected-by-land location6 location4)
  (connected-by-land location5 location0)
  (connected-by-land location0 location5)
  (connected-by-land location5 location3)
  (connected-by-land location3 location5)
  (connected-by-land location5 location4)
  (connected-by-land location4 location5)
  (connected-by-land location5 location6)
  (connected-by-land location6 location5)
  (connected-by-land location5 location8)
  (connected-by-land location8 location5)
  (connected-by-land location6 location1)
  (connected-by-land location1 location6)
  (connected-by-land location6 location7)
  (connected-by-land location7 location6)
  (connected-by-land location6 location8)
  (connected-by-land location8 location6)
  (connected-by-land location7 location1)
  (connected-by-land location1 location7)
  (connected-by-land location7 location2)
  (connected-by-land location2 location7)
  (connected-by-land location7 location5)
  (connected-by-land location5 location7)
  (connected-by-land location8 location0)
  (connected-by-land location0 location8)
  (connected-by-land location8 location3)
  (connected-by-land location3 location8)
  (connected-by-sea location2 location4) (connected-by-sea location4 location2)
  (potential vehicle0) (potential vehicle1) (potential vehicle2)
  (potential vehicle3) (potential vehicle4) (potential vehicle5)
  (potential vehicle6) (potential vehicle7))
 (:goal
  (and (>= (housing location0) 1)
       (>= (housing location2) 1)
       (connected-by-rail location2 location3)
       (connected-by-rail location3 location0)
       (connected-by-rail location0 location7)
       (>= (housing location5) 2)
       (>= (housing location3) 2)
       (connected-by-rail location0 location1)
       (connected-by-rail location1 location3)
       (has-ironworks location0)
       (has-coal-stack location7)
       (has-ironworks location6)
       (connected-by-rail location8 location0)
       (has-ironworks location3)))
 (:metric minimize
  (+ (+ (* 2 (pollution)) (* 1 (resource-use))) (* 2 (labour)))))