# TwentyEight Health Challenge

* Ruby version `2.7.2`

* Rails version `6.1.3`, an update was done to repair MimeMagic

Development notes:

Introduction

Thank you for your interest in Twentyeight Health!  As part of the interview process,
we ask that engineering applicants complete a small, take-home coding challenge.
This should take fewer than 60 minutes to complete. Please complete this by Monday 5/9 EOD.
Feel free to implement the challenge below how you see fit.


Part 1

When signing up for Twentyeight Health, a patient has the ability to choose a single
product from one or more categories:  Birth Control, Emergency Contraception, Testing
Kits, OTC Products.  Each product also has attributes such as name, identifier, quantity,
price, and instructions.

Patients sign up a full name, email, date of birth, and the state in which they currently reside.

The app also has a list of all US states (constants provided), whether or not we offer services
in that state, and the minimum required age for a patient.

Using the codebase provided, model these objects and their relationships and seed the database.

          User Stories:

          As a New Patient
            I need to be able to Sign Up with:
              Full Name, Email, Date of Birth, US State of residence

          After Signup,
            As a User
              I need to choose a single product for one or more categories
                Birth Control, Emergency Contraception, Testing Kits, OTC Products.



Part 2

We have just been informed that certain products cannot be offered in some states.

What types of questions come to mind?  How would you model this change?  Feel free to
either implement in the codebase, sketch a diagram, or write your answer.


Part 3

We’ve now been informed that certain products can be offered in some states, but the
minimum age requirement is different for these products than all other ones in this state.

What types of questions come to mind?  How would you model this change?  Feel free to
either implement in the codebase, sketch a diagram, or write your answer.


Submission
To submit your coding challenge, please upload your completed codebase, commentary,
sketches, etc. to a file sharing site (Github, Google Drive, Dropbox, etc.) and send
the link to eric@twentyeighthealth.com and amy@twentyeighthealth.com.

