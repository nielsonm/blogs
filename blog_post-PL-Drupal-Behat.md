# Prototype, Build, Test - Mutually Assured Build Success

Miscommunication and lack of understanding are two of the biggest risks to the success of a web project.  As such, eliminating or reducing barriers to effective communication can reinforce and strengthen the outlook of the engagement, as well as lower stress levels on the client and the consultant side.  Beyond traditional communication tools, I propose that there are a suite of tools that can reinforce that conduit between client and build team.  The three components I'd like to highlight are prototyping, building and testing.  By augmenting the steps that make up the traditional build process, I've found that projects go smoother, with less drama, and reduced rework.  Reducing rework can be a major indicator that a project will finish, on time, full-featured, and on budget. My colleague Sharon put it succinctly.

>"Being able to quickly break the designs down into code and create a design system that could be applied to the whole site, made iterative design a simple reality.  The client really liked getting early access to see what the design would really look like in a browser."

>Sharon Smith, Experience Strategist



## What are the tools:

1. Prototyping - Pattern Lab

    First, there are many tools that fit the description of  prototyping, building, and testing web software. Prototyping and wire-framing tools like Pattern Lab, Balsamiq, OmniGraffle, and Visio to name a few are used to communicate the visual concepts that create the look and feel of the  web UI.  Prototyping is a kind of web dev shorthand to quickly get something that approaches what the client had in mind.  It can then be subjected to all sorts of testing, conversation on the nitty-gritty of functionality and UI.  In-browser prototyping has the added benefit of sharing components with the build tools, meaning that once something "looks" right, the build team has something to work toward as a target.  Creating a prototype also means that the client gets to see something right away, as opposed to sometime further down the road, after development has completed and the application reaches the theming phase.  This has the added benefit of front loading any display layer rework to a place where it doesn't require any back end rework.

1. Building - Drupal

    Secondly, there are probably more ways to build a web application than I care to think about.  The build tools available to the market have a variety of niches, languages, and levels of complexity. At Phase2, we focus on tools written in PHP (Drupal, WordPress, etc.) and JavaScript (React, Angular, jQuery).  For most clients, we recommend the power and flexibility of the Drupal CMS, which gives editors, strategists, and systems administrators the ability to insert layout, create interactive, responsive sites without delving into writing HTML.  Drupal is my personal favorite, due to its immense platform building potential, atomic user permission structure, in addition to its large and supportive community. Choice in build tool can change the difficulty in implementing the prototype, for example Pattern Lab uses the mustache templating language to create its pages, if your framework of choice had the option to incorporate that into the display layer, it'd mean no need to maintain two sets of page templates in an application.

1. Testing - Behat

    The third and final set of tools are those used to verify the accuracy, and stability of the web application.  Testing is often overlooked, since it doesn't directly affect the finished product. That said, it's equally important, given the disastrous effect that hidden functionality regressions can cause to a timeline.  Any testing, especially automated testing, ensures that the code being created to expand the applications functionality works as expected and doesn't cause previously working code to suddenly break.  The insidious nature of that last point is the most important part of testing for me.  At the risk of sounding like a Zen koan, I posit that if a regression occurs, and no developer is there to notice it, does it actually cause a problem?  Of course, this is a ridiculous question, what truly is at issue isn't what broke, or how long it might take to fix it immediately, but a far more frightening possibility.  What if the site breaks, and no one notices the breakage for weeks, possibly up to months.  By then, the developer may not recall all the intricacies of the system in question, the exact cause of the breakage is vague and the resolution doubly so.  In the end, developers spend more time re-familiarizing themselves with the component and stepping back to find the problem, and the eventual solution.


## What's the Plan?

Ideally, prototyping and Behat would blend in to end of the project discovery phase.  Rendering user stories into features, and sketches into prototypes. Since both deliverables are visual, the client can be brought in to offer feedback, and the test and prototype phases create a model that starts much closer to the client's full idea for the application than a straight here-have-a-task-get-coding process.  This can mean that designers can work ahead of the developers, and testing/UX analysts can continue working, instead of waiting for devs to finish their work and have something to test.

### How prototyping speeds up work - the elevator pitch

Prototyping in software is a new idea, but in other disciplines, it's a long held first step.  Everyone from civil engineers building bridges to electrical engineers designing CPUs understand the importance of creating a reliable, and fairly exhaustive model of which to pattern the larger build.  Prototyping in the web allows front end designers to build elements of the application UI without needing to concern themselves too much about the underlying application level code.  This frees the designer and client to experiment with different configurations of content quickly, and without massive rework of the application to accommodate the new display layer.

### How Drupal can build faster, thanks to PL

If there's one thing that's abundantly clear about Drupal, it's that altering the markup of a page can be a little tricky. This means that when a client looks at a comp and looks at what a themer has implemented on the first pass, can lead to a fair amount of drama.  Pattern Lab removes much of the rework that happens when the client first sees the code applied in the browser.

### How testing is much, much easier now

Before Behat, browser acceptance testing hinged on testing frameworks like Selenium, which operates at much the same level as Behat, but with two crucial caveats. The first, Behat uses human readable text as the basis for the test, which differs from the Selenium test files.  The second is that Selenium is mostly click based, but Behat works on DOM elements, click based, among many other interfaces.  Secondly, Selenium tests are a fair bit brittle, which can lead to false positives.  Behat has neat features such as test tagging, which means users can divide the long running tests from the quick checks, speeding up the build checking process while making sure that the site is still passing testing.

## How do they work together?

Individually, each of these three systems works well in isolation. However, when coordinated and working together, relationships emerge that are mutually beneficial, even sublime. When I stumbled upon this concept, I got really excited on using all three tools, especially Drupal. Gone are the days when a developer has to guess at the output markup, possibly locking the feature into a paradigm and incurring technical debt if the feature needs re-architecting.  Furthermore, now that the front-end is being built up ahead of the back-end, developers don't have to worry about how the markup needs to be formatted, how much custom theme work needs to be done, since the dev knows what the end markup needs to look like.

All this can be summed up in a graphic, portraying the cyclical nature and interdependence of the build process.

----------- INSERT GRAPHIC FROM LINZI -----------

## What's the catch?

New systems and methodologies present opportunities to shine, but also present previously unforeseen pitfalls.  I've talked to a few folks and present their concerns and what may pass as resolution for those issues.

### Old PM methods may short-circuit process
Prototyping gets imagery in front of the client faster than normal. This is a huge win, but it carries the risk of the client misunderstanding at what they're looking. It becomes critical to communicate the values of the prototype phase, but to underscore that what is on the screen isn't the finished page.  The components on the back end need to be built, the business logic and data models still may need creating.  Those steps aren't trivial, in fact, adding interactivity may be the most complex phase in the build.
Project managers should be forthright in setting expectations for the client, and communicating progress on the feature.  Prototyping isn't a magic bullet that produces more pages in less time, it's a tool, one that has uses & potential pitfalls for misunderstanding and misuse.  As the line between built and non-built becomes blurred, it becomes critical to differentiate prototyped and fully built.

## Why is everything so slow?
As with most things, complexity and speed tend to be inversely proportional. That is, the more complicated some process is, the more time it takes to accomplish something.  Pattern Lab and Behat are no exception to this.  The more pages that need to be created, vetted by engineers, and approved by the client, the longer the total build can be.  The easiest way to get ahead of this is for front-enders and project managers to seriously discuss the number and level of detail for each component being prototyped.

Behat can also be very time consuming to run, especially as the number of tests rise.  It becomes important to create a separation of concerns by using tags to differentiate tests by common concerns.  A quick test could be run to check that the basic site architecture is responding, in business jargon, this is known as a [smoke test](https://en.wikipedia.org/wiki/Smoke_testing_(software)).  Tags can be explicitly called or excluded as needed to target the object of the tests.

## Wrapping up: Where to now?
Prototyping provides a mechanism for front end developers to get something built and out in front of a client for approval without regard for the underlying business logic or data handling.  This gives back-end developers a target to shoot for, as well as time to fully develop the data layer.  Finally testing can be used to verify project progress as well as provide an intellectual framework for communication between client and build team. All these components act as force multipliers individually - but when they are combined, they reinforce one another to generate an even greater build outcome.
