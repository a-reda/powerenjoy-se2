---
header-includes:
  - \usepackage{float}
  - \usepackage{graphicx}
  - \usepackage{array}
  - \usepackage{adjustbox}
  - \graphicspath{ {ITPD/resources/integrations/} }
---

\input{PPD/coverpage.tex}

### __Content__
1. Introduction
 1.	Revision History
 2.	Purpose and Scope
 3.	Definitions and Abbreviations
 4.	Reference Documents
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
3. Schedule
4. Resource allocation
5. Risk management
6. Effort spent

## 1.Introduction
### 1.1 Revision History


### 1.2 Purpose and Scope
The main purpose of the Project Plan Document is to analyze the expected complexity of our project and estimate the cost and effort of our project.

By means of the Function Points and COCOMO approaches, we can give the estimate of the expected size of our project from 2 parts: Software Scale Drivers and Software Cost Drivers. The  Software Cost Drivers divides into 4 parts: product, personal, platform, project.


### 1.3 Definitions and Abbreviations


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

### 1.4 Reference Documents




## 2.Project size, cost and effort estimation

### 2.1 Size estimation: Function Points

Complexity matrix for function points

Internal Logical Files (ILF), External Interface Files (EIF), External Inputs (EI), External Outputs (EO) and External Inquiries (EQ).
Each functional component is classified as a certain complexity based on its associated file numbers such as Data
Element Types (DET), File Types Referenced (FTR) and Record Element Types (RET). The complexity matrix for
the five components is shown in Table 1. Table 2 illustrates how each function component is then assigned a weight
according to its complexity. The Unadjusted Function Point (UFP) is calculated with Equation 1, where Wij are the
complexity weights and Zij are the counts for each function component.


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

- **Ride data** : For this part, it links to reservation and bill system as well as location information but its data storage is not as much as complax as reservation. When a record of a ride is saved in table the actually saved fields only contain location information. Hence, we consider its complexity as **Low**.

- **Safe areas and charge stations data** : For this part we consider its complexity of function point is **Low** since the operation of this part is fixed and stable even there is a data updating or modifying it will be a small changing.

- **Bill data** :


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

EIF is a user identifiable group of logically related data or control information referenced by the application, but maintained within the boundary of another application. The primary intent of an EIF is to hold data referenced through one or more elementary processes within the boundary of the application counted. This means an EIF counted for an application must be in an ILF in another application. In our system(PowerEnjoy) it needs to access three external handlers(APIs):

- **Payment handler** :  the process and data storage for this part is simple as we only access the third-party API of payment when a transaction happens, our system only needs to store data and receive data so its complexity is set to **Low**.

- **Google map service** :

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

<<<<<<< HEAD
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

=======
>>>>>>> c2823b44d67aec16b0da4a49be5227372d30c059

### 2.1.2.2 EO: External Outputs

The user needs to communicate with PywerEnjoy system outside the context of an inquiry and also PywerEnjoy system needs to communicate with users. What's occasions they need to communicate with each other, we give thwm as follows:

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

An inquiry accutally is a data retrieval action, and it is a simple operation with a low complexitY. The follows provides all the External Inquiries:

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
\caption{My caption}
\label{my-label}
\begin{tabular}{|l|l|}
\hline
Function Type & Value \\ \hline
ILF: Internal Logical Files & 53 \\ \hline
EIF: External Interface Files & 12 \\ \hline
EI: External Inputs & 36 \\ \hline
EO: External Outputs & 32 \\ \hline
EQ: External Inquiries & 27 \\ \hline
Total & 160 \\ \hline
\end{tabular}
\end{table}


### 2.2 Cost and effort estimation: COCOMO II

we can give the estimate of the expected size of our project from 2 parts: Software Scale Drivers and Software Cost Drivers. The  Software Cost Drivers divides into 4 parts: product, personal, platform, project.


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

- *PREC Precedenteness* The experience of working with similar related software system in a large scale. Given that it is our first experience, this factor will be set to low.
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

#### 2.2.1 Software Scale Drivers
#### 2.2.2 Software Cost Drivers
##### 2.2.2.1 Product
##### 2.2.2.2 Personal
##### 2.2.2.3 Platform
##### 2.2.2.4 Project          


## 3.Schedule


## 4.Resource allocation


## 5.Risk management


## 6.Effort spent

###  Lidong Zhang

16/01/2017 2h
18/01/2017 4h
