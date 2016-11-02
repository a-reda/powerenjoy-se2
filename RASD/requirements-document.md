
/resources/logo_polimi.png

![logo](/resources/logo_polimi.png)

## __Requirements Analysis and Specifications Document__
#### Version 0.0



* Reda Aissaoui
* Jinling Xing
* Lidong Zhang



_26th October 2016_


----------

### __Glossary__

1. Introduction
  1. Description of the project __JX__
  2. Goals __JX__
  3. Domain properties __LZ__
  4. Assumptions __RA__
  5. Glossary __RA__
  6. System architecture __LZ__
2. Actors
3. Functional and Non-functional Requirements
  1. Functional Requirements
  2. Non-functional Requirements
4. UML Class Diagrams
5. Alloy Model and Checking

------------


#### 1. Introduction
##### 1. Description of the project
##### 2. Goals
##### 3. Domain properties

  Analysis of the world and of the shared phenomena. We suppose that these properties hold in the analyzed world :

  - There are plenty of electric cars for users to use.
  - Every car is equipped a GPS which allows the management system to locate its position accurately.
  - The GPS of cars cannot be switched off by users.
  - Every user paid a deposit before they use the car.
  - Every user has a valid payment to use the cars.
  - Every car is not damaged before users reserve it.
  - Every user can only reserve/use one car at a time.  
  - The car is always connected to the management system.
  - Every user registers their account with real identity information that is verified by the operator.
  - Every user only registers one account.
  - Users rent a car only for their personal use or for their friends, but the driver of the car can only be the user who rents the car.
  - Cars will be serviced at least once a month. // why?
  - Every car will automatically upload the log to the management system every day at 3 AM then the system will automatically analysis the current conditions of the car. // Why not real time?


##### 4. Assumptions

- We assume that the city is fully covered with 3G/4G network.
- We assume that the car have a system that exposes an API to check the status of the car (location, battery level, is charging, number of passengers)
- We assume

    __Brain storming for domain properties__
    we will consider that ASSUMPTIONS are more user and car oriented (in the scope of our company)(How the user behaves how the connection of the car behaves... etc  ), where as the domain properties are more general (city specific ... )

    The city where PowerEnjoy operates is a medium to big size city. The city is equipped with charging stations everywhere ...

##### 5. Glossary

- __Client__: The physical person that rents the electric car from PowerEnjoy using his smartphone.
- __Passengers__: One or many persons that may be with the client during the ride.  
- __Operator__: The PowerEnjoy's employee that supervises the operations and validates driving licenses.
- __Car__: The electric car that is connected to the Internet through 3G/4G. The car has an onboard computer that senses the ignition, battery levels, number of passengers and location and sends them to  the application server.
- __Ride__: A travel in the car by the clients and optionally passengers. A ride starts at the moment the client ignites the engine and stops one he leaves the car.
- __Battery level__: The amount of energy left in the car's batteries. 100% being a full capacity battery and 0% and empty battery. The battery level is increased while charging and decreased while the car is traveling.
- __Charging station__: Locations where the cars can be charged by plugging them to the power grid.
- __Safe areas__: Areas in the map defined by PowerEnjoy's management. The clients should take the cars back to these areas at the end of the ride.
- __Discount__: A reduction (expressed in percentages) removed from the total price of the ride.
- __Car availability__: The car have three availability statuses: Available (A), Booked(B), In a ride (R) or Out of service (O).
- __Available__: It is the status when the car is not booked by a user and it is ready to be used (Charged battery, no mechanical problems...).
- __Booked__: It is the status when the car is booked by a user. A car cannot be in the "Booked" status for more than one hour after the user has reserved it.  
- __In a ride__: It is the status when the car is being driven by the user.
- __Out of service__: It the exceptional status of when a car has damage or needs maintenance, thus not
available for the users.
- __Car status__: The set of variables that describes the status of the car, this includes but is not limited to: battery level, position, mechanical problems, availability (Free, booked, in a ride), //TODO ADD MORE IF NEEDED


##### 6. System architecture

Shows the different layers of our system (MVC Model). It is good as well to insert the external service such as Google Maps and others ...

#### 2. Actors

Three main actors to identify:
  - _User_ : The physical person that rents the electric cars using the application.
    The client has a smartphone connected to the Internet and has the mobile application
    installed in his device.

  - _Operator_ : The employee that supervises the operations and verifies the driving licenses.
    We consider that the employees of PowerEnjoy are all operators. This access grants the user the
    ability to manage (CRUD) the cars and users. They are the supervisors of the cars fleet.
    The operator is the agent that takes care if the maintenance of the cars. He can see the status of the
    cars (charge, )

#### 3. Functional and Non-functional Requirements

#### 1. Functional Requirements
  //TODO Should relate each one to a goal

##### User requirements

- The user should be able to register in the system.
- The user should be able to modify his information
- The user should see the cars around him or around an address.
- The user should be able to reserve a car.
- The user should be able to delete a reservation.
- The user should be able to unlock and check-in the car.
- The user should be able to see how much the ride cost him.
- The user should be able to check his rides history.
- The user should be able to enable economy mode.

##### System Requirements

- The system should be able to locate all the cars.
- Retrieve the real-time car variables.
- Calculate the price of the ride depending on the time, left charge in the battery and number of passengers.

##### Operator requirements

- Verify the driving license and identity of the drivers
- Verify the damaged and faulty cars.
- Monitor the position of the cars.



  2. Non-functional Requirements

4. UML Class Diagrams

    Put as much as UML Diagrams as we need

5. Alloy Model and Checking
