# sailing

A domain introduced in: Scala, Enrico, Patrik Haslum, and Sylvie Thiébaux.
"Heuristics for numeric planning via subgoaling." (2016).  Its aim is to
illustrate the limits of interval relaxation-based heuristics.  There is a
sailing boat whose task is to rescue people in an unbounded area of the ocean.
The positions of the boat and people to be rescued are described by their
coordinates (x, y). To save a person, the boat must reach an area described by
one or more linear inequalities. A (sequential) numeric planning formulation of
the problem encodes each of the 7 possible movements of the boat (cardinal
directions, except one, as the boat cannot sail straight into the wind) as a
translation in  the geometrical space defined by Q^2 . Speed is implicit: each
action changes each of the two variables by a given amount.
