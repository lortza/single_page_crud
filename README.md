# README

This is a Rails 5 app using AJAX to perform all CRUD actions from the index page.

## App Stats

- Rails 5.0.6
- Ruby 2.4.2
- PostgreSQL ~> 0.18

## Features

- Main page is index of critters in a bootstrap table
- "New Critter" button loads a form on the page and then submits data via AJAX to have new records appear on the page w/o reload
- "Edit" button loads a form in the table under the record being edited and then submits data via AJAX to have updated records appear on the page w/o reload
- "Delete" destroys the record via AJAX

## Tutorials

I wrote a series of blog posts explaining how to build this app:

- [Part 1: New Records](http://lortza.github.io/2018/03/09/single-page-crud-p1.html)
- [Part 2: Deleting Records](http://lortza.github.io/2018/03/16/single-page-crud-p2.html)
- [Part 3: Editing Records](http://lortza.github.io/2018/03/23/single-page-crud-p3.html)
