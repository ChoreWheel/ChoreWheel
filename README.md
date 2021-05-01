Original App Design Project - README Template
===

# ChoreWheel

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
ChoreWheel is an app designed to organize chores amongst roommates and ensure they get done in time. [add more]

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Productivity
- **Mobile:** Yes.
- **Story:** People have issues with their roommates
- **Market:** College students and people with roommates
- **Habit:** Depends on the severity of the issue
- **Scope:** Feasible

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* Spin a wheel to assign randomized chores to housemates
* Send reminder notifications to housemates
* Modify Chore/Name List
* User Login (Google account prob)
* profile page, with a TODO list of chores
* Submit captioned photo evidence of completion of chores

**Optional Nice-to-have Stories**

* Wheel customization (Dark mode)
* Point Leaderboard for doing chores (badges)
* Group list for cleaning supplies

### 2. Screen Archetypes

* Chore Wheel
   * wheel that spins on-click
   * calendar view with due dates
* Profile Page
   * TODO list
* Leaderboard
   * point ranking based on timelessness and level of completion
* Photoboard
    * photo evidence of complete/incomplete chores
* House page
    * List of housemates with their assigned chores 
    * button to send invites and reminders  

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Chore Wheel
* Profile Page
* Leaderboard
* Photoboard
* House Page

**Flow Navigation** (Screen to Screen)

* [list first screen here]
   * [list screen navigation here]
   * ...
* [list second screen here]
   * [list screen navigation here]
   * ...

## Wireframes
![](https://i.imgur.com/lpHlx3f.png)

## Schema

**Models**
Post
| Property | Type | Description |
| -------- | -------- | -------- |
|objectid | String     | unique id for the user post (default field)|
|image| File | pictures of chores that users upload |
|houseid|String|unique id created when a house is created|
|chores| String | names of the chores|
|caption| String | captions for pictures|


**Networking**
List of network requests by screen
* Login
    * Login
    * (Read/Get)Check if account is associated to existing house
* Create House Page
    * (Create/Post) Create house 
        * (Post) add roommates
    * (Update/Put) Join existing house
* Home Page
    * (Create/Post) Assign chores 
* House Page
    * (Create/Post) Add roommate
    * (Delete) Remove existing roommate
* Leaderboard
    * (Read/Get) see who has most points
* Photoboard
    * (Create/post) Create new post object
    * (Create/post) Add caption to post
* Profile Page
    * (Update/put) Update user profile image
    * (Update/put) Update user profile information
* Calendar
    * (Read) chores due by which roommate
