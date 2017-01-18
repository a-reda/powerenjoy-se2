---
header-includes:
  - \usepackage{float}
  - \usepackage{graphicx}
  - \usepackage{array}
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

\begin{table}[]
\centering
\begin{tabular}{|c|c|c|}
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

\begin{table}[]
\centering
\begin{tabular}{|c|c|c|}
\hline
EIF & Complexity & FPs \\ \hline
Payment & Low & 5 \\ \hline
Google Map & Average & 7 \\ \hline
\multicolumn{2}{|c|}{Total} & 12 \\ \hline
\end{tabular}
\end{table}


## 2.1.2 Transaction function
### 2.1.2.1 EI: External Inputs



### 2.1.2.2 EO: External Outputs



### 2.1.2.3 EQ: External Inquiries

## 2.1.3 Overall estimation





### 2.2 Cost and effort estimation: COCOMO II



## 3.Schedule


## 4.Resource allocation


## 5.Risk management


## 6.Effort spent

###  Lidong Zhang

16/01/2017 2h
18/01/2017 4h