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



### ILF: Internal Logical Files



### EIF: External Interface Files



### EI: External Inputs



### EO: External Outputs



### EQ: External Inquiries





### 2.2 Cost and effort estimation: COCOMO II



## 3.Schedule


## 4.Resource allocation


## 5.Risk management


## 6.Effort spent
