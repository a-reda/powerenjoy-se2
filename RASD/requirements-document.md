\input{RASD/coverpage.tex}

### __Content__

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

\pagebreak

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

- Some other settings:The users who sharing cars will be given discount.Drivers and passengers can evaluate each other via software.

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

- There are plenty of electric cars for users to use.
- Every car is equipped a GPS which allows the management system to locate its position accurately.
- The GPS of cars cannot be switched off by users.
- Every user paid a deposit before they use the car.
- Every user has a smartphone always connected to the Internet.
- The position of the user is calculated by his smartphone and is accurate enough to be able to say he is close to the car ( Around 5m accuracy )
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

    Text assumptions: maybe what the text says and our way of understanding it  <====

\pagebreak

##### 5. Glossary

In this section, we define the frequently used words in order to avoid ambiguity. These are the most important concepts used in the documentation of the project.

__Client__: The physical person that rents the electric car from PowerEnjoy using his smartphone.

__Passengers__: One or many persons that may be with the client during the ride.

__Operator__: The PowerEnjoy's employee that supervises the operations and validates driving licenses.

__Car__: The electric car that is connected to the Internet through 3G/4G. The car has an onboard computer that senses the ignition, battery levels, number of passengers and location and sends them to  the application server.

__Ride__: A travel in the car by the clients and optionally passengers. A ride starts at the moment the client ignites the engine and stops one he leaves the car.

__Battery level__: The amount of energy left in the car's batteries. 100% being a full capacity battery and 0% and empty battery. The battery level is increased while charging and decreased while the car is traveling.

__Charging station__: Locations where the cars can be charged by plugging them to the power grid.

__Safe areas__: Areas in the map defined by PowerEnjoy's management. The clients should take the cars back to these areas at the end of the ride.

__Discount__: A reduction (expressed in percentages) removed from the total price of the ride.

__Car availability__: The car have three availability statuses: Available (A), Booked(B), In a ride (R) or Out of service (O).

__Available__: It is the status when the car is not booked by a user and it is ready to be used (Charged battery, no mechanical problems...).

__Booked__: It is the status when the car is booked by a user. A car cannot be in the "Booked" status for more than one hour after the user has reserved it.

__In a ride__: It is the status when the car is being driven by the user.

__Out of service__: It the exceptional status of when a car has damage or needs maintenance, thus not
available for the users.

__Car status__: The set of variables that describes the status of the car, this includes but is not limited to: battery level, position, mechanical problems, availability (Free, booked, in a ride), //TODO ADD MORE IF NEEDED

##### 6. System architecture

Our system contains mobile application, WEB application and server. We will implement a client-server architecture based on common REST API and MVC pattern, so with just one server application we manage both web application and mobile application, as Fig.1.     

![Application architecture](RASD/resources/Architecture.png)

\pagebreak

#### 2. Actors

The following actors will be using the application:

##### Visitor
The person that visits the website or the mobile application without being registered. His access to the application is limited.

##### User
The person that rents the electric cars using the application.The client has a smartphone connected to the Internet and has the mobile application installed in his device. The user has access from both the mobile application and web interface.

##### Operator
The employee that supervises the operations and verifies the driving licenses.We consider that the employees of PowerEnjoy are all operators. This access grants the user the ability to manage (CRUD) the cars and users. They are the supervisors of the cars fleet. The operator is the agent that takes care if the maintenance of the cars. He can see all the cars variables.


\pagebreak

#### 3. Functional and Non-functional Requirements

#### 1. Functional Requirements

##### User requirements

// TODO Link the goals with the Goals paragraph using the same nomenclature

- The user should be able to register in the system.
    + The user can register using his phone number, and system do not need complex registration.
    + The user must be able to register to the system by providing their credentials and payment infomation.
    + The user will receive a password to access the system.
- The user should be able to modify his information
    + The user can modify his destination before or after they check-in.
    + The user can change his personal information.
    + The user can change his payment information.
- The user should see the cars around him or around an address.
    + The user must be able to open his GPS to get his or her location.
    + The system must be able to provide cars locations available according to users GPS location.
    + The system must be able to provide cars locations available according to addresses inputted by users.
- The user should be able to reserve a car.
    + The user should provide his location and his destination when he request a reservation.
    + The system must be able to check the origin location and the destination of a reservation.
    + The system must be able to transfer the request to appropriate car drivers.
- The user should be able to delete a reservation.
    + The user can cancelled a reservation before check-in.
    + The system should noticed the driver about this cancelled reservation.
    + The operator should monitor this information.
- The user should be able to unlock and check-in the car.
    + The user that reaches a reserved car must be able to tell the system he is nearby using GPS.
    + When the system accepts the information that the user reaches the reserved car, the car will be unlocked and the user can check-in the car.
- The user should be able to see how much the ride cost him.
    + The system must be able to provide the cost information of the ride after calculate the cost.
- The user should be able to check his rides history.
    + The operator can monitor the rides history.
    + The system must be able to save the user rides history in the databases.
- The user should be able to enable economy mode.
    + The user must bind his credit card and payment information before the first ride.
    + The system can save the user economy mode.

##### System Requirements

- The system should be able to locate all the cars.
    + The system must be able to detect the car's position according to the car's GPS.
- Retrieve the real-time car variables.
    + The system can check the car variables if its GPS available in the real-time.
- Calculate the price of the ride depending on the distance, time, left charge in the battery and number of passengers.
    + The system must estimate the distance between the origin location and the destination.
    + The system must calculate the time between the user chech-in and the service finish.
- The system must using a fixed fee for each passengers, and then multiple the total fee of all the passengers and reduce the price of a sharing discount percentage.
- The system must be able to check the battery empty and the parking areas to be recharged, so the system should apply a discount on the last ride.

##### Operator requirements

- Verify the driving license and identity of the drivers
    + when the car drivers registered, the operator should check the upload driving license and identity of the drivers.
- Verify the damaged and faulty cars.
    + If the car damaged or it's the faulty car, the operator must be able to verify it before the car driver login the system.
- Monitor the position of the cars.
    + The operator can monitor the car's position.

#### 2. Non-functional Requirements

##### 1. Mock-ups

##### 2. System Quality

- __Performance:__ The users will rely on the application to get a car to move around. For this reason, we have to ensure that the application is very reactive and quick.

- __Scalability:__ The application should respond properly to the increase of users, usually during commuting hours.

- __Extensibility:__ The application should be easily extensible in order to support other platforms for example Windows phones or interface with other applications. For this reason, RESTful web services will be privileged for communication between the application nodes (User's phone, car, server).

- __Privacy and security:__ Given the fact that the application holds sensitive information about the users, it should ensure the confidentiality of the information. This will be enforced by the use of SSL for network communications. In addition to that, the passwords should be encrypted using a high-security encryption.  

- __Maintainability:__ To facilitate the addition of features, the application should be easily maintainable. A well-written code and a complete documentation will be used in order to enforce this point.

##### 3. Technology Enablers

As detailed in // TODO ADD REFERENCE TO ARCHITECTURE, our application will follow the 3-tier client-server application. The application will be composed in this way:

  - *Presentation layer:* An Android mobile application and a web application should be used as a graphical user interface.
  - *Application layer:* A JEE application running on a Glassfish server will take care of running the business logic of the application.
  - *Data tier*: A MySQL server should be used in order to persist all the data that is needed for running the application.

\pagebreak

### 4. Scenarios

#### Scenario 1
Maria discovers PowerEnjoy through her social media. She is really interested because she occasionally needs a car but she don't want to invest in one. Using the mobile PowerEnjoy application, she registers herself by entering her information and payment details. She went to one of the PowerEnjoy offices to get her account validated by showing her driving license. The account is validated instantly and she is now ready to take her first ride with a PowerEnjoy car.

#### Scenario 2
John want to go to a furniture and home appliances store to get some new furniture for his apartment. However, he wants to buy so many things that he can't take them with him in public transportation. He checks PowerEnjoy's website and finds a car right next to the store. He reserves it and he is now sure that he will take all his shopping home without trouble.

#### Scenario 3
Jessy and his friends like to play football during weekends to destress. The problem is that the football field is out of the reach of public transport. Since Jessy is a PowerEnjoy member, he can reserve a car and drive all his friends to the football field. He will even benefit from a discount because he had three passengers with him.

#### Scenario 4
Maria is a very concerned about the environment and wants to adopt new habits to protect the environment. She knows that electric cars are very environment-friendly but she cannot afford an electric car. With PowerEnjoy she can easily lookup all the electric cars available on a map and reserve one using her smartphone. By using PowerEnjoy for all her commutes, Maria decreases her carbon footprint.

#### Scenario 5

\pagebreak

### 5. UML Diagrams

#### 1. Class diagram RA

![User](RASD/resources/usecases diagram 1.png)
// TODO Description  

![Operator](RASD/resources/usecases diagram 2.png)
// TODO Description

![Visitor](RASD/resources/usecases diagram 3.png)
// TODO Description

#### 3. Use case description  ------JX

#### _Use cases diagram 1_

##### User requries to take a car
- Name: User requires to take a car
- Actors: User
- Entry requirements:
  - User has login.
  - User is in the operation homepage.
- Flow of event:
  - User click the button to take a immediately.
  - User open his GPS to monitor his location.
  - User can see the cars close to his place.
  - User decides to take a car and push the take car button.
  - User input the destination and passenger numbers.
- Exit conditions: The system forwards the request to the appropriate car and the use case “operator responds to a request” begins.
- Exceptions:
  - User has not open the GPS.
  - User furnishes invalid data.

##### User requries to reserve a car
- Name : User requires to reserve a car
- Actors : User
- Entry requirements:
  - User has login.
  - User is in the operation homepage.
- Flow of event:
  - User click the "Reserve Car" button to make a reservation.
  - User chooses the car to reserve.
  - The system redirects the user to a form where the user has to give some information like theplace of departure and his destination of the ride.
  - User decides to take a car and click the take car button.
  - User sets the “number of passengers” to finish the share car information.
- Exit conditions:
  - The system forwards the request to cars which can be reserved and the use case “operator responds to a request” begins.
- Exceptions:
  - User has not open the GPS.
  - User doesn't input some basic information which is necessary, such as the starting location and destination.

##### User requries to cancel a reservation
- Name: User requires to cancel a reservation
- Actors: User
- Entry requirements:
  - User has login.
  - User is in the reservation homepage.
  - User has make a reservation.
- Flow of event:
  - User cancels the reservation.
- Exit conditions:
  - The system forwards the request to cars which has already been cancelled.
  - The system forwards the page that the reservation cannot be cancelled.
- Exceptions:
  - User has taken the car and checked-in.

#### _Use cases diagram 2_

##### Operator requries to login
- Name: Operator requries to login
- Actors: Operator
- Entry requirements:
  - There are no entry requirements.
- Flow of event:
  - The operator inputs his operate code (his ID) and his password.
  - The operator clicks on the log in button.
  - The system redirects the operator to the operate page.
- Exit conditions:
  - The operator is successfully redirected to the operate page.
- Exceptions:
  - The code and password furnished by the operator are not
correct.

##### Operator manages the system
- Name: Operator manages the system
- Actors: Operator
- Entry requirements:
  - The operator has login and has got the operate authentication.
- Flow of event:
  - The operator deal with the information of feedback.
  - Monitor the position of the cars.
- Exit conditions:
  - The operator is successfully dealed with the feedback report.
- Exceptions:
  - The operate process has already time-out.


##### Operator verefies information
- Name: Operator verefies information
- Actors: Operator
- Entry requirements:
  - The operator has login and has got the operate authentication.
- Flow of event:
  - Verify the driving license and identity of the drivers.
  - Verify the damaged and faulty cars.
- Exit conditions:
  - no information needs to be verified.
- Exceptions:
  - The operate process has already time-out.

### 6. Alloy Model and Checking


#### Hours worked
