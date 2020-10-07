# Tagging!

This is a sample app to test the functionalities of the acts-as-taggable-on gem in a Ruby on Rails app, as well as other related tagging elements.

## Tutorials

Like most people, I spend a good amount of time looking for the best tutorial to help me get through my needs. Here it is the list of tutorials I've been using for this sample project.

### acts-as-taggable-on

For the integration of the acts-as-taggable-on gem I followed [this tutorial](http://railscasts.com/episodes/382-tagging?autoplay=true).

#### Important:

If you decide to follow the tutorial above, please take into account that from Rails 4.2 and above the field that accepts the tags need to be constructed in the following way for the commas to appear:

```ruby
<%= f.text_field :tag_list, value: f.object.tag_list.join(",") %>
```

The details of this change are explained in the acts-as-taggable-on [documentation wiki](https://github.com/mbleigh/acts-as-taggable-on/wiki/Add-a-tag-field-to-forms-in-Rails--4.2-and-above).

## About me

This project is being developped by **[Laura Gómez](https://elenagoto.ch)**. Any comments (ideas, changes to make, moral support) can be sent to laura@elenagoto.ch
