# TwentyEight Health Challenge

* Ruby version `2.7.2` OR `3.0.4`
* Rails version `6.1.3`, an update was done to repair MimeMagic

## Development notes:

### Part 1
```
When signing up for Twentyeight Health, a patient has the ability to choose a single
product from one or more categories: Birth Control, Emergency Contraception, Testing
Kits, OTC Products. Each product also has attributes such as name, identifier, quantity,
price, and instructions.
Patients sign up a full name, email, date of birth, and the state in which they currently reside.
The app also has a list of all US states (constants provided), whether or not we offer services
in that state, and the minimum required age for a patient.
Using the codebase provided, model these objects and their relationships and seed the database.
```

####  User Stories:

* As a New Patient
  * I need to be able to Sign Up with:
    * Full Name, Email, Date of Birth, US State of residence
* After Signup,
  * As a User
    * I need to choose a single product for one or more categories: Birth Control, Emergency Contraception, Testing Kits, OTC Products.

This first part is already implemented in the code.

The implemented models are:
* User
* Category
* Product
* State

There are some basic tests for each model.
There is a lack of a validation to let a user only choose one product for each category.


### Part 2
```
We have just been informed that certain products cannot be offered in some states.
What types of questions come to mind? How would you model this change? Feel free to
either implement in the codebase, sketch a diagram, or write your answer.
```
#### Questions

* Need to cancel any pending order or deliveries?
* Is this severe enough to put the site on maintenance until fixed?
* Need our current products a review or just the new ones?
* This new scenario, how can be patched ASAP?
* Was it an avoidable problem?
* What should we have done to prevent this from happening?
* What we can do to prevent this from happening again in the future?

If certain products cannot be offered in some states, we need to add a constraint for this.

We can add a new association in the Product model related to States as the way already are Users and Products related.
By this way, we can be able to fetch available states for a Product (or vicecersa) with `example_product.states` or `example_state.products` and it will be relativily easy to modify the permitted locations. Maybe it would be nice to rename or add aliases to the accesor methods.

The way I may acchieve this is implementing a new `has_and_belongs_to_many` association.
This might end up on a giant table, but I don't think it's too much of a bother.

As part of the solution, we need to 'block' the users from purchasing in a unavailable state.
This can be facilitated adding a scope to the User model.
(I know this can be done, but I tried to find the right way to write the Query and I didn't be able to figure it how without implementing the code. I will try to get this done for a possible future interview.)

### Part 3

```
We’ve now been informed that certain products can be offered in some states, but the
minimum age requirement is different for these products than all other ones in this state.
What types of questions come to mind? How would you model this change? Feel free to
either implement in the codebase, sketch a diagram, or write your answer.
```
#### Questions
All the questions in part 2 plus:

* Seems that some states are a little nitpick with this regulations, pretty sure this will happen again. So, how can made the requirements for each State more extensible?

* We are going to need to change a lot of things if tomorrow some states declare that any product can't be offered online?

* What happens if tomorrow we also need to filter a product because the shipping Companies got or no a licence to ship medicaments?

* May we be able to implement some more general sense of the "Availability" of a product regards others possible conditions now present or not?

* It seems that an "Availability" model maybe can order this present and future issues.

The Availability of a Product, does not need to be in constant change, so if we ends up with a giant and maybe slow table, does not neccesarily be a problem.

I think about it something like:

 | ndc | state | criteria | value | available |
 |---- | ------ | ----- | ---- | ---- |
| 0-0-1 | Texas | min_age | 16 | true |
| 0-0-1 | Dakota | min_age | 18 | true |
| 0-0-1 | Dakota | online_sell | false | false |
| 0-0-1 | Texas | online_sell | true | true |
| 0-0-1 | Texas | shipping_company | FedEx | true |
| 0-0-1 | Texas | shipping_company | UPS | false |
| 4-0-4 | Dakota | min_age | 16 | true |
| 4-0-4 | Dakota | online_sell | true | true |


This probably ends up in a bit complex queries, but, with right defined scopes, is at least extensible. I'm not sure how maintenable this can get across time.
