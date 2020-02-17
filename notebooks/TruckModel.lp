\* TruckingCo *\
Maximize
OBJ: 2100 Truck_A + 3600 Truck_B + 3780 Truck_C
Subject To
BudgetSum: 10000 Truck_A + 20000 Truck_B + 23000 Truck_C <= 600000
MaxDrivers: Truck_A + 2 Truck_B + 2 Truck_C <= 145
MaxTrucks: Truck_A + Truck_B + Truck_C <= 30
Bounds
0 <= Truck_A
0 <= Truck_B
0 <= Truck_C
Generals
Truck_A
Truck_B
Truck_C
End
