Screenshoot Tool
================

Takes a screenshot of a specified trello board at specified intervals. Useful for making a timelapse of projects as they are completed

Technologies
------------
Ruby 2.1.2

Requirements
------------
- Save a copy of the chrome executable file available [here](http://chromedriver.storage.googleapis.com/index.html) to any location in your $PATH

Usage
-----
```shell
  $ bundle
  $ ruby main.rb [trello url] [interval between shots (s)]
```
**Example**
```shell
ruby main.rb https://trello.com/b/L5A4RxlK/bunch 100
```