# Welcome to LÖVE Boilerplate

## Overview

LÖVE Boilerplate offers a pre-defined best-practice folder structure for your LÖVE projects. Furthermore it comes with a variety of tools like a bundler script that automatically packages your project into a LÖVE app - right now it's only available on *nix systems, but Windows will follow. 
It also includes third party libraries like AnAL, an animation library for LÖVE, as well as the gamestate library from the Hump project which makes it possible to divide your game into several gamestates for easier maintenance and a clearer structure. Quickie, a neat GUI framework is included as well. In the future my own 2D lighting engine (LÜMOS) will be part of the project as well.
There are also some other classes included: a camera, a player, a world, the game gamestate and a pre-filled main.lua file so that you can directly start off with your own LÖVE project!

## Components and features

### Core classes and entities

* **Camera** - offers a fully featured camera class with parallax background scrolling support (written by Michael Ebens and slightly modified by me, [Website](http://nova-fusion.com/))
* **World** - represents the world of your game which holds all the objects, structures, enemies …
* **Player** - represents the player of the game

### States

* **Game** - this is the main gamestate in which the actual game logic takes place

### Third party libraries

* **AnAL** - An animation library helping you to animate the different pieces of your game (written by Bart Bes. [Code & Documentation]( https://love2d.org/wiki/AnAL))
* **Hump (Gamestate)** - Makes it possible to divide your game into different gamestates, like main menu, pause menu, game … (written by Matthias Richter aka vrld. [Code & Documentation](https://github.com/vrld/Hump))
* **Quickie** - An immediate mode gui library for assembling the user interfaces of your game (written by Matthias Richter aka vrld. [Code & Documentation](https://github.com/vrld/Quickie))

### Bundler

Recursively zips your game and turns it into a LÖVE app with one press of a button. After that your game is directly executed so you can test it immediately.

### Pre-defined folder structure

* **main.lua**
* **levels** - contains the level files
* **lib** - contains all the libraries for your LÖVE project
	* **core** - contains the core libraries, like camera and world
	* **entities** - contains entities, like player, enemies …
	* **states** - contains the gamestates
	* **vendor** - contains third party libraries
		* **anal**
		* **hump**
		* **quickie**
* **media** - contains all your media
	* **audio** - contains audio related media
		* **effects** - contains sound effects (jumping, shooting, …)
		* **music** - contains the game music
	* **fonts** - contains all the game fonts
	* **images** - contains all the images
		* **effects** - contains effect images (jumping, shooting, …)
		* **entities** - contains images for player, enemies etc.
* **bundle.sh** - the bundler (a simple bash script)

### Object-oriented paradigm

The project aims at an object-oriented architecture which makes it easier to transform your game idea into an actual game. Therefore everything is an instantiable class in the project (excluding the third party libraries).

## Things to come

* Bundler for Windows
* More configuration options for the bundler, maybe even with a real platform-independent GUI
* Sample Project (I am working on a game right now that uses the template, its code-name is "Lava Temple"). Stay tuned!
* Tutorials
* Game states and classes for menus and transitions so that you can build an intro for your game as well
* More libraries for networking and 2D lighting
* A better class system with inheritance and base classes that offer standard functionality like getting the vertices of an object and getters / setters for attributes
* VIM scripts aiming to make your life easier when coding a LÖVE project
* Unit testing framework for your projects

## Contribution

You are very welcome to contribute to the project. Just fork the project, work on your feature and create a pull request to get it in. In that way we get a chance to discuss and review the changes. Also try to keep the coding style I have used in the project so far and stick to the object-oriented approach.

This project aims to help people learning Lua / LÖVE as well. Therefore everything should be publicly available, changeable and reusable (third party libraries excluded as they contain their own licenses).
