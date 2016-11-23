


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

This document aims to present how we implement the system specifically.   

## 2. Architecture design
### 1. Overview
### 2. High level components and their interaction

![High Level Components](DD/resources/architecture/high-level-component.png)

The figure above describes the high level components and their interaction. It is based on the application architecture presented in the RASD Document // TODO Add section //. The REST Server is the main component in our application as it is the central point between the GUI (Web and mobile), the database and the cars. It holds the business logic of our system. This component will be detailed in a lower level in the following section.
