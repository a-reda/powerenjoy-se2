open util/boolean 

one sig PowerEnjoy {
				fleet: set Car, 
				users: set User,
				chargingStations: set ChargingStation,
				safeAreas: set SafeArea,
				reservations: set Reservation
}

abstract sig  User {
}

sig Client extends User {
}

sig Operator extends User {
}

sig Car {
		licensePlate: LicensePlate,
		batteryLevel: Int,
		position: one Position,
		isLocked: one Bool,
		isCharging: one Bool, 
		isOnRide: one Bool
} {
		batteryLevel <= 100
		batteryLevel >= 0
}

sig LicensePlate {}

sig Position {
		latitude: Int, //Float
		longitude: Int //Float
}

abstract sig Reservation {
		user: Client, 
		car: one Car, 
		ride: one Ride,
		bill: one Bill
}

sig CurrentReservation extends Reservation {}
sig PastReservation extends Reservation {}

fact allReservedCarsNotOnRide {
no c: Car | some r1, r2: CurrentReservation | r1 != r2 and c in r1.car and c in r2.car 
}

sig  Ride {
		startPoint: one Position,
		endPoint: one Position,
		passenger: Int,
} {
	startPoint != endPoint
}



sig  Bill {	
}

sig ChargingStation {
		position: one Position, 
		numberPlugs: Int,
		pluggedCars: set Car
}

sig SafeArea {
		borders: set Position
} {
	#borders >= 3
}
// License plate
fact licensePlateUnique {
all c1, c2: Car | (c1 != c2) => c1.licensePlate != c2.licensePlate
}

fact userReservationUnique {
all r1, r2: CurrentReservation | (r1 != r2) => r1.user != r2.user
}


pred example { }

run example for 20
