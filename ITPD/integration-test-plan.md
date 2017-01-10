\input{ITPD/coverpage.tex}

### __Content__
1. Introduction
    1. Revision History
    2. Purpose and Scope
    3. Definitions and Abbreviations
    4. Reference Documents
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
###  1. Revision History

### 2. Purpose and Scope
In our project, the Integration Testing Plan Document is an important part, which can guarantee all the subcomponents be  integrated consistently.

The main purpose of this document is to make up the system when the subcomponents need to be revised according to the user's requirements or other unexpected reasons. The  Integration Testing Plan Document can give us a clear and simple way to organize all the testing of subcomponents. We will provide these sections as follows:
  - To introduce the integration testing subsystems and their subcomponents involved in the integration activity.
  - The Elements to be Integrated and their entry criteria.
  - A description of the Integration Testing Strategy.
  - The Sequence of Components needs to be integrated, including Software Integration Sequence and Subsystem Integration Sequence.
  - Individual steps and test description and their input data and the expected output.
  - A description of performance analysis.
  - All the tools used in testing, and a description of the operating environment that perform all the tests.

### 3. Definitions and Abbreviations
#### 1. Denitions
  - Subsystem: a single, pre-defined work environmenta and a high-level functional unit of the system.
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
### 4. Reference Documents
  - Requirements Analysis and Specification Document
  - Design Document
  - Assignments AA 2016-2017
  - Integration testing example document
  - IEEE standard on requirement engineering
## 2. Integration Strategy

### 1. Entry Criteria

For doing this part we should ensure that all units of project work can commence to achieve the corresponding unit test qulity objectives and outputing the corresponding test report.

Besides, the following documents should have been compeleted, reviewed, approved to do unit testing phase, for instance, the Requirements Analysis and Speciﬁcation Document and the Design Document. W.R.T integration testing phase, we assume that the project has already being code-complete. And there are no missing features or media elements. The product satisfies the performance and memory requirements specified by the Functional Spec. All priority bugs have been fixed and closed. Internal documentation has been updated to reflect the current state of the product.

Also, we should as possible as keeping the percentage of completion of every component with respect to its functionalities as:

- 100% for the Data Access Utilities component
- At least 90% for the Car Management System subsystem
- At least 80% for the System Administration and Account Management subsystems
- At least 70% for the client applications  


### 2. Elements to be Integrated

As we presented before in design document our system is composed by many components and units. So in this section, we will list all the main components which will be integrated in this phrase. And we concern the integration phase as two levels of abstraction:
- High-level components integration testing
- Lower-level components integration testing

For high-level integration testing, as we introduced 3-tier structure to build our system(PowerEnjoy) in Design Document so we will follow the structure to process the testing, 1. presentation tier ( mobile client, web client, web server ), 2. logic tier ( application server ), 3. persistence tier ( DB server ).

At lower-level integration testing, we decided to integrate those components which are highly depending on one another to oﬀer the higher level functionalities of PowerEnjoy. In this case, these components will be involved : Ride controller, Bill controller, Reservation controller, Economic controller. And we assume that the car controller and charge station and the interaction between car and charge station will be well integration tested by third part. 



### 3. Integration Testing Strategy

### 4. Sequence of Component/Function Integration

        Software Integration Sequence & Subsystem Integration Sequence

## 3. Individual Steps and Test Description

## 4. Tools and Test Equipment Required

## 5. Program Stubs and Test Data Required

## 6. Effort Spent
