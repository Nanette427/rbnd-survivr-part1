Colrizer gem for RB-ND
===================

Features
---------------
Ruby String class extension. Adds methods to set text color, using ANSI escape sequences. 

Usage instruction
---------------

This gem provide 3 class methods on string:
 
`String.colors`: this method returns an array with all the color available.
`String.create_colors` : this methods dynamically create all the color methods. 
`String.sample_color`: a simple method just to demonstrate the usage. 
 
 To colorize a string use: 
 ```ruby
require 'colorizer'

 my_string = "My string"
 my_string.blue(my_string)
 ```

Installation
--------------
gem install colorizer-0.0.0.gem
