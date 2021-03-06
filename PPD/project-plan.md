---
header-includes:
  - \usepackage{float}
  - \usepackage{graphicx}
  - \usepackage{array}
  - \usepackage{adjustbox}
  - \usepackage{rotating}
  - \graphicspath{ {PPD/resources/} }
---

\input{PPD/coverpage.tex}

### __Content__
1. Introduction
 1.	Purpose and Scope
 2.	Definitions and Abbreviations
 3.	Reference Documents
2. Project size and effort cost
    1. Size estimation: function points
      1. Data function
        1. ILF: Internal Logical Files
        2. EIF: External Interface Files
      2. Transaction function
        1. EI: External Inputs
        2. EO: External Outputs
        3. EQ: External Inquiries
      3. Overall estimation
    2. Cost and effort estimation: COCOMO II
      1. Software Scale Drivers
      2. Software Cost Drivers
        1. Product
        2. Personal
        3. Platform
        4. Project
      3. Effort equation
      4. Schedule estimation
3. Schedule
4. Resource allocation
5. Risk management
6. Effort spent

\pagebreak

## 1.Introduction

### 1.1 Purpose and Scope

The main purpose of the Project Plan Document is to analyze the expected complexity of our project and estimate the cost and effort of our project.

Using Function Points and COCOMO approaches, we will give an estimate of the expected size of our project from 2 parts: Software Scale Drivers and Software Cost Drivers. The  Software Cost Drivers is divided into 4 parts: product, personal, platform, project.

We will also present a Schedule and Resource Allocation charts. Finally, we will identify the main risk areas that may alter the good execution of the project. We will present some measures in order to mitigate the risks.


### 1.2 Definitions and Abbreviations


### Abbreviations

- ILF: Internal Logical Files
- EIF: External Interface Files
- EI: External Inputs
- EO: External Outputs
- EQ: External Inquiries
- DET: DataElement Types
- FTR: File Types Referenced
- RET: Record Element Types
- UFP: The Unadjusted Function Point
- SLOC: Counting Source Lines of Code
- RELY: Required Software Reliability
- EM: effort multipliers
- PM: Person-Months
- PM/KSLOC: Person-Months/Kilo-Source Lines of Code
- SF(E): Scale Factors
- DATA: Data Base Size
- CPLX: Product Complexity
- RUSE: Required reusability
- DOCU: Documentation match to life-cycle needs
- ACAP: Analyst Capability
- PCAP: Programmer Capability
- PCON: Personnel Continuity
- APEX：Application Experience
- PLEX：Platform Experience
- LTEX：Language and Toolset Experience


### 1.3 Reference Documents

- Project planning example document
- Project Management Basics
- CII Model Man 2000.0
- Assignments AA 2016-2017

## 2.Project size, cost and effort estimation

### 2.1 Size estimation: Function Points


In this section we will present the different functional components: Internal Logical Files (ILF), External Interface Files (EIF), External Inputs (EI), External Outputs (EO) and External Inquiries (EQ). Each one of them is classified by complexity that is assigned depending on its associated file numbers such as Data
Element Types (DET), File Types Referenced (FTR) and Record Element Types (RET). We will assign function point to each functional component regarding our project. Afterwards, we will calculate the Unadjusted Function Points (UFP).


\begin{table}[H]
\centering
\begin{tabular}{|>{\centering\arraybackslash}p{3.5cm}|>{\centering\arraybackslash}p{1cm}|>{\centering\arraybackslash}p{1cm}|>{\centering\arraybackslash}p{1cm}|}
\hline
\textbf{ILF/EIF} & \multicolumn{3}{c|}{Data Elements Type} \\ \hline
Record Element Types & 1-19 & 20-50 & 51+ \\ \hline
1 & Low & Low & Avg \\ \hline
2-5 & Low & Avg & High \\ \hline
6+ & Avg & High & High \\ \hline
\end{tabular}
\caption{Internal Logical Files (ILF) and External Interface Files (EIF)}
\end{table}

\begin{table}[H]
\centering
\begin{tabular}{|>{\centering\arraybackslash}p{3.5cm}|>{\centering\arraybackslash}p{1cm}|>{\centering\arraybackslash}p{1cm}|>{\centering\arraybackslash}p{1cm}|}
\hline
\textbf{EI} & \multicolumn{3}{c|}{Data Elements Type} \\ \hline
Record Element Types & 1-4 & 5-15 & 16+ \\ \hline
0-1 & Low & Low & Avg \\ \hline
2 & Low & Avg & High \\ \hline
3+ & Avg & High & High \\ \hline
\end{tabular}
\caption{External Inputs (EI)}
\end{table}


\begin{table}[H]
\centering
\begin{tabular}{|>{\centering\arraybackslash}p{3.5cm}|>{\centering\arraybackslash}p{1cm}|>{\centering\arraybackslash}p{1cm}|>{\centering\arraybackslash}p{1cm}|}
\hline
\textbf{EO/EQ} & \multicolumn{3}{c|}{Data Elements Type} \\ \hline
File Type Referenced & 1-5 & 6-19 & 20+ \\ \hline
0-1 & Low & Low & Avg \\ \hline
2-3 & Low & Avg & High \\ \hline
4+ & Avg & High & High \\ \hline
\end{tabular}
\caption{External Outputs (EO) and External Inquiries (EQ)}
\end{table}

\begin{table}[H]
\centering
\begin{tabular}{>{\centering\arraybackslash}p{3.5cm}|>{\centering\arraybackslash}p{1cm}|>{\centering\arraybackslash}p{1cm}|>{\centering\arraybackslash}p{1cm}|}
\cline{2-4}
\textbf{} & \multicolumn{3}{c|}{\textbf{Weight}} \\ \hline
\multicolumn{1}{|c|}{\textbf{Component}} & \textit{Low} & \textit{Average} & \textit{High} \\ \hline
\multicolumn{1}{|c|}{External Inputs} & 3 & 4 & 6 \\ \hline
\multicolumn{1}{|c|}{External Outputs} & 4 & 5 & 7 \\ \hline
\multicolumn{1}{|c|}{External Inquiries} & 3 & 4 & 6 \\ \hline
\multicolumn{1}{|c|}{Internal Logical Files} & 7 & 10 & 15 \\ \hline
\multicolumn{1}{|c|}{External Interface Files} & 5 & 7 & 10 \\ \hline
\end{tabular}
\caption{Complexity Weight Assignment }
\end{table}


## 2.1.1 Data function
### 2.1.1.1 ILF: Internal Logical Files

ILFs represent data that is stored and maintained within the boundary of the application. In our system (PowerEnjoy) information is stored through numbers of ILFs.

- **Car data** : As the one of main units, the car, in our system its information has to be stored by system. The infromation about the car will be saved in a table or joint tables which include color of the car, CarID, car plate number, status(available, reserved, in using or unavailable), state(locked or unlocked), battery level, isCarInSafeArea, etc. For example, a record of the car is inserted into table, for this transaction the **DET** is only 7 and the **RET** is 1 so according to the ILF table we consider the complexity of this part is **Low**.

- **User data** : This contains all the information about users and joint other data, for instance, user accounts, bills information, reservation information and so on. So when a record of user is modified or inserted may associate with different entities in the system. In this case many fields and tables will be saved or changed, thus we consider the complexity of this function point as **Avg**.

- **Reservation data** : In this part, almost all other data are associate with the reservation operation. For example when a reservation is added or deleted or modified all the fields and tables which relate to it will be changed and saved like the available number of car, the bill table, users information, location and so on. So for this part its complexity of function points we set **High**.  

- **Ride data** : For this part, it links to reservation and bill system as well as location information but its data storage is not as much as complex as reservation. When a record of a ride is saved in table the actually saved fields only contain location information. Hence, we consider its complexity as **Low**.

- **Safe areas and charge stations data** : For this part we consider its complexity of function point is **Low** since the operation of this part is fixed and stable even there is a data updating or modifying it will be a small changing.

- **Bill data** : For this part we consider its complexity as **Avg** because the data of this part associate with user data, reservation data, ride data, etc. So when a record of bill is inserted in the table it will link to many attributes.

By using the previously defined tables(ILF complexity matrix), this is the count we obtain:

\begin{table}[H]
\centering
\begin{tabular}{|p{6cm}|>{\centering\arraybackslash}p{2cm}|>{\centering\arraybackslash}p{2cm}|}
\hline
ILF & Complexity & FPs \\ \hline
Car data & Low & 7 \\ \hline
User data & Average & 10 \\ \hline
Reservation data & High & 15 \\ \hline
Ride data & Low & 7 \\ \hline
Safe areas and charge stations data & Low & 7 \\ \hline
Bill data & Low & 7 \\ \hline
\multicolumn{2}{|c|}{Total} & 53 \\ \hline
\end{tabular}
\end{table}


### 2.1.1.2 EIF: External Interface Files

EIF is a user identifiable group of logically related data or control information referenced by the application, but maintained within the boundary of another application. The primary intent of an EIF is to hold data referenced through one or more elementary processes within the boundary of the application counted. This means an EIF counted for an application must be in an ILF in another application. In our system(PowerEnjoy) it needs to access two external handlers(APIs):

- **Payment handler** :  the process and data storage for this part is simple as we only access the third-party API of payment when a transaction happens, our system only needs to store data and receive data so its complexity is set to **Low**.

- **Google map service** : compare to the Payment handler the Google map API is more frequently used and more complex. For example given a address, get the correspondent coordinates, or return the result of estimation time which means from point to another point when given two locations. So we set this to a **Avg** complexity level.

According to the EIF complexity matrix we get the result as follow:

\begin{table}[H]
\centering
\begin{tabular}{|p{6cm}|>{\centering\arraybackslash}p{2cm}|>{\centering\arraybackslash}p{2cm}|}
\hline
EIF & Complexity & FPs \\ \hline
Payment & Low & 5 \\ \hline
Google Map & Average & 7 \\ \hline
\multicolumn{2}{|c|}{Total} & 12 \\ \hline
\end{tabular}
\end{table}


## 2.1.2 Transaction function
### 2.1.2.1 EI: External Inputs

PowerEnjoy's system requires a multitude of inputs coming from different sources. The first one is the inputs made by the system operator. This includes all the inserts of cars, zones, charging stations and users. The second source is the user as he enters personal information, credentials and reservations. The last source is cars' data that flows from all the fleet. The latter is essential since all the operations are based on the status of cars.

Operator
--------
- Insert cars, zones, charging stations and users: This operations have a low complexity therefore they contribute with 10 FPs all together.
- Validate user: This operation have an average complexity as it requires searching the user then validating his account. This will account for 4 FPs.

User
----
- User registration: The user need to enter his personal information in order to create an account. In this step, data validation is required. Therefore, this operation have an average complexity. It will represent 4FPs.
- Login: The user enters his credentials and they should be validated at the level of the server. This operation contributes with 4FPS
- Reservations: The user should be able to create new reservation, modify them and also delete them. This is a high complexity operation as it requires to verify the current available cars. The reservation creation will account for 10 FPs while the modification and deletion are 5 FPs each.

Cars
----

As specified before, this operation need to be performed with high accuracy and timeliness. It involves also the management of different data sources. It is a high complexity operation, so it will account for 10FPs.

\begin{table}[H]
\centering
\begin{tabular}{|p{6cm}|>{\centering\arraybackslash}p{2cm}|>{\centering\arraybackslash}p{2cm}|}
\hline
\textbf{EI} & \textbf{Complexity} & FPs \\ \hline
Insertions by the operator & Low & 3*4 \\ \hline
User validation & Average & 4 \\ \hline
User registration & Average & 4 \\ \hline
Login & Average & 4 \\ \hline
Create reservation & High & 6 \\ \hline
Modify and delete reservation & Low & 3*2 \\ \hline
\multicolumn{2}{|l|}{Total} & 36 \\ \hline
\end{tabular}
\end{table}


### 2.1.2.2 EO: External Outputs

The user needs to communicate with PowerEnjoy system outside the context of an inquiry and also PywerEnjoy system needs to communicate with users. What's occasions they need to communicate with each other, we give thwm as follows:

- Notify the car which ride has been assigned to it
- Notify the user that the reservation has been assigned to a specific car.
- Notify the user the sharing car service.
- Notify the user has been checked in.
- Notify the user has been checked out.
- Notify the bill of the user after ride.
- Notify the car the user who made the reservation has been near the car.
- Notify the car the user has changed his location.

\begin{table}[H]
\centering
\begin{tabular}{|p{6cm}|>{\centering\arraybackslash}p{2cm}|>{\centering\arraybackslash}p{2cm}|}
\hline
EO & Complexity & FPs \\ \hline
Notification to the car which ride has been assigned to it & Low & 4 \\ \hline
Notification to the user which car he reserved & Low & 4 \\ \hline
Notification to the user the sharing car service & Low & 4 \\ \hline
Notification to the car that the user has been checked in & Low & 4 \\ \hline
Notification to the car that the user has been checked out & Low & 4 \\ \hline
Notification to the user the bill he has paid after ride & Low & 4 \\ \hline
Notification to the car the user who made the reservation has been near the car & Low & 4 \\ \hline
Notification to the car the user has changed his location & Low & 4 \\ \hline
\multicolumn{2}{|l|}{Total} & 32 \\ \hline
\end{tabular}
\end{table}

### 2.1.2.3 EQ: External Inquiries

An inquiry actually is a data retrieval action, and it is a simple operation with a low complexity. The following provides all the External Inquiries:

- A car can retrieve its complete rides and the bill got by each ride.
- The user can retrieve the history of his reservations and the bill has been paid for the rides associated with the reservations and the economic rides conditions.
- The operator can retrieve the number of cars in a specific zone, the location of current cars in a specific zone and the reservation has been reserved or processed.


\begin{table}[H]
\centering
\begin{tabular}{|p{6cm}|>{\centering\arraybackslash}p{2cm}|>{\centering\arraybackslash}p{2cm}|}
\hline
EQ & Complexity & FPs \\ \hline
Retrieve complete rides of cars & Low & 3 \\ \hline
Retrieve the car's bill got by each ride & Low & 3 \\ \hline
Retrieve user reservation history & Low & 3 \\ \hline
Retrieve the user's bill has been paid for the rides & Low & 3 \\ \hline
Retrieve the user's economic rides & Low & 3 \\ \hline
Retrieve a list of the number of cars in a specific zone & Low & 3 \\ \hline
Retrieve the location of current cars in a specific zone & Low & 3 \\ \hline
Retrieve the reservation has been reserved & Low & 3 \\ \hline
Retrieve the reservation has been processed & Low & 3 \\ \hline
\multicolumn{2}{|l|}{Total} & 27 \\ \hline
\end{tabular}
\end{table}

## 2.1.3 Overall estimation

The following table summarizes the results of our estimation activity:

\begin{table}[H]
\centering
\begin{tabular}{|l|l|}
\hline
\textit{Function Type} & \textit{Value} \\ \hline
ILF: Internal Logical Files & 53 \\ \hline
EIF: External Interface Files & 12 \\ \hline
EI: External Inputs & 36 \\ \hline
EO: External Outputs & 32 \\ \hline
EQ: External Inquiries & 27 \\ \hline
\textbf{Total} & 160 \\ \hline
\end{tabular}
\end{table}

Considering Java Enterprise Edition as a development platform and dis-
regarding the aspects concerning the implementation of the mobile applications, we can estimate the total number of lines of code.
Depending on the conversion rate, we have a lower bound of:

\begin{table}[H]
\centering
\begin{adjustbox}{center}
\begin{tabular}{|l|l|l|}
\hline
\multicolumn{3}{|l|}{\textbf{SLOC = 160*46 = 7360}} \\ \hline
\end{tabular}
\end{adjustbox}
\end{table}

and an upper bound of

\begin{table}[H]
\centering
\begin{adjustbox}{center}
\begin{tabular}{|l|l|l|}
\hline
\multicolumn{3}{|l|}{\textbf{SLOC = 160*67 = 10720}} \\ \hline
\end{tabular}
\end{adjustbox}
\end{table}


### 2.2 Cost and effort estimation: COCOMO II

In order to estimate the size of the project, we will use COCOMO II. According to COCOMO II, We can give the estimate of the expected size of our project regarding 2 parts: Software Scale Drivers and Software Cost Drivers. The  Software Cost Drivers is composed of 4 parts: product, personal, platform, project.

#### 2.2.1 Software Scale Drivers

\begin{table}[H]
\begin{adjustbox}{center}
\centering
\begin{tabular}{|l|l|l|l|l|l|l|}
\hline
\textbf{Scale Factors} & \textbf{Very Low} & \textbf{Low} & \textbf{Nominal} & \textbf{High} & \textbf{Very High} & \textbf{Extra High} \\ \hline
\textbf{\begin{tabular}[c]{@{}l@{}}PREC \\ $SF_{j}$\end{tabular}} & \begin{tabular}[c]{@{}l@{}}thoroughly\\ unpreceden\\ ted\\ 6.20\end{tabular} & \begin{tabular}[c]{@{}l@{}}largely\\ unpreceden\\ ted\\ 4.96\end{tabular} & \begin{tabular}[c]{@{}l@{}}somewhat\\ unpreceden\\ ted\\ 3.72\end{tabular} & \begin{tabular}[c]{@{}l@{}}generally\\ familiar\\ 2.48\end{tabular} & \begin{tabular}[c]{@{}l@{}}largely\\ familiar\\ 1.24\end{tabular} & \begin{tabular}[c]{@{}l@{}}thoroughly\\ familiar\\ 0.00\end{tabular} \\ \hline
\textbf{\begin{tabular}[c]{@{}l@{}}FLEX\\ $SF_{j}$\end{tabular}} & \begin{tabular}[c]{@{}l@{}}rigorous\\ 5.07\end{tabular} & \begin{tabular}[c]{@{}l@{}}occasional\\ relaxation\\ 4.05\end{tabular} & \begin{tabular}[c]{@{}l@{}}some\\ relaxation\\ 3.04\end{tabular} & \begin{tabular}[c]{@{}l@{}}general\\ conformity\\ 2.03\end{tabular} & \begin{tabular}[c]{@{}l@{}}some\\ conformity\\ 1.01\end{tabular} & \begin{tabular}[c]{@{}l@{}}general\\ goals\\ 0.00\end{tabular} \\ \hline
\textbf{\begin{tabular}[c]{@{}l@{}}RESL\\ $SF_{j}$\end{tabular}} & \begin{tabular}[c]{@{}l@{}}little (20\%)\\ 7.07\end{tabular} & \begin{tabular}[c]{@{}l@{}}some (40\%)\\ 5.65\end{tabular} & \begin{tabular}[c]{@{}l@{}}often (60\%)\\ 4.24\end{tabular} & \begin{tabular}[c]{@{}l@{}}generally\\ (75\%)\\ 2.83\end{tabular} & \begin{tabular}[c]{@{}l@{}}mostly\\ (90\%)\\ 1.41\end{tabular} & \begin{tabular}[c]{@{}l@{}}full (100\%)\\ 0.00\end{tabular} \\ \hline
\textbf{\begin{tabular}[c]{@{}l@{}}TEAM\\ $SF_{j}$\end{tabular}} & \begin{tabular}[c]{@{}l@{}}very difficult\\ interactions\\ 5.48\end{tabular} & \begin{tabular}[c]{@{}l@{}}some\\ difficult\\ interactions\\ 4.38\end{tabular} & \begin{tabular}[c]{@{}l@{}}basically\\ cooperative\\ interactions\\ 3.29\end{tabular} & \begin{tabular}[c]{@{}l@{}}largely\\ cooperative\\ 2.19\end{tabular} & \begin{tabular}[c]{@{}l@{}}highly\\ cooperative\\ 1.10\end{tabular} & \begin{tabular}[c]{@{}l@{}}seamless\\ interactions\\ 0.00\end{tabular} \\ \hline
\textbf{\begin{tabular}[c]{@{}l@{}}PMAT\\ $SF_{j}$\end{tabular}} & \begin{tabular}[c]{@{}l@{}}Level 1\\ Lower\\ 7.80\end{tabular} & \begin{tabular}[c]{@{}l@{}}Level 1 Upper\\ 6.24\end{tabular} & \begin{tabular}[c]{@{}l@{}}Level 2\\ 4.68\end{tabular} & \begin{tabular}[c]{@{}l@{}}Level 3\\ 3.12\end{tabular} & \begin{tabular}[c]{@{}l@{}}Level 4\\ \\ 1.56\end{tabular} & \begin{tabular}[c]{@{}l@{}}Level 5\\ \\ 0.00\end{tabular} \\ \hline
\end{tabular}
\end{adjustbox}
\caption{Scale Factor Values, $SF_{j}$, for COCOMO II Models }
\end{table}


The table above present some of of the most important factors, defined by COCOMO II, that effect the duration and cost of a project. The scale factors are the following:

- *PREC Precedentness* The experience of working with similar related software system in a large scale. Given that it is our first experience, this factor will be set to low.
- *FLEX Development Flexibility*  This scale represents to which extent we should comply to external specifications and specifications. Since the specifications were derived from a broad description of the system, we will set this value to Nominal.
- *RESL Risk Resolution* The amount of risk management that is reserved for the project. As the risk management in our project is average, this will be set to nominal
- *TEAM Team cohesion* It represents the problems that may arise from the project stakeholders. Since this project doesn't involve a big number stakeholders, we will set this one to Very High
- *PMAT Process Maturity* Defines how much the software engineering process is well established and improved. In our case, we will set this factor to Level 1 as its our first experience.


From the Scale Factor Value defined by COCOMO II, we obtain the following values for the Scale Factors

\begin{table}[H]
\centering
\begin{tabular}{|p{4cm}|p{2cm}|p{2cm}|}
\hline
\textbf{Scale Factors} & \textbf{Level} & \textbf{Value} \\ \hline
\textbf{PREC $SF_{1}$} & Low & 4.96 \\ \hline
\textbf{FLEX $SF_{2}$} & Nominal & 3.04 \\ \hline
\textbf{RESL $SF_{3}$} & Nominal & 4.24 \\ \hline
\textbf{TEAM $SF_{4}$} & Very High & 1.10 \\ \hline
\textbf{PMAT $SF_{5}$} & Level 1 & 7.80 \\ \hline
\multicolumn{2}{|r|}{\textbf{Total}} & 21.14 \\ \hline
\end{tabular}
\caption{Estimated scale factors}
\end{table}

Afterwards, we need to calculate a scale component using the following formula and $B=0.91$:

\centerline{$E = B + 0.01* \sum_{j=1}^{5}SF_{j}$}

Applying the numbers we get $\mathbf{E = 1.1214}$

#### 2.2.2 Software Cost Drivers
##### 2.2.2.1 Product
- **Required Software Reliability**

If the effect of a software failure is only slight inconvenience
then RELY is very low. If a failure would risk human life then RELY is very high. The PowerEnjoy is an essential way to get a car and it can also provide sharing service which is benefit for both of user and car driver, but when the user want to reserve a car to go somewhere,  this system still can be replace by other application, like CartoGo and Uber. For this reason, the RELY cost driver is set to nominal.

\begin{table}[H]
\begin{adjustbox}{center}
\centering
\begin{tabular}{|p{2cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|}
\hline
\multicolumn{7}{|c|}{RELY Cost Driver} \\ \hline
RELY Descriptors: & slight inconvenience & low, easily recoverable losses & moderate, easily recoverable losses & high financial loss & risk to human life &  \\ \hline
Rating Levels & Very Low & Low & Nominal & High & Very High & Extra High \\ \hline
Effort Multipliers & 0.82 & 0.92 & 1.00 & 1.10 & 1.26 & n/a \\ \hline
\end{tabular}
\end{adjustbox}
\end{table}

- **Data Base Size**

We consider the size of our database.What wo need to store are users information, car information, ride information, location information and bill information and something else, so we guess our database will reach a 3GB database. Due to the line of codes will be at lease of 10.000 SLOC, the ratio D/P (measured
as testing DB bytes/program SLOC) is about 300, which result in the value in this part will be high.

\begin{table}[H]
\begin{adjustbox}{center}
\centering
\begin{tabular}{|p{2cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|}
\hline
\multicolumn{7}{|c|}{DATA Cost Driver} \\ \hline
DATA* Descriptors & Testing DB bytes/ PgmSLOC \textless 10 & 10 \textless= D/P \textless100 & 100 \textless= D/P \textless1000 & D/P \textgreater= 1000 & 90th percentile &  \\ \hline
Rating Levels & Very Low & Low & Nominal & High & Very High & Extra High \\ \hline
Effort Multipliers & n/a & 0.90 & 1.00 & 1.14 & 1.28 & n/a \\ \hline
\end{tabular}
\end{adjustbox}
\end{table}


- **Product complexity**

Complexity is divided into five areas: control operations, computational operations, device-dependent operations, data management operations, and user interface management operations. According to the complexity of our project, we set very high for the CPLX.

\begin{table}[H]
\begin{adjustbox}{center}
\centering
\begin{tabular}{|p{2cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|}
\hline
\multicolumn{7}{|c|}{CPLX Cost Driver} \\ \hline
Rating Levels & Very Low & Low & Nominal & High & Very High & Extra High \\ \hline
Effort Multipliers & 0.73 & 0.87 & 1.00 & 1.17 & 1.34 & 1.74 \\ \hline
\end{tabular}
\end{adjustbox}
\end{table}

- **Required reusability**

Since the component’s careful design, documentation, and testing has been well down before, so we set the The RUSE cost driver (Required Reusability) as nominal.

\begin{table}[H]
\begin{adjustbox}{center}
\centering
\begin{tabular}{|p{2cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|}
\hline
\multicolumn{7}{|c|}{RUSE Cost Driver} \\ \hline
RUSE Descriptors: &  & none & across project& across program & across product line & across multiple product lines \\ \hline
Rating Levels & Very Low & Low & Nominal & High & Very High & Extra High \\ \hline
Effort Multipliers & n/a & 0.95 & 1.00 & 1.07 & 1.15 & 1.24 \\ \hline
\end{tabular}
\end{adjustbox}
\end{table}


- **Documentation match to life-cycle needs**

The rating scale for the DOCU cost driver is evaluated in terms of the suitability of the project’s documentation to its life-cycle needs. In our case, the Documents are really detailed and every need of the product life-cycle can be predicted by our Documents, so we set the DOCU as nominal.


\begin{table}[H]
\begin{adjustbox}{center}
\centering
\begin{tabular}{|p{2cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|}
\hline
\multicolumn{7}{|c|}{DOCU Cost Driver} \\ \hline
DOCU Descriptors: & Many lifecycle needs uncovered & Some lifecycle needs uncovered & Right-sized to life-cycle needs & Excessive for life-cycle needs & Very excessive for life-cycle needs & \\ \hline
Rating Levels & Very Low & Low & Nominal & High & Very High & Extra High \\ \hline
Effort Multipliers & 0.81  & 0.91 & 1.00 & 1.11 & 1.23 & n/a \\ \hline
\end{tabular}
\end{adjustbox}
\end{table}



##### 2.2.2.2 Personal

- **Analyst Capability**

The analysis and design ability, efficiency and thoroughness, and the ability to communicate and cooperate are really important. All of the elements have been well done because of our effort. For this reason, this parameter is set to high.


\begin{table}[H]
\begin{adjustbox}{center}
\centering
\begin{tabular}{|p{2cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|}
\hline
\multicolumn{7}{|c|}{ACAP Cost Driver} \\ \hline
ACAP Descriptors: & \begin{tabular}[c]{@{}c@{}}15th\\ percentile\end{tabular} & \begin{tabular}[c]{@{}c@{}}35th\\ percentile\end{tabular} & \begin{tabular}[c]{@{}c@{}}55th\\ percentile\end{tabular} & \begin{tabular}[c]{@{}c@{}}75th\\ percentile\end{tabular} & \begin{tabular}[c]{@{}c@{}}90th\\ percentile\end{tabular} &  \\ \hline
Rating Levels & Very Low & Low & Nominal & High & Very High & Extra High \\ \hline
Effort Multipliers & 1.42 & 1.19 & 1.00 & 0.85 & 0.71 &  \\ \hline
\end{tabular}
\end{adjustbox}
\end{table}

- **Programmer Capability**

We consider the evaluation of Programmer Capability(PCAP) should be as a team rather than as
individuals. The ability, efficiency and thoroughness, and the ability to communicate and cooperate  are really important. For this reason, this parameter is set to high.

\begin{table}[H]
\begin{adjustbox}{center}
\centering
\begin{tabular}{|p{2cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|}
\hline
\multicolumn{7}{|c|}{PCAP Cost Driver} \\ \hline
PCAP Descriptors: & \begin{tabular}[c]{@{}c@{}}15th\\ percentile\end{tabular} & \begin{tabular}[c]{@{}c@{}}35th\\ percentile\end{tabular} & \begin{tabular}[c]{@{}c@{}}55th\\ percentile\end{tabular} & \begin{tabular}[c]{@{}c@{}}75th\\ percentile\end{tabular} & \begin{tabular}[c]{@{}c@{}}90th\\ percentile\end{tabular} &  \\ \hline
Rating Levels & Very Low & Low & Nominal & High & Very High & Extra High \\ \hline
Effort Multipliers & 1.34 & 1.15 & 1.00 & 0.88 & 0.76 &  \\ \hline
\end{tabular}
\end{adjustbox}
\end{table}



- **Personnel Continuity**

In our case, the parameter is nominal. since we spent a lot of time on this project from October 2016 to February 2017 and we still need to make a presentation on March 2017, we have spent half year to do this project.The reason why we can't set this parameter as high or very high is because we only spent our spare time to do this project after our class. For this reason, the PCON is set to nominal.

\begin{table}[H]
\begin{adjustbox}{center}
\centering
\begin{tabular}{|p{2cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|}
\hline
\multicolumn{7}{|c|}{PCON Cost Driver} \\ \hline
PCON Descriptors: & 48\% / year & 24\% / year & 12\% / year & 6\% / year & 3\% / year &  \\ \hline
Rating Levels & Very Low & Low & Nominal & High & Very High & Extra High \\ \hline
Effort Multipliers & 1.29 & 1.12 & 1.00 & 0.90 & 0.81 &  \\ \hline
\end{tabular}
\end{adjustbox}
\end{table}


- **Application Experience**

The rating for APEX is dependent on the level of applications experience of the project team developing the software system. We all have more than 4 years study experience of computer science, but our development skills are still limited. For this reason, the PCON is set to nominal.


\begin{table}[H]
\begin{adjustbox}{center}
\centering
\begin{tabular}{|p{2cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|}
\hline
\multicolumn{7}{|c|}{APEX Cost Driver} \\ \hline
APEX Descriptors: & \textless=2 months & 6 months & 1 year & 3 year & 6 year &  \\ \hline
Rating Levels & Very Low & Low & Nominal & High & Very High & Extra High \\ \hline
Effort Multipliers & 1.22 & 1.10 & 1.00 & 0.88 & 0.81 & n/a \\ \hline
\end{tabular}
\end{adjustbox}
\end{table}


- **Platform Experience**

The usage of platforms, including graphic user interface, database, networking, and distributed
middleware capabilities, we have used all the platforms before within a limited time.  For this reason, the PLEX is set to nominal.

\begin{table}[H]
\begin{adjustbox}{center}
\centering
\begin{tabular}{|p{2cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|}
\hline
\multicolumn{7}{|c|}{PLEX Cost Driver} \\ \hline
PLEX Descriptors: & \textless=2 months & 6 months & 1 year & 3 year & 6 year &  \\ \hline
Rating Levels & Very Low & Low & Nominal & High & Very High & Extra High \\ \hline
Effort Multipliers & 1.19 & 1.09 & 1.00 & 0.91 & 0.85 & n/a \\ \hline
\end{tabular}
\end{adjustbox}
\end{table}


- **Language and Toolset Experience**

For our team, the experience on the project’s programming language, experience on the project’s supporting tool can be set to nominal.

\begin{table}[H]
\begin{adjustbox}{center}
\centering
\begin{tabular}{|p{2cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|}
\hline
\multicolumn{7}{|c|}{LTEX Cost Driver} \\ \hline
LTEX Descriptors: & \textless=2 months & 6 months & 1 year & 3 year & 6 year &  \\ \hline
Rating Levels & Very Low & Low & Nominal & High & Very High & Extra High \\ \hline
Effort Multipliers & 1.20 & 1.09 & 1.00 & 0.92 & 0.84 &  \\ \hline
\end{tabular}
\end{adjustbox}
\end{table}

##### 2.2.2.3 Platform

- **Execution Time Constraint (TIME)**

In order to improve costumers' satisfaction and the stability, fluency of our system we assume that the execution time of the system is short in real scene so a **Nominal** level will be set here.

\begin{table}[H]
\begin{adjustbox}{center}
\centering
\begin{tabular}{|p{2cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|}
\hline
\multicolumn{7}{|c|}{TIME Cost Driver} \\ \hline
TIME Descriptors: &  &  & ≤ 50\% use of available execution time & 70\% use of available execution time & 85\% use of available execution time & 95\% use of available execution time \\ \hline
Rating Levels & Very Low & Low & Nominal & High & Very High & Extral High \\ \hline
Effort Multipliers & n/a & n/a & 1.00 & 1.11 & 1.29 & 1.63 \\ \hline
\end{tabular}
\end{adjustbox}
\end{table}

- **Main Storage Constraint (STOR)**

Considering to make the best use of the system resource and the system has enough room to backup important data we will set the rating level as **High**.

\begin{table}[H]
\begin{adjustbox}{center}
\centering
\begin{tabular}{|p{2cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|}
\hline
\multicolumn{7}{|c|}{STOR Cost Driver} \\ \hline
STOR Descriptors: &  &  & ≤ 50\% useof available storage & 70\% use ofavailable storage & 85\% use ofavailable storage & 95\% use ofavailable storage \\ \hline
Rating Levels & Very Low & Low & Nominal & High & Very High & Extral High \\ \hline
Effort Multipliers & n/a & n/a & 1.00 & 1.05 & 1.17 & 1.46 \\ \hline
\end{tabular}
\end{adjustbox}
\end{table}

- **Platform Volatility (PVOL)**

According to the identifier of the PVOL, in our case the platform is the mobile-phone operation system and computer OS. So the platform volatility depends on how often the customer update the OS of their devices. For the stability of our core system we don't expect the platform changes frequently. But as developers We have to update our application periodically to serve customers. Hence the the rating level be set as **Low**.

\begin{table}[H]
\begin{adjustbox}{center}
\centering
\begin{tabular}{|p{2cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|}
\hline
\multicolumn{7}{|c|}{PVOL Cost Driver} \\ \hline
PVOL Descriptors: &  & Major change every 12mo.; Minor change every 1 mo. & Major: 6mo.; Minor:2 wk. & Major: 2mo.; Minor:1 wk. & Major: 2wk.; Minor: 2days &  \\ \hline
Rating Levels & Very Low & Low & Nominal & High & Very High & Extral High \\ \hline
Effort Multipliers & n/a & 0.87 & 1.00 & 1.15 & 1.30 & n/a \\ \hline
\end{tabular}
\end{adjustbox}
\end{table}

##### 2.2.2.4 Project     

- **Use of Software Tools (TOOL)**   

Our project environment is quite complete and it should be strong and a tool with mature life cycle and moderately integrated due to this the parameter wil be set as **High**.

\begin{table}[H]
\begin{adjustbox}{center}
\centering
\begin{tabular}{|p{2cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|}
\hline
\multicolumn{7}{|c|}{TOOL Cost Driver} \\ \hline
TOOL Descriptors & edit, code, debug & simple, front end, backendCASE, little integration & basic lifecycle tools, moderately integrated & strong, mature lifecycle tools, moderately integrated & strong, mature, proactive life-cycle tools, well integrated with processes, methods, reuse &  \\ \hline
Rating Levels & Very Low & Low & Nominal & High & Very High & Extral High \\ \hline
Effort Multipliers & 1.17 & 1.09 & 1.00 & 0.90 & 0.78 & n/a \\ \hline
\end{tabular}
\end{adjustbox}
\end{table}

- **Multisite Development (SITE)**

Since our team have a project meeting every week and we live in same city, we communicate with each other by social media software like whats APP and Facebook when we are not working together so we set the rating level of this part as **High**.

\begin{table}[H]
\begin{adjustbox}{center}
\centering
\begin{tabular}{|p{2cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|}
\hline
\multicolumn{7}{|c|}{SITE Cost Driver} \\ \hline
SITE: Collocation Descriptors: & International & Multi-city and Multi company & Multi-city or Multi company & Same city or metro.area & Same building or complex & Fully collocated \\ \hline
SITE: Communications Descriptors: & Some phone, mail & Individual phone, FAX & Narrow band email & Wide band electronic communication. & Wide band elect. comm., occasional video conf. & Interactive multimedia \\ \hline
Rating Levels & Very Low & Low & Nominal & High & Very High & Extral High \\ \hline
Effort Multipliers & 1.22 & 1.09 & 1.00 & 0.93 & 0.86 & 0.80 \\ \hline
\end{tabular}
\end{adjustbox}
\end{table}

- **Required Development Schedule (SCED)**

We will set this parameter as **Nominal** which the value is 1.00. As a programer it is our duty to finish our job and present a completed project to customer on time.

\begin{table}[H]
\begin{adjustbox}{center}
\centering
\begin{tabular}{|p{2cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|p{1.5cm}|}
\hline
\multicolumn{7}{|c|}{SCED Cost Driver} \\ \hline
SCED Descriptors & 75\%of nominal & 85\%of nominal & 100\%of nominal & 130\%of nominal & 160\%of nominal &  \\ \hline
Rating Levels & Very Low & Low & Nominal & High & Very High & Extral High \\ \hline
Effort Multipliers & 1.43 & 1.14 & 1.00 & 1.00 & 1.00 & n/a \\ \hline
\end{tabular}
\end{adjustbox}
\end{table}

Overall, our results are sumarized by the following table:

\begin{table}[H]
\begin{adjustbox}{center}
\centering
\begin{tabular}{|l|l|l|}
\hline
\textit{Cost Driver} & \textit{Factor} & \textit{Value} \\ \hline
Required Software Reliability (RELY) & Nominal & 1.00 \\ \hline
Database size (DATA) & High & 1.14 \\ \hline
Product complexity (CPLX) & Very high & 1.34 \\ \hline
Required Reusability (RUSE) & Nominal & 1.00 \\ \hline
Documentation match to life-cycle needs(DOCU) & Nominal & 1.00 \\ \hline
Analyst capability (ACAP) & High & 0.85 \\ \hline
Programmer capability (PCAP) & High & 0.88 \\ \hline
Personnel Continuity (PCON) & Nominal & 1.00 \\ \hline
Application Experience (APEX) & Nominal & 1.00 \\ \hline
Platform Experience(PLEX) & Nominal & 1.00 \\ \hline
Language and Tool Experience (LTEX) & Nominal & 1.00 \\ \hline
Execution Time Constraint (TIME) & Nominal & 1.00 \\ \hline
Main storage constraint (STOR) & High & 1.05 \\ \hline
Platform volatility (PVOL) & Low & 0.87 \\ \hline
Usage of Software Tools (TOOL) & High & 0.90 \\ \hline
Multisite development (SITE) & High & 0.93 \\ \hline
Required development schedule (SCED) & Nominal & 1.00 \\ \hline
\multicolumn{2}{|l|}{\textbf{Product of all cost drivers}} & 0.87367 \\ \hline
\end{tabular}
\end{adjustbox}
\end{table}

### 2.2.3 Effort equation

According to COCOMO II manuel we got Eq.1 to calculate the value of Effort:

$Effort = A\cdot EAF\cdot KSLOC^{E}$  (Eq.1)

where A = 2.94(from COCOMO II), EAF = 0.87367 (calculated from cost drivers analysis), E = 1.1214(calculated from scale drivers analysis), and KSLOC was calculated before in function points section and we got 7.360 as the lower bound of KSLOC and 10.720 as its upper bound.

So the final result as following:

- $Effort_{Lower} = 24.0886$
- $Effort_{Upper} = 36.7244$

### 2.2.4 Schedule estimation

The formula of duration as following:

- $Duration = 3.67\cdot Effort^{F}$

where $F = 0.28 + 0.2  (E - B)$ and $B = 0.91$ according to COCOMO II manual. Since the value of Effort is in a range so for the upper bound of duration we got:

-  $Duration_{Upper} = 11.7225$ months

The lower bound of duration :

- $Duration_{Lower} = 10.2328$ months

From the results, the overall time of the entire project is around 10 month but no more than 12 month. And the result is quite close to our estimated time.


## 3.Schedule

It is necessary to set a schedule to make sure the project is proceeded as planned and finished on time. So we created a project schedule by using Gantt Project tool to keep the project goes well as we expected. In this schedule will show when the project is started and what we did during each period. We also assume that the project will be continued to maintain the integrality and authenticity of the entire development process. So we added the 'Implementation and support' and 'Testing' as well as 'Evaluation' procedures though these will not be performed at the end of the project.

\begin{sidewaysfigure}
\includegraphics[width=\textwidth]{gantter-chart}
\caption{Project's Gantter Chart}
\end{sidewaysfigure}

\pagebreak

## 4.Resource allocation

In this section we will present how we distribute our team resource to finish our project by creating a Gantter chart. In the Gantter Chart, it can be shown that each of us is responsible for each part of the project and how much time we spent on each of tasks. Note that every time there will be a group meeting before we starting our single task. So that we can avoid misunderstanding and conflict among team members when we are working separately. Again we also assume that we are working at developing phase so in the chart there are incomplete tasks.

\begin{sidewaysfigure}
\includegraphics[width=\textwidth]{staff-resources-allocation}
\caption{Resources Allocation Diagram}
\end{sidewaysfigure}


\pagebreak

## 5.Risk management

The following section serves as a basis for risk management. We will identify the main risks that may arise during the execution of our project's schedule. The main areas assessed in risk identification are new technologies, user and functional requirements, system architecture, performance and finally organizational. In order to monitor and mitigate risk, we will present as well some precautions and good practices to achieve our objective.

The first area is **New and Unproven Technologies**. The main business objective is the management of a fleet of "smart" electric cars that connect to PowerEnjoy servers through internet. We will have to gather car data in timely and real-time manner. Difficulties may arise when trying to keep an up-to-date data store of the situation of the cars. Data, for example, may be out of date and users are shown expired information. Consultation with engineers that took part in similar projects is advised to identify the main difficulties. Car communication is the new technology in this project. The server side, since it will be mainly developed in JAVA which is a proven technology, will not present a high risk.

**User and Functional Requirements** may represent a high risk that will push us to steer into other directions. This is mainly because the user and functional requirements gathering is a tedious process. Furthermore, the requirements may change or other ones may arise during discovery and integrations process. Therefore, the requirements should be well-defined and validated with all the stakeholders of the project. In addition, a sufficient margin should be planned in the schedule to allow some time to adapt to new requirements changes. This margin is also useful if another risk caused the slowing down of the development process.

Another area that should be thoroughly inspected is the **Application and System Architecture**. The decisions made in this area represent the backbone of the application. They guide the design and other important decisions later on in the process. A wrong decision may cause delays if inadequate architecture decisions are made. In this case, there will be a need of a design refactoring and implementation changes. Research about experience in similar application is needed to reduce the risk coming from this area.

Moreover **Performance** should be assessed for all the duration of the project. Performance benchmarks should be performed at each step to avoid discovering performance problems at the end of the project. Key performance indicators should be well-defined and checked. This project relies a lot on real-time data, so performance should be closely monitored.

Last but not least, **Organizational** risks have to be assessed as well. Project management should plan for an efficient execution of the project while keeping a suitable balance between the resources of the project and the expectation of the client. Reports and documentation should be produced at each milestone of the project. Through the communication and validation of these documentation with the stakeholders, we are sure that we are in a good track while recognizing problems before they cause significant delay.

Code management, centralization and back-up should be performed. Version control is essential to keep back-ups, history and code sharing among the different developers. It is also a useful tool to keep track of how much work is being done and by whom.

Stakeholders are also important in our risk analysis. Since the project is to be deployed in a city, many stakeholders are taking part of it. City council and project sponsors have an important role in the decision making. Therefore, they should be always kept in contact as stated before. The legal environment of the project should as well be kept in consideration. There should be a strong legal consultation about the regulations.

To sum up, many risks may arise during the project execution. Although some of the risks are presented above, we should keep in mind that other unapparent risks may arise. A sufficient time margin should be included in the schedule in order to meet the project deadlines.    


\pagebreak

## 6.Effort spent

###  Lidong Zhang

- 16/01/2017 2h
- 18/01/2017 4h
- 19/01/2017 2h
- 20/01/2017 4h
- 21/10/2017 3h

### Jinling Xing

- 17/01/2017 2h
- 19/01/2017 6.5h
- 21/01/2017 5h

### Reda Aissaoui

- 16/01/2017 1h
- 18/01/2017 3h
- 19/01/2017 4h
- 21/01/2017 2h
- 22/01/2017 1h
