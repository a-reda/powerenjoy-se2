open util/boolean 
/*
one sig PowerEnjoy {
				fleet: set Car, 
				clients: set Client,
				operators: set Operator,
				chargingStations: set ChargingStation,
				safeAreas: set SafeArea,
				reservations: set Reservation,
				rides: set Ride
}*/

abstract sig  User {
}

sig Client extends User {
				reservations: some Reservation
}

sig Operator extends User {
}

sig Car {
		licensePlate: one LicensePlate,
		batteryLevel: Int,
		position: one Position,
		isLocked: one Bool,
		isCharging: one Bool, 
		isOnRide: one Bool
} {
		batteryLevel <= 100
		batteryLevel >= 0
}
// If a car is charging it's not in a ride
fact isOnRideNotCharg {
		all c: Car | (c.isCharging = True) => ( c.isOnRide = False )
}
fact isOnRideNotLock {
		all c: Car | ( c.isOnRide = True ) => ( c.isLocked = False )
}
/*
fact OneCarOneReserv {
		no c: Car, r1, r2: CurrentReservation  | r1 != r2 and r1.car = c and r2.car = c
}*/

sig LicensePlate {}

sig Position {
		latitude: Int, //Float
		longitude: Int //Float
} {
		latitude >= 0
		longitude >=0
}	

abstract sig Reservation { 
		car: one Car, 
		ride: lone Ride,
		bill: one Bill
}

sig CurrentReservation extends Reservation {}
sig PastReservation extends Reservation {}
fact AllReservationHaveClient {
		all r: Reservation | one c: Client | r in c.reservations
}
/*
fact allReservedCarsNotOnRide {
		no c: Car, r1, r2: CurrentReservation | r1 != r2 and c in r1.car and c in r2.car 
}*/

sig  Ride {
		startPoint: one Position,
		endPoint: one Position,
		passenger: Int,
} {
	startPoint != endPoint
	passenger >= 0
}
// All ride are in a reservation
fact {
		all r: Ride | one res: Reservation | r = res.ride
}

sig  Bill {	
}

sig ChargingStation {
		position: one Position, 
		numberPlugs: Int,
		pluggedCars: set Car
}

//If car is plugged, status is Charging
fact carPlugged {
		all c: Car | one ch: ChargingStation |  (c.isCharging = True)  => c in ch.pluggedCars// return all the set of cars
}

sig SafeArea {
		borders: set Position
} {
	#borders >= 3
}
// License plate is unique 
fact licensePlateUnique {
		all c1, c2: Car | (c1 != c2) => c1.licensePlate != c2.licensePlate
}
// A Reservations has a unique client 
fact reservationBelongsToOneUser {
		no r: Reservation | some c1, c2: Client  | c1 != c2 and r in c1.reservations and r in c2.reservations
}
// A User can only have one current reservation 
fact {
		no c: Client | some r1, r2: CurrentReservation | r1 != r2 and r1 in c.reservations and r2 in c.reservations
}
// Bill has one reservation
fact billUniqueReservation {
		no r1, r2: Reservation | r1 != r2 and r1.bill = r2.bill
}
// To check
assert ReservationIsUnique {
		all disj r, r1: Reservation , c: Client | r in c.reservations and r1 in c.reservations
			implies r != r1
}

pred example { 
	#Client = 3
	#CurrentReservation = 2
	#Car = 2
    #Ride = 2
}

pred addReservation(c: Client, r: CurrentReservation, car: Car) {
		c.reservations = c.reservations + r
}

run addReservation
check ReservationIsUnique
run example 
