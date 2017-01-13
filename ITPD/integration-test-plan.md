

### __Content__
1. Introduction
    1. Purpose and Scope
    2. Definitions and Abbreviations
    3. Reference Documents
2. Integration Strategy
    1. Entry Criteria
    2. Elements to be Integrated
    3. Integration Testing Strategy
    4. Sequence of Component/Function Integration
        Software Integration Sequence & Subsystem Integration Sequence
3. Individual Steps and Test Description
4. Tools and Test Equipment Required
5. Program Stubs and Test Data Required
6. Effort Spent

\pagebreak

## 1. Introduction
### 1. Purpose and Scope

In our project, the Integration Testing Plan Document is an important part, which can guarantee all the subcomponents be  integrated consistently.

The main purpose of this document is to make up the system when the subcomponents need to be revised according to the user's requirements or other unexpected reasons. The  Integration Testing Plan Document can give us a clear and simple way to organize all the testing of subcomponents. We will provide these sections as follows:
  - To introduce the integration testing subsystems and their subcomponents involved in the integration activity.
  - The Elements to be Integrated and their entry criteria.
  - A description of the Integration Testing Strategy.
  - The Sequence of Components needs to be integrated, including Software Integration Sequence and Subsystem Integration Sequence.
  - Individual steps and test description and their input data and the expected output.
  - A description of performance analysis.
  - All the tools used in testing, and a description of the operating environment that perform all the tests.

### 2. Definitions and Abbreviations

#### 1. Definitions
  - Subsystem: a single, pre-defined work environment and a high-level functional unit of the system.
  - Subcomponent: Implementation of subsystem functions

#### 2. Abbreviations
  - RASD: Requirements Analysis and Specification Document
  - DD: Design Document
  - ITPD: Integration Test Plan Document
  - API: Application Programming Interface
  - GUI: Graphical User Interface
  - DBMS: Database Management System
  - GPS: Global Positioning System
  - SDK: Software Development Kit
  - Req: Requirement
  - App: Application

### 3. Reference Documents
  - Requirements Analysis and Specification Document
  - Design Document
  - Assignments AA 2016-2017
  - Integration testing example document
  - IEEE standard on requirement engineering

## 2. Integration Strategy

### 1. Entry Criteria

For doing this part we should ensure that all units of project work can commence to achieve the corresponding unit test quality objectives and output the corresponding test report.

Besides, the following documents should have been completed, reviewed, approved to do unit testing phase, for instance, the Requirements Analysis and Specification Document and the Design Document. W.R.T integration testing phase, we assume that the project has already being code-complete. And there are no missing features or media elements. The product satisfies the performance and memory requirements specified by the Functional Spec. All priority bugs have been fixed and closed. Internal documentation has been updated to reflect the current state of the product.

Also, we should as far as possible to keep the percentage of completion of every component with respect to its functionalities as:

- 100% for the Data Persistence component
- At least 90% for the **Car Management** subsystem
- At least 90% for the **Reservation and Billing Management** subsystem
- At least 80% for the **System Administration and Account Management** subsystems
- At least 70% for the **Client Application**

### 2. Elements to be Integrated

As we presented before in the design document our system is composed by many components and units. So in this section, we will list all the main components which will be integrated in this phase. And we concern the integration phase as two levels of abstraction:
- High-level components integration testing
- Lower-level components integration testing

For high-level integration testing, as we introduced 3-tier structure to build our system(PowerEnjoy) in Design Document so we will follow the structure to process the testing, 1. presentation tier ( mobile client, web client, web server ), 2. logic tier ( application server ), 3. persistence tier ( DB server ).

At lower-level integration testing, we decided to integrate those components which are highly depending on one another to oﬀer the higher level functionalities of PowerEnjoy. In this case, these components will be involved : Ride controller, Bill controller, Reservation controller, Economic controller. And we assume that the car controller and charge station and the interaction between car and charge station will be well integration tested by third part.

### 3. Integration Testing Strategy

The goal of integration testing is to uncover errors that may arise when two or more components are integrated together. As stated before, unit tests are performed and validated before conducting the integration tests. The latter provides assurance that bugs arise from the integrations and not from the components (units) themselves.

We opted for a bottom-up strategy because of many reasons. First, we are using a lot of already-developed or commercially available components that interact directly with our low level components. Since those components are already tested, they represent reliable building blocks to integrate from. Second, using a bottom-up approach removes the need to develop stubs that are needed in a top-down approach. In addition to that, our main datasources (database and car parameters) are already tested which removes the need for stubs. Furthermore, the low-level modules are the most critical in our application (model, localization and car communication) and almost all other components depend on them. So the bottom-up approach ensures that these components are integrated first making sure that they are bug-free earlier. In case errors are uncovered, they can be fixed early in the process.


### 4. Sequence of Component/Function Integration

        Software Integration Sequence & Subsystem Integration Sequence

## 3. Individual Steps and Test Description
### 1. External System
#### 1. DBMS, Model
#### 2. Google Maps Component, Localization
#### 3. CarComponents, Model

### 2. Car Management System
#### 1. Localization, Model

\begin{table}[]
\centering
\begin{tabular}{|l|l|}
\hline
\multicolumn{2}{|c|}{getLocalization(map)} \\ \hline
\multicolumn{1}{|c|}{Input} & \multicolumn{1}{c|}{Effect} \\ \hline
A null parameter & Throw nullPointerException \\ \hline
A non-null parameter & Return localization \\ \hline
\end{tabular}
\end{table}


\begin{table}[]
\centering
\begin{tabular}{|l|l|}
\hline
\multicolumn{2}{|c|}{getCarLocalization(carID, localization)} \\ \hline
\multicolumn{1}{|c|}{Input} & \multicolumn{1}{c|}{Effect} \\ \hline
A null parameter & Throw nullPointerException \\ \hline
A inexistent carID & Throw invalidValueException \\ \hline
A valid parameter & Return the current localization infromation of the car \\ \hline
\end{tabular}
\end{table}

#### 2. Car Component, Model

\begin{table}[]
\centering
\begin{tabular}{|l|l|}
\hline
\multicolumn{2}{|c|}{getCarStatus(carID)} \\ \hline
\multicolumn{1}{|c|}{Input} & \multicolumn{1}{c|}{Effect} \\ \hline
A null parameter & Throw nullPointerException \\ \hline
A non-null parameter & Return the car's status and details \\ \hline
\end{tabular}
\end{table}


\begin{table}[]
\centering
\begin{tabular}{|l|l|}
\hline
\multicolumn{2}{|c|}{getReservatedCarStatus(carID, userID, reservationID)} \\ \hline
\multicolumn{1}{|c|}{Input} & \multicolumn{1}{c|}{Effect} \\ \hline
A null parameter & Throw nullPointerException \\ \hline
carID and userID and reservationID are invalid & Throw invalidValueException \\ \hline
carID != reservation( info).carID & Throw invalidValueException \\ \hline
Valid parameters & Return details and current status of the car to the user \\ \hline
\end{tabular}
\end{table}

\begin{table}[]
\centering
\begin{tabular}{|l|l|}
\hline
\multicolumn{2}{|c|}{isAvailableCar(carID)} \\ \hline
\multicolumn{1}{|c|}{Input} & \multicolumn{1}{c|}{Effect} \\ \hline
A null parameter & Throw nullPointerException \\ \hline
A non-null parameter & Return true or false \\ \hline
\end{tabular}
\end{table}

#### 3. Car Component, Bill Component


#### 4. Car Component, Localization Component

\begin{table}[]
\centering
\begin{tabular}{|l|l|}
\hline
\multicolumn{2}{|c|}{updateCarLocalization(carID, localization)} \\ \hline
\multicolumn{1}{|c|}{Input} & \multicolumn{1}{c|}{Effect} \\ \hline
A null parameter & Throw nullPointerException \\ \hline
A inexistent carID & Throw invalidValueException \\ \hline
A valid parameter & Return the current localization infromation of the car \\ \hline
\end{tabular}
\end{table}


\begin{table}[]
\centering
\begin{tabular}{|l|l|}
\hline
\multicolumn{2}{|c|}{isCarInSafeArea(carID, localiaztion)} \\ \hline
\multicolumn{1}{|c|}{Input} & \multicolumn{1}{c|}{Effect} \\ \hline
A null parameter & Throw nullPointerException \\ \hline
A non-null parameter & Return true or false \\ \hline
\end{tabular}
\end{table}

### 3. Operations Management System
#### 1. Reservation Component, Model
- insertReservation

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{insertReservation(reservation)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A null parameter & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
\begin{tabular}[c]{@{}l@{}}By means of Model, A reservation \\ with an id already existent in the database\end{tabular} & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
Formally valid arguments & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}By means of Model, an entry containing the\\ reservation datais inserted into the database.\end{tabular}} \\ \hline
\end{tabular}
\end{table}

- delete reservation

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{deleteReservation(reservation)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A null parameter & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
\begin{tabular}[c]{@{}l@{}}By means of Model, A reservation with \\ an id already existent in the database.\end{tabular} & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
Formally valid arguments & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}By means of Model, an entry containing the \\ reservation data is deleted from the database.\end{tabular}} \\ \hline
\end{tabular}
\end{table}


- update reservation

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{updateReservationList(reservationList)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A null parameter & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
An empty array & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
An array containing somenull values & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
An array of non-null, but inexistent reservations & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
An array of valid and existing reservations & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}By means of Model, the corresponding entries \\ in the database are updated to set the reservation\\ as completed.\end{tabular}} \\ \hline
\end{tabular}
\end{table}


#### 2. Bill Component, Model
- update bill queues

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{updateBillQueues(billQueue)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A null parameter & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
An empty array & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
An array containing somenull values & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
\begin{tabular}[c]{@{}l@{}}An array of non-nullqueues, but containing\\ null values\end{tabular} & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
A non-empty array of valid bill queues & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}By means of Model, The content of the queues \\ is updated in the database.\end{tabular}} \\ \hline
\end{tabular}
\end{table}

- get bill information

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{getBillInfo(UserId, ride)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A null user id & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
An invalid user id & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
A non-existing ride & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
A valid user id and ride & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}By means of Model, Th bill information can \\ be get from database.\end{tabular}} \\ \hline
\end{tabular}
\end{table}

#### 3. Ride Component, Model
- startRide

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{startRide(carId, currentLocation)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A null location & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
A non-existing location & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
A location far from the current location & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
A current location & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}By means of Model, the corresponding location \\ in the database are selected to start rides.\end{tabular}} \\ \hline
\end{tabular}
\end{table}

- updateRideInfo

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{updateRideInfo(CarId,RideInfoAvailable)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A null location & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
A non-existing CarId & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
A set of valid parameters & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}By means of Model, the corresponding ride \\ information in the database are updated\end{tabular}} \\ \hline
\end{tabular}
\end{table}

- getRideInfo


\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{getRideInfo(CarId,RideInfoAvailable)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A non-existing CarId & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
A set of valid parameters & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}By means of Model, Returns the stored ride \\ information in the database\end{tabular}} \\ \hline
\end{tabular}
\end{table}

- endRide

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{endRide(CarId, currentLocation)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A null location & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
A non-existing CarId & \multicolumn{4}{l|}{An InvalidArgumentValueException israised.} \\ \hline
\begin{tabular}[c]{@{}l@{}}A valid CarId and current-Location, \\ the Car is on a ride and current \\ Location is inside city\end{tabular} & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}By means of Model, the ride is considered \\ closed and is,nal-ized in the database.\end{tabular}} \\ \hline
\end{tabular}
\end{table}

#### 4. Reservation Component, Car Component
- ReservationCar

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{ReservationCar(passengerId, passengerLocation, destination)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A null parameter & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
A passengerId not cor-rectly formatted & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
A passenger Location whose coordinates are invalid & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
A destination whose coordinates are invalid & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
A passengerLocation outside the city & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
A valid set of parameters & \multicolumn{4}{l|}{A new reservation is created and handled} \\ \hline
\end{tabular}
\end{table}

- existsAvailableCar

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{existsAvailableCar(reservation, location)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A null parameter & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
An inexistent location & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
A zone with invalid fields & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
A valid set of parameters & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}Returns true if a Car driver is available to\\ serve the reservation, false otherwise.\end{tabular}} \\ \hline
\end{tabular}
\end{table}


- Car accept reservation

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{CarDriverAcceptedReservation(CarId)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
An invalid CarId & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
A valid CarId & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}the car driver accept reservation and by means \\ of model, the database update instantly\end{tabular}} \\ \hline
\end{tabular}
\end{table}


- Car refused reservation

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{CarDriverRefusedReservation(CarId)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
An invalid CarId & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
A valid CarId & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}the car driver refuse reservation and by means\\ of model, the database update instantly\end{tabular}} \\ \hline
\end{tabular}
\end{table}

#### 5. Reservation Component, Bill Component
- checkBillInfo

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{checkBillInfo(reservation, ride)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A null parameters & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
An invalid parameters & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
A non-existing ride or reservation & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
A valid reservation and ride & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}From the reservation and ride, the corresponding \\ bill can be check by user\end{tabular}} \\ \hline
\end{tabular}
\end{table}

- ConfirmBillInfo

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{ConfirmBillInfo(reservation, ride)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A null parameters & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
An invalid parameters & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
A non-existing ride or reservation & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
A valid reservation and ride & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}From the reservation and ride, the corresponding\\ bill needs to be confirmed when the user check-out.\end{tabular}} \\ \hline
\end{tabular}
\end{table}

#### 6. Reservation Component, Ride Component
- ride of reservation

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{RideOfReservation(CarDriver, reservation)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A null parameter & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
\begin{tabular}[c]{@{}l@{}}A passenger location whose coordinates \\ are invalid\end{tabular} & \multicolumn{4}{l|}{An InvalidLocationException is raised.} \\ \hline
An inexistent car driver & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
A valid car driver and a reservation & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}Returns the reservation information and ride\\ information of passengers location, destination \\ and passengers number and whether share car or not.\end{tabular}} \\ \hline
\end{tabular}
\end{table}

- passenger Changed Destination

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{PassengerChangedDestination(CarDriver, reservation)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A null parameter & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
A change with an invalid destination & \multicolumn{4}{l|}{An InvalidLocationException is raised.} \\ \hline
A change with a valid destination & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}Returns the reservation information and\\ ride information of new destination\end{tabular}} \\ \hline
\end{tabular}
\end{table}


- PassengerInterruptRide

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{PassengerInterruptRide(CarDriver, reservation)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A null parameter & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
\begin{tabular}[c]{@{}l@{}}Passengers don't want to\\ go to the destination and \\ asked interrupt ride immediately\end{tabular} & \multicolumn{4}{l|}{Returns the current ride information} \\ \hline
\end{tabular}
\end{table}


#### 7. Bill Component, Ride Component
- CalculateBill

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{CalculateBill(ride)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A null parameters & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
An invalid parameters & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
A non-existing ride & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
A valid ride & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}According to the formulas we write on DD,\\  the bill can be calculated\end{tabular}} \\ \hline
\end{tabular}
\end{table}

- GetStoredBillInfo

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{GetStoredBillInfo(UserId)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A null location & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
\begin{tabular}[c]{@{}l@{}}A location whose coordinates \\ are invalid\end{tabular} & \multicolumn{4}{l|}{A InvalidArgumentException is raised.} \\ \hline
A non-existing car id & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
UserId is valid & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}User can get the bill information \\ which stored in the database\end{tabular}} \\ \hline
\end{tabular}
\end{table}

#### 8. Ride Component, Localization Component
- MonitorCurrentLocation


\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{MonitorCurrentLocation(CarId, location)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A null location & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
\begin{tabular}[c]{@{}l@{}}A location whose \\ coordinates are \\ invalid\end{tabular} & \multicolumn{4}{l|}{An InvalidArgumentValueException is raised.} \\ \hline
A non-existing car id & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
\begin{tabular}[c]{@{}l@{}}CarId is valid, location\\ is inside city\end{tabular} & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}By GPS ,its status is set to available and \\ its location is written in the database and \\ monitor on the user application of his curr\\ -ent ride.\end{tabular}} \\ \hline
\end{tabular}
\end{table}

 - GetStoredRideRoute
 \begin{table}[]
 \centering
 \begin{tabular}{|l|l|l|l|l|}
 \hline
 \multicolumn{5}{|c|}{GetStoredRideRoute(CarId,location)} \\ \hline
 Input & \multicolumn{4}{l|}{Effect} \\ \hline
 A null location & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
 \begin{tabular}[c]{@{}l@{}}A location whose \\ coordinates are invalid\end{tabular} & \multicolumn{4}{l|}{A InvalidArgumentException is raised.} \\ \hline
 A non-existing car id & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
 \begin{tabular}[c]{@{}l@{}}CarId is valid, location\\ is stored in the database\end{tabular} & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}From the location， user can get the\\ ride route exists in the database\end{tabular}} \\ \hline
 \end{tabular}
 \end{table}

#### 9. Localization Component, Economic Component

- RemindEconomicInfo


\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{RemindEconomicInfo(UserId)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A non-existing User id & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
UserId is valid & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}System will remind the economic information when the user make\\ a reservation and on his location who wants to share cars\end{tabular}} \\ \hline
\end{tabular}
\end{table}

- CalculateEconomicRide

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{CalculateEconomicRide(UserId, location)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A null location & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
\begin{tabular}[c]{@{}l@{}}A location whose coordinates\\  are invalid\end{tabular} & \multicolumn{4}{l|}{A InvalidArgumentException is raised.} \\ \hline
A non-existing User id & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
UserId is valid & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}The ride can be paid economically because of sharing cars, \\ the percentageof discount can be calculate by the formulas\\ we given on the DD\end{tabular}} \\ \hline
\end{tabular}
\end{table}
- MonitorEconomicRide

\begin{table}[]
\centering
\begin{tabular}{|l|l|l|l|l|}
\hline
\multicolumn{5}{|c|}{MonitorEconomicRide(UserId, location)} \\ \hline
Input & \multicolumn{4}{l|}{Effect} \\ \hline
A null location & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
\begin{tabular}[c]{@{}l@{}}A location whose coordi\\ -nates are invalid\end{tabular} & \multicolumn{4}{l|}{A InvalidArgumentException is raised.} \\ \hline
A non-existing User id & \multicolumn{4}{l|}{A NullArgumentException is raised.} \\ \hline
UserId is valid & \multicolumn{4}{l|}{\begin{tabular}[c]{@{}l@{}}The economic ride information can be \\ monitor on the user's application,\end{tabular}} \\ \hline
\end{tabular}
\end{table}


### 4. User Management System
#### 1. User Component, Model

\begin{table}[]
\centering
\begin{tabular}{ll}
\multicolumn{2}{c}{creatUser(user)} \\ \hline
\multicolumn{1}{c}{\textit{Input}} & \multicolumn{1}{c}{\textit{Effect}} \\ \hline
A null parameter & Throw nullPointerException \\ \hline
A non-null parameter & Insert the user's information into the DB \\ \hline
\end{tabular}
\end{table}


\begin{table}[]
\centering
\begin{tabular}{ll}
\multicolumn{2}{c}{updateUserInfo(user)} \\ \hline
\multicolumn{1}{c}{\textit{Input}} & \multicolumn{1}{c}{\textit{Effect}} \\ \hline
A null parameter & Throw nullPointerException \\ \hline
A non-null parameter & The user's information is updated in the DB \\ \hline
\end{tabular}
\end{table}


\begin{table}[]
\centering
\begin{tabular}{ll}
\multicolumn{2}{c}{feedbackRequest(feedback)} \\ \hline
\multicolumn{1}{c}{\textit{Input}} & \multicolumn{1}{c}{\textit{Effect}} \\ \hline
A null parameter & Throw nullPointerException \\ \hline
A non-null parameter & The user's feedback information is inserted into the DB \\ \hline
\end{tabular}
\end{table}



\begin{table}[]
\centering
\begin{tabular}{|l|l|}
\hline
\multicolumn{2}{|c|}{udateUserPassword (userID, password, newPassword)} \\ \hline
\multicolumn{1}{|c|}{Input} & \multicolumn{1}{c|}{Effect} \\ \hline
A null parameter & Throw nullPointerException \\ \hline
UserID dosen't match password & Throw invalidValueException \\ \hline
A valid parameter & Update the user's password in DB \\ \hline
\end{tabular}
\end{table}

#### 2. User Component, Car Component

\begin{table}[]
\centering
\begin{tabular}{ll}
\multicolumn{2}{c}{unlockCar (userID, reservationInfo)} \\ \hline
\multicolumn{1}{c}{\textit{Input}} & \multicolumn{1}{c}{\textit{Effect}} \\ \hline
A null parameter & Throw nullPointerException \\ \hline
UserID dosen't match the reservationInfo & Throw invalidValueEception \\ \hline
Valid parameter & Unlock the car \\ \hline
\end{tabular}
\end{table}


\begin{table}[]
\centering
\begin{tabular}{ll}
\multicolumn{2}{c}{getAvailableCarList (userID, localization)} \\ \hline
\multicolumn{1}{c}{\textit{Input}} & \multicolumn{1}{c}{\textit{Effect}} \\ \hline
A null parameter & Throw nullPointerException \\ \hline
An invalid localization & Throw invalidValueException \\ \hline
A valid parameter & Return the availabe car list to the user \\ \hline
\end{tabular}
\end{table}

#### 3. User Component, Bill Component

\begin{table}[]
\centering
\begin{tabular}{|l|l|}
\hline
\multicolumn{2}{|c|}{getBill(userID, ride)} \\ \hline
\multicolumn{1}{|c|}{Input} & \multicolumn{1}{c|}{Effect} \\ \hline
A null parameter & Throw nullPointerException \\ \hline
UserID dosen't match  the ride information & Throw invalidValueException \\ \hline
A valid parameter & Return the bill details to the user \\ \hline
\end{tabular}
\end{table}


\begin{table}[]
\centering
\begin{tabular}{|l|l|}
\hline
\multicolumn{2}{|c|}{checkHistoryBill(userID, date)} \\ \hline
\multicolumn{1}{|c|}{Input} & \multicolumn{1}{c|}{Effect} \\ \hline
A null parameter & Throw nullPointerException \\ \hline
A non-null parameter & Return the bill details to the user for those dates \\ \hline
\end{tabular}
\end{table}

#### 4. User Component, Reservation Component

\begin{table}[]
\centering
\begin{tabular}{|l|l|}
\hline
\multicolumn{2}{|c|}{reservationRequest(userID, reservationInfo)} \\ \hline
\multicolumn{1}{|c|}{Input} & \multicolumn{1}{c|}{Effect} \\ \hline
A null parameter & Throw nullPointerException \\ \hline
A non-null parameter & Return ture \\ \hline
\end{tabular}
\end{table}


\begin{table}[]
\centering
\begin{tabular}{|l|l|}
\hline
\multicolumn{2}{|c|}{cancelReservation(userID, reservationID)} \\ \hline
\multicolumn{1}{|c|}{Input} & \multicolumn{1}{c|}{Effect} \\ \hline
A null parameter & Throw nullPointerException \\ \hline
A reservationID that dosen't exsit & Throw invalidValueException which means the user didn't make a reservation \\ \hline
Valid userID and reservation ID & Remove the reservation from DB and add this operation into the log \\ \hline
\end{tabular}
\end{table}

## 4. Tools and Test Equipment Required

## 5. Program Stubs and Test Data Required

## 6. Effort Spent

### Reda Aissaoui
- 08/01/2017 2h
- 11/01/2017 3h

- 08/01/2017 2h
- 09/01/2017 3h
- 10/01/2017 3h
