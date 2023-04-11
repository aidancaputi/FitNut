# FitNut

FitNut is your personalized fitness app! Using FitNut you can:
- Create a customized workout plan tailored to YOUR individual fitness level and goals
- View upcoming workouts on a calendar
- Track your current workout on an activity page

## About FitNut
FitNut is developed using Flutter. Flutter allows us to port the app across different platforms without having to write different code for each platform. It also provides us with built-in widgets that provide clean functionality without having to write it from scratch. 

FitNut uses a custom algorithm to create a personal workout plan for each user. This algorithm has been developed in house and takes into account up to 8 inputs from the user to fine tune the generated workout plans. Based on what the user inputs, a sigmoid function tailors the workout plan to fit the user’s goals.

Currently FitNut creates a custom workout plan and has a calendar view. Future planned features include:
- An activity page that tracks the user’s current workout
- Additional workout options including swimming and biking
- A settings page that allows the user to reset all data and view info about the app

## Project Organization
The project is organized as follows:
- All custom libraries are under the lib folder
- main.dart contains the home page that opens when the user first opens up the app
- plan_gen.dart contains the custom workout plan generation algorithm 
- Other functionalities are organized under folders as follows:
  - base_plan_files contains base workout plans that the algorithm then manipulates
  - calendar_files contains functions for the calendar view
  - user_inputs contains function for the user input

## Credits
Developed by Aidan Caputi, Josh Christian, and Zane Middaugh

Special thanks to Santiago Torres-Arias for providing additional help

## Licensing
FitNut is licensed by GNU GPLv3.09

![fitnulogo](https://user-images.githubusercontent.com/70337097/231203485-eeb0b041-3433-40c5-baf2-d0ddc00fe07a.jpg)

