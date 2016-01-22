# MVC in Drupal 8: Getting closer
## What is MVC: the elevator pitch

Just like it's no longer considered good web engineering to use inline styles exclusively, or have business logic &  database queries next to the display logic - it's no longer best practice to intermingle logic, display, & data storage. Separating these layers mean that they can be tested in isolation, making debugging and long term maintenance less of an issue.

Most modern web frameworks utilize an approach labeled MVC - which stands for Model View Controller.  As previously stated, MVC separates logic, display, and data layers.

Model - the data handling component of the setup. Model is where the stuff get stored.  Drupal 7 defines schema for modules and use the field and database abstraction layers to handle the operations relating to pushing and pulling data.

View - the display component of the system, not to be confused with the Drupal views module, view layer is all about presentation. The layout, fonts, styles, etc. are all components that make up the modern views component.

Controller - Controller is the most ambiguous of the three - it's the piece that connects and controls (get it?) what comes out of the model to hand to the view.  In the CMS context, Controllers also receive input to update the model.  The Controller holds the business logic, so if there's any kind of change to the data flowing from Model to View, it's through Controller.  This means that the majority of project engineering team's  time will be spent constructing the Controller.

## Drupal isn't *really* MVC, neither is Symfony

News flash - Drupal isn't MVC. That shouldn't come as much of a surprise. While closer to implementing an MVC-like approch, Symfony more closely follows the pattern of an Object Relational Mapper or ORM.  This acts as a sort of intermediary between Object-oreiented or OO code and code that may not be.  Symfony is very much OO, Drupal trending in that direction sharply.  ****

## What's so special about D8?

In a word - plenty. The menu/routing system alone is worth a blog post.  Drupal 8 represents a whole new system of doing things, much has remained the same.  Especially on the admin UI side, but the code that's running the whole operation couldn't be more different.  Here's a short list of the major leaps forward in D8, in no particular order.

### CMI

It's usually a good idea to isolate the development and testing environments from production on the off chance that an off-kilter database update wipes the site completely. Not to fret, the site's not down.  The downside means that the configuration from dev to production needs to be moved, migrated and planned.  CMI makes the configuration system portable, importable-exportable from the UI.

### WSCCI

The web is no longer just the browser - RSS readers, REST API, & mobile applications are fast becoming the way that computers relay information.  Drupal 7 supported this behavior as an optional add-on to Drupal core.  This is no longer the case, now nodes can be requested via REST request and output to the requester in JSON format suitable for a Javascript single page application (Angular, Node, ReactJS, etc).  All the hoopla over headless Drupal:q is entirely thanks to WSCCI.

### VDC

Views in Drupal Core might be the biggest change to hit the site building / admin UI layer since the concept of the menu system. Views did away with much of the custom database query building in Drupal, because of the simple fact that with a modicum of training, folks with little technical experience could collate, organize, and display content created elsewhere on the site.  Views in core also means that core admin UI have gotten some views love, for example, the content admin page, long the bane of editors and site builders alike, is now a view, with exposed filters that can be tweaked and augmented to enhance the editorial power of the page and leverage the full Drupal UX, both on the backend as well as the frontend.

A ton of work went into Drupal 8, especially the initiatives.  Too many to include here.  Please go to Drupal.org for [more info and a full list of initiatives](https://www.drupal.org/community-initiatives/drupal-core).

## Symfony - the framework *under* Drupal

Part of the reason why Drupal 8 was such a major step forward architecturally came from the use of a web framework that simplified some of the long-in-the-tooth procedural code that formed the foundation of the Drupal request stack.  Symfony is an Objet-Oriented PHP component library that places a high emphasis on simplicity.  "Use only the parts that you need, nothing more", seems to conflict with the popular Drupal philosophy of including "Everything, including the kitchen sink". These two philosophies grow from a common root, one that places importance on extensibility.  Furthermore, a loosely coupled framework can focus on creating straightforward code, one that can be tested in isolation and maintained relatively easily.

### It's all about the Controller

Symfony, for all it's complexity, is pretty basic.  It breaks the process down into 

### Routes, config, & template
#### Routing
#### Config
#### Templates - TWIG FTW!!!!
If I had to picture the most energized person to be theming in Drupal 8, that person would more than likely be MortenDK of Geek Royale. As a regular on the DrupalCon Talk circuit and a former Drupal Association Board member, Morten has been involved with the Drupal community for as long as I've known him.  For the last several years, he has been tirelessly promoting the philosophy that what the Drupal front end needs is a revolution.  Who better to lead that revolution than a provocative, rabble-rousing creative type like Morten?  Twig was created as an alternative to phptemplate, the templating engine currently running D6&7 sites.  PhpTemplate failed in a number of ways, the first of which is requiring the use of PHP in the page template to render content sensibly.  In a world where front-end web developers may not be 100% comfortable writing PHP, that can be a hurdle.  Secondly, escaping output so that it won't act maliciously in the browser requires complicated escape functions, that may be invoked incorrectly.  Twig does all this for themers, and much more. Twig also creates template inheritance, meaning that templates can extend other templates, consolidating common functionality and shrinking the size of the theme code base.

### Why use a framework?
#### Focus on differentiation
#### Development
#### Proudly Found Elsewhere

[Going to leave this here](https://prague2013.drupal.org/session/not-invented-here-proudly-found-elsewhere-drupal-8-story.html)
