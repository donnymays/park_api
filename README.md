# README

# _Parks API_

_30 October 2020 last updated 30 October 2020_ 

#### _Application for a hypothetical National and State Park API.  A practice in creating a Rails API project_

#### By _**Donny Mays**_

## Description
_This is a project for Week 6 of the Ruby block of Epicodus.  Prompt can be seen below._

_The original instructions for the assignment include:_

Project

You've completed a few projects at the dev agency where you work and you've been given more autonomy to choose which project you'd like to work on next. The agency currently has three new back-end contracts to build APIs for their clients. Take your pick! Since this is the first time you've been given free rein on a project, take this opportunity to showcase your versatility for the project manager. This week, your goal is to have the best custom endpoint. Usefulness, creativity and conciseness of code will all be considered.

Building an API
For your final Ruby/Rails code review, you may build one of the three APIs below. (You may also build an API of your choosing if you prefer.)

Animal Shelter: Create an API for a local animal shelter. The API will list the available cats and dogs at the shelter.
Local Business Lookup: Create an API for a local business lookup. The API will list restaurants and shops in town.
Parks Lookup: Create an API for state and national parks. The API will list state and national parks.
You have the freedom to build out your APIs as you wish. Try adding the following to your API:

Endpoints for GET (all and by id), POST, PUT and DELETE.
A RANDOM endpoint that randomly returns a park/business/animal.
A second custom endpoint that accepts parameters (example: a SEARCH route that allows users to search by specific park names).
Model scopes to process parameters from API calls.
At least one of the objectives from Monday's Further Exploration lesson (such as versioning, token authentication, or serialization).
Thorough exception handling.
Complete testing with request specs.
Randomized data with Faker or your own custom seed code.
A README that thoroughly documents all endpoints, including parameters that can be passed in.

## Setup/Installation Requirements

- In terminal/command line, navigate into the directory where you would like to create a new Rails project.
- Clone this project using the 'git clone https://github.com/donnymays/parks_api.git' command in terminal/command line while in the desired directory.
- Navigate to the cloned directory and run 'bundle' in your command line to download gem dependencies.
- Run rake db:setup to create and populate the database.
- To make your own API calls open a browser, Postman or similar API client. 
- In the terminal run 'rails s' to start a server
- In either browser or API client, type the localhost port for the rails server (ex:localhost:3000) followed by the endpoints listed below.

## Endpoints
| Verb     | Route | CRUD Action    | Description   |
| -------- | -------- | -------- | -------- |
| GET | /parks/?page=[page number] | READ | Returns a list of parks, 5 park objects per page |
| GET | /parks/?park_type=['state' or 'national']&page=[page number] | READ | Returns a list of either state or national parks, 5 park objects per page |
| GET | /parks/?name=['Your search term'] | READ | Returns park objects based on search by name |
| GET | /parks/:id | READ |Returns a single park object by id |
| GET | /explore_parks/random | READ | Returns a random park object |
| POST | /parks | CREATE | Adds a new park object |
| PATCH | parks/:id | UPDATE | Updates a park object by id |
| DELETE | parks/:id | DELETE | Deletes a park object by id |

- To make a POST request, after "/parks" enter "?[parameter]=[your parameter]" seperating each parameter with "&"
- ex: "http://localhost3000/?name=acadia&park_type=national&description=easternmost park in the united states&state_name=maine&amenities=camping, hiking&entrance_fee=25"
- To make a PATCH request after /park/[id of park you'd like to update] enter "?[parmeter to be updated]=[updated parameter]"
- ex: "http://localhost:3000/parks/67?name=Denali"

## Known Bugs
_There are no known bugs at this time_

## Technologies Used
* Ruby
* Rails
* Gems: rspec, pry, faker, kaminari, factory_bot

### License
Copyright (c) 2020 **_Donny Mays_**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.