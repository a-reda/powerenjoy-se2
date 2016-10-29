
//  TODO Insert Logo Here

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

### __Glossary__

1. Introduction
  1. Description of the project
  2. Goals
  3. Domain properties

  Analysis of the world and of the shared phenomena. We suppose that these properties hold in the analyzed world :

  - There are planty of electric cars for users to use.
  - Every car is equiped a GPS which allows the management system can locate the its position accuratly.
  - The GPS of cars cannot be switched off by users.
  - Every user paied a certain amount of deposit before they use the car.
  - Every user has enough bugget to pay the fee for using the car.
  - Every car is not damaged before users reserve it.
  - Every user only can reserve or use one car at the same time.  
  - The car always conect to the management system.
  - Every user registers their account with real indentity information.
  - Every user only registers one account.
  - Users rent a car only for their personal use or for their friends, but the driver on the car only can be the user who rents the car.
  - Cars will be serviced at least once a month.
  - Every car 

  4. Assumptions

    - We assume that the city is fully covered with 3G/4G network.
    - We assume that the car have a system that exposes an API to check the status of the car (location, battery level, is charging, number of passengers)
    - We assume

  5. Glossary

    - __Client__: The physical person that rents the electric car from PowerEnjoy using his smartphone.
    - __Passengers__: One or many persons that may be with the client during the ride.  
    - __Operator__: The PowerEnjoy's employee that supervises the operations and validates driving licenses.
    - __Car__: The electric car that is connected to the Internet through 3G/4G. The car has an onboard computer
    that senses the ignition, battery levels, number of passengers and location and sends them to  
    the application server.
    - __Ride__: A travel in the car by the clients and optionally passengers. A ride starts at the moment the
    client ignites the engine and stops one he leaves the car.
    - __Battery level__: The amount of energy left in the car's batteries. 100% being a full capacity battery and
    0% and empty battery. The battery level is increased while charging and decreased while the car is traveling.
    - __Charging station__: Locations where the cars can be charged by plugging them to the power grid.
    - __Safe areas__: Areas in the map defined by PowerEnjoy's management. The clients should take the cars back to these areas at the end of the ride.
    - __Discount__: A reduction (expressed in percentages) removed from the total
    price of the ride.



  6. System architecture

    Shows the different layers of our system (MVC Model). It is good as well to insert the external service such as Google Maps and others ...

2. Actors

    Three main actors to identify:
    - _User_ : The physical person that rents the electric cars using the application.
    The client has a smartphone connected to the Internet and has the mobile application
    installed in his device.
    - _Operator_ : The employee that supervises the operations and verifies the driving licenses.
    - _Car_ (Assumption) We consider that the car has a computer on board and is always connected to Internet through 3G/4G and sends its status ( ride duration, current position, current battery level ).   

3. Functional and Non-functional Requirements

  1. Functional Requirements
  2. Non-functional Requirements

4. UML Class Diagrams

    Put as much as UML Diagrams as we need

5. Alloy Model and Checking
