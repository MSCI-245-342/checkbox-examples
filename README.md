# README - checkbox-examples

There is some information about checkboxes in the following places:

1. Ch 6 of Learning Rails: https://learning.oreilly.com/library/view/Learning+Rails+5/9781491926185/ch06.html

2. https://makandracards.com/makandra/32147-rails-4-introduced-collection_check_boxes

3. https://www.sitepoint.com/save-multiple-checkbox-values-database-rails/

And then there are the manual pages, which are a bit confusing:

1. https://api.rubyonrails.org/ and search for checkbox

This repo contains examples of two ways to do checkboxes.

To get this running on Codio, you'll need to make yourself a new project with the **MSCI-245-S20 stack**.

You can clone the repo and do `bundle install` then setup the database then run the server to play around with the simple app.

I think the biggest thing to note is that if you use rails scaffolding and at the time of the scaffold creation, you identify that your model has boolean attributes, then the scaffold will produce a checkbox for each attribute for you.   So, if you are looking for a fairly easy way to do the spell classes, have a boolean attribute for each one in your spell class, then you get checkboxes automatically.

After cloning:

`bundle install`

`rails db:create db:migrate db:seed` 

`rails server -b 0.0.0.0`

## Spellclasses

There are probably four approaches to take for "spell classes":

1. Create a table to store the classes and then create a join table between spells and the classes. The join table (or relationship set in database language) stores which classes are in which spells.

1. Create an attribute in the spell entity for each class.  This could be a Boolean or other data type.  Each attribute (column) records if that spell is of that class.

1. Have single attribute in the spell table that stores an array.  Postgresql supports this: https://www.postgresql.org/docs/9.1/arrays.html  , https://guides.rubyonrails.org/active_record_postgresql.html#array

1. And yes, you could probably try and store it as a string and manipulate that string to record which classes a spell is.  (This is a horrid design choice.)

Plus, you never know, there could be other designs, too, that could work.

Each of the designs above is going to have pros and cons for implementation ease and long term maintenance.  You are allowed to use whatever design allows you to succeed and get the project done and working correctly.

I would pick the design that is easiest for you to implement and support the features.

