FAAST (Fast and Accessible Super Tube)
=================

The FAAST system allows passengers to travel from station to station. The system caters for the following:

- [x] The system has a number of trains in it.
- [x] Trains travel from station to station.
- [x] Passengers enter and exit train carriages inside the station.
- [x] Passengers touch in and out of the station.
- [x] Each carriage/coach holds 40 passengers.
- [x] Each train has a number of carriages.
- [ ] The passengers must have more than £2 to enter the station.

The system contains the following object classes.
-----
- [x] Station
- [x] Passenger
- [x] Train
- [x] Carriages

Domain Model/CRC's
==================

Station
-------
Responsiblities|Collaborators
---------------|-------------
Allow passenger to enter station | Passenger
Allow passenger to exit station | Train  
Allow train to enter station | 
Allow train to exit coach |
Let passenger get on train |
Let passenger get off train |

Coach
-----
Responsiblities|Collaborators
---------------|-------------
Allow passenger to board coach | Passenger
Allow passenger to get off coach | Station
Have maximum passenger capacity | Train

Passenger
---------
Responsiblities|Collaborators
---------------|-------------
Be able to touch in station | Station
Be able to touch out of station | Coach
Be able to board coach | 
Be able to exit coach |
Have travel credit |

Train
------
Responsiblities|Collaborators
---------------|-------------
Be able to add coach |
Be able to remove coach |
Have maximum coach capacity |

Programs and Languages used
============================
Ruby version 2.1.2
Sublime Text 3
Command Line
Pry
RSpec
Github