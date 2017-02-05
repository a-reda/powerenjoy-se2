---
header-includes:
  - \usepackage{float}

---

\input{CID/coverpage.tex}


### __Content__

#### 1. Introduction

#### 2. Assigned class

#### 3. Functional role of class

#### 4. Code inspection checklist
       1. Naming Conventions
       2. Indention
       3. Braces
       4. File Organization
       5. Wrapping Lines
       6. Comments
       7. Java Source Files
       8. Package and Import Statements
       9. Class and Interface Declarations
       10. Initialization and Declarations
       11. Method Calls
       12. Arrays
       13. Object Comparison
       14. Output Format
       15. Computation, Comparisons and Assignments
       16. Exceptions
       17. Flow of Control
       18. Files
#### 5. Effort spent



### 1. Introduction

Code inspection is the most formal review type. It is led by the trained moderators. During inspection the documents are prepared and checked thoroughly by the reviewers before the meeting. It involves peers to examine the product. A separate preparation is carried out during which the product is examined and the defects are found.

The main goal of ode inspection is to have an efficient and readable code. This improves the maintainability of the code. It also increases the code-reuse.

### 2. Assigned Class

Requires taxcommon.class

TaxWare software

Why are they using BigDecimal. Currency calculations require precision to a specific degree, such as two digits after the decimal for most currencies. They also require a specific type of rounding behavior, such as always rounding up in the case of taxes.

Our group assigned class is '../apache-ofbiz-16.11.01/applications/order/src/main/java/org/apache/ofbiz/order/thirdparty/taxware/TaxwareUTL.java'. And our task is to perform the inspection and report on the quality status of selected code extracts using the checklist for Java code inspection reported. Also we are asked to deliver a document having the structure described in the code inspection assignments document.

### 3. Functional role of the Class

The class assigned to us is TaxWareUTL. The class, that is part of the following package
**org.apache.ofbiz.order.thirdparty.taxware** . The class is part of an integration third party software, called TaxWare. This software is a solution for calculating the taxes.

The main goal of this integration is to be able to write TaxWare libraries.
After exploring the other java files present with this one, we found class TaxwareServices that make use of TaxwareUTL. This class instantiates TaxwareUTL and sets a shipping address, a shipping amount and items. The process() function is then called in order to generate the file.  

TaxWare software

Why are they using BigDecimal. Currency calculations require precision to a specific degree, such as two digits after the decimal for most currencies. They also require a specific type of rounding behavior, such as always rounding up in the case of taxes.


### 4. Code Inspection checklist
####4.1 Naming Conventions

<<<<<<< HEAD
####4.2 Indention

####4.3 Braces

####4.4 File Organization

=======
\begin{table}[H]
\centering
\begin{tabular}{|p{3cm}|p{3cm}|p{3cm}|}
\hline
\multicolumn{1}{|c|}{Row} & \multicolumn{1}{c|}{Code} & \multicolumn{1}{c|}{Issue} \\ \hline
84 & Record rec = (Record) i.next(); & The name of variable is not meaningful. \\ \hline
123 & fos = new FileOutputStream(outFile); & The name of variable is not meaningful. \\ \hline
219 & DataFile df = null; & The name of variable is not meaningful. \\ \hline
272,273 & \begin{tabular}[c]{@{}l@{}}String headStr = retBuffer.toString().substring(0, 283);,\\ String itemStr = retBuffer.toString().substring(284);\end{tabular} & The name of variable is not meaningful. \\ \hline
288 & Record rec = (Record) i.next(); & The name of variable is not meaningful. \\ \hline
259 & ModelField mf = (ModelField) model.fields.get(a); & The name of variable is not meaningful. \\ \hline
\end{tabular}
\end{table}

####4.2 Indention

No errors found.

####4.3 Braces

\begin{table}[]
\centering
\begin{tabular}{|p{4cm}|p{8cm}|}
\hline
\multicolumn{1}{|c|}{Row} & \multicolumn{1}{c|}{Issue} \\ \hline
77, 118, 119, 243, 244, 247, 248, 463 & Missing braces for single If statment \\ \hline
\end{tabular}
\end{table}

####4.4 File Organization

\begin{table}[]
\centering
\begin{tabular}{|p{4cm}|p{8cm}|}
\hline
\multicolumn{1}{|c|}{Row} & \multicolumn{1}{c|}{Issue} \\ \hline
\begin{tabular}[c]{@{}l@{}}80, 85, 93, 101, 111, 113, 136, 138, 140, 146, 220, \\ 277, 280, 301, 312, 323, 345, 356, 367, 453, 462\end{tabular} & The blank line is useless according to the describle \\ \hline
\end{tabular}
\end{table}

>>>>>>> 33e4101f4de77b8bfdb177f8403a19baf918126d
####4.5 Wrapping Lines

####4.6 Comments

####4.7 Java Source Files


Satisfied


####4.8 Package and Import Statements


Satisfied



####4.9 Class and Interface Declarations
27.Check that the code is free of duplicates, long methods, big classes,
breaking encapsulation, as well as if coupling and cohesion are ade-
quate.

There are too many duplicates codes to make the adjustment lists(from numberLine 292), nesting three if-else statements and two of them also nesting a list of parallel if statements.

####4.10 Initialization and Declarations
satisfied
####4.11 Method Calls
satisfied
####4.12 Arrays

The numberLine 294 is :List currentItem = new ArrayList();  
A new ArrayList is desired, the constructors have not been called.
####4.13 Object Comparison

####4.14 Output Format

####4.15 Computation, Comparisons and Assignments

####4.16 Exceptions

####4.17 Flow of Control

####4.18 Files

### 5. Effort spent
