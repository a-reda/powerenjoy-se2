


### Content
###### 1. Introduction

  1. Purpose
  2. Scope
  3. Definition, acronyms, abbreviations
  4. Document structure

###### 2. Architecture design

  1. Overview
  2. High level components and their interaction
  3. Component view
  4. Deploying view
  5. Run-time view
  6. Component interfaces
  7. Selected architectural styles and pattern
  8. Other design decisions

###### 3. Algorithm design

###### 4. User interface design

###### 5. Requirements traceability

###### 6. Reference

###### 7. Hours of working

\pagebreak

## 1. Introduction
### 1. Purpose

In this document, more technical details will be presented than the RASD about the PowerEnjoy system.

As we compeleted before in the RSAD, we have shown a general system what it looks like and how it works. This document aims to present how we implement the system specifically includes compnent view, Run-time view, deploying view, algorithm design,etc.  

### 2. Scope
The project PowerEnjoy, which is a service based on mobile application( based on Android) and web application.
The system allows user to reservate a electric car via mobile app and web app.

### 3. Definition, acronyms, abbreviations
- RASD: requirements analysis and specifications document

- DD: design document

- API: application programming interface; it is a common way to communicate with another system or service.


### 4. Document structure


\pagebreak

## 2. Architecture design
### 1. Overview
### 2. High level components and their interaction

![High Level Components](DD/resources/architecture/high-level-component.png)

The figure above describes the high level components and their interaction. It is based on the application architecture presented in the RASD Document // TODO Add section //. The REST Server is the main component in our application as it is the central point between the GUI (Web and mobile), the database and the cars. It holds the business logic of our system. This component will be detailed in a lower level in the following section.

\pagebreak
### 3.Component view

<<<<<<< HEAD
- NotificationHlper : Manage notifications, noticing the user that they are already close to the car.
=======
Notification Helper : Manage notifications, noticing the user that they are already close to the car.
>>>>>>> 81ceddaf99022d1704e632c7367e5f8e7abbe353

- Ride Controller : manage rides,

- Reservation Controller : manage reservation,

- Bill Controller : manage payment method and bills,

- Economic Controller : manage money saving request,

- Car Controller : manage the status and availability of cars,

- Router : route the request to related controller,

- Clients : mobile application based on Android and web application (browser),

- User Controller : manage user, access log in or sign in request.


### 4. Deploying view

![Deploying view](DD/resources/deployingview/deploying-view.png){ width=90% }

### 5. Run-time view

Sequence diagrams for
- Login process W

In this sequence diagram it can be shown that users have to input their login information to the App when they want to use the system. The login request is sent with these information to the system as parameter. First these information will be sent to the UserController which will check these in the database. If users' information(username) is found in the database and the password matchs the username then the UserController returns login_success message to the Mobile applicaiton so that user can login into the system. Otherwise, the system shows error messages.

- Reservation process RA  
- Billing process RA
- Check-in car process J
- Check-out car process J
- Money saving process W

In this sequence diagram it can be seen that if users ask for MoneySaving option they will be asked to input a destination by the system. The request is then sent with the filled information as parameter to the system.  


### 7. Selected architectural styles and pattern

##### Application architecture
As stated in the RASD Document, we will be using the 3-tier client-server architecture. The presentation tier is composed of the mobile application and the website. The application layer is composed of two parts. The REST Server that exposes the REST API and holds the business logic. It can be consumed by the web server or the mobile application. In addition, it is a security barrier between the client and the database as it prevents direct accesses to the database by the user. The other component of the application later is the web server. The web server takes care of formatting the data in webpages and communicating with the web browser. The last tier is the data tier which is, in this case, composed of only one database that takes care of persisting the data of the whole application.
The fact that the business logic is held at the level of our servers, the client-side of the application is kept as light as possible. Therefore, users can quickly access the application by installing it on their device or browsing the website.

##### Servers application
Model-View-Controller patter is used in both the web server and the application server.
