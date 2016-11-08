

![](RASD/resources/logo_polimi.png){ width=50% }

## __Requirements Analysis and Specifications Document__
#### Version 0.0



* Reda Aissaoui
* Jinling Xing
* Lidong Zhang



_26th October 2016_


----------

### __Glossary__

1. Introduction
  1. Description of the project
  2. Goals
  3. Domain properties
  4. Assumptions
  5. Glossary
  6. System architecture
2. Actors
3. Functional and Non-functional Requirements
  1. Functional Requirements
  2. Non-functional Requirements
4. UML Class Diagrams
5. Alloy Model and Checking

------------

#### 1. Introduction
##### 1. Description of the project

  - This Project is based on mobile  application.
  - The target population is clients and drivers.
  - This system is aimed to provide more efficient and reliable services for users to decrease their cost in daily travel. In addition, this system can offer more chances for drives to take more clients to get more profits.  
  - The complete using process of system is that:

  __first__: Open the application(the user who first use this systemshould bind a credit card andwithout a complicated registration process).

  __second__：system uses GPS to get the position, you'll see the number and location of cars nearby.

  __third__：Book now or set time point to book cars in advance. Meanwhile, system offers Estimated arriving time and approximate price and driver information, and real-time view of the vehicle route through the APP.

  __Fourth__：when arrived the destination, a bound credit card  will be  charged automatically according to mileage and service time.

  - Some other settings:
     The users who sharing cars will be given discounts.
    Drivers and passengers can evaluate each other via software.
#### 3. Goals
  __Users__
  - G[1] Allows users to login this system according to their phone number and do not need complex registration process.
  - G[2] Allows users to modify their information.
  - G[3] Allows users to see the cars around him or around an address on the application.
  - G[4] Allows users to reserve cars immediately or in advance.
  - G[5] Allows users to delete reservation, but if they delete near the booked time, they will be asked to pay for some money.
  - G[6] Allows users to unlock and check-in the car when they reserve the car immediately or reserve the car in advance.
  - G[7] Allows drivers to know the fees after they take cars and what miles they ride.
  - G[8] Allows users to check their rides history after they finished their rides.
  - G[9] Allows users to the user should be able to enable economy mode. Before they first use the services, they should bind the personal credit cards.

__System__
 - G[10] Allows systems to locate all the cars if the drives login the system.
 - G[11] Allows systems to retrieve the real-time car variables.
 - G[12] System should calculate the price of the ride depending on the time, left charge in the battery and number of passengers.

__Operator__
- G[13] When the drivers registered, driving license and drivers identities should be checked and verified.
- G[14] The operator should verify the damaged and faulty cars and asked drivers to upload the certifications.
- G[15] The operator can monitor the position of the cars.

#### 3. Domain properties

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
 -  _Visitor_: // TODO Describe
 - _User_ : The physical person that rents the electric cars using the application.
    The client has a smartphone connected to the Internet and has the mobile application
    installed in his device.

 - _Operator_ : The employee that supervises the operations and verifies the driving licenses.
    We consider that the employees of PowerEnjoy are all operators. This access grants the user the
    ability to manage (CRUD) the cars and users. They are the supervisors of the cars fleet.
    The operator is the agent that takes care if the maintenance of the cars. He can see the status of the
    cars (charge, )

#### 3. Functional and Non-functional Requirements

#### 1. Functional Requirements JX
  //TODO Should relate each one to a goal

##### User requirements

- The user should be able to register in the system.
  - The user should be able to enter his information into
  - The user
- The user should be able to modify his information
- The user should see the cars around him or around an address.
- The user should be able to reserve a car.
- The user should be able to delete a reservation.
- The user should be able to unlock and check-in the car.
- The user should be able to see how much the ride cost him.
- The user should be able to check his rides history.
- Enable money saving option.
- See the station where to park the car to get a discount.
- Report issues to the operator.

##### System Requirements

- The system should be able to locate all the cars.
- Retrieve the real-time car variables.
- Calculate the price of the ride depending on the time, left charge in the battery and number of passengers.

##### Operator requirements

- Verify the driving license and identity of the drivers
- Verify the damaged and faulty cars.
- Monitor the position of the cars.


#### 2. Non-functional Requirements

##### 1. GUI Mock-ups LZ

###### Android GUI Mock-ups

  Users in the android app

###### Web GUI Mock-ups

  Users and operators

##### 2. Constraints RA
 Example: use JEE, SQL ...

### 4. Scenarios RA

### 5. UML Diagrams

#### 1. Class diagram RA

#### 2. Use case Diagrams LZ

    Put as much as UML Diagrams as we need

### 6. Alloy Model and Checking
