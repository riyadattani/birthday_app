# Birthday App

The instructions for building this app can be found [here](https://github.com/makersacademy/course/blob/master/intro_to_the_web/post_challenges/birthday_app.md).

# Approach

1. First I set up the environment required:
* Web app framework: Sinatra
* Test framework: Capybara
* Middleware: Shotgun

2. I used process modelling to break down the problem into smaller steps. My model included the POST/GET requests that I think would occur and the .erb files I thought I needed. <br>
User story breakdown:<br>
* The user gets a homepage that they first visits <br>
* The user fills in their information on this page (name and birthday)<br>
* The user posts this to the controller (app.rb)<br>
* The app.rb uses ruby to code the countdown till the users birthday or wish the user happy birthday<br>
* The user is redirected to the greeting.erb route which shows either the countdown/birthday message.<br>

# What I could improve on
* refactoring the feature tests into a web_helper.rb file to improve presentation/readability.
* Use the Time class in a better way.

# What I learned and enjoyed
* How the controller and views interact with each other.
* CSS styling and HTML, (especially adding the gifs).
