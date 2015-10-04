# DrupalCon LA Sessions I'm excited about.

DrupalCon Los Angeles is just around the corner and there are a ton of awesome sessions to attend.  Every year, the top minds in the Drupal community present their thoughts on the tools and processes that will shape the future of Drupal.  As always, the number and quality of the sessions available for consumption at DrupalCon is immense. It creates a dilemma in selecting exactly what sessions to attend. Having been part of the DrupalCon planning committee, I've been privileged to help shape the track selection criteria, review session submissions, and provide support to other committee members.  To help others narrow their options for session attendance, I've created a short list of sessions that have me excited to attend.

***Disclosure*** - While I'm excited that there are several sessions have been submitted by the fine folks at Phase2, I've deliberately excluded sessions submitted by my co-workers at Phase2. You can read more about their sessions at the following [blog post]().

## What's the trend?

One advantage of having to review all the sessions on the Coding & Development track, one quickly becomes acquainted with any patterns that emerge from the community. This year, of course, there was a plethora of Drupal 8 sessions. Which makes sense given that D8 is in beta. Like many in the Drupal Community, I'm excited to see the new features and improvements to Drupal core. However, the move to a more Objected Oriented philosophy means that the old procedural ways of doing things.  That said, I'm a little rusty at OOP. I'm looking forward to the Symfony & D8 sessions.

The other trend that has been taking the Drupal world by storm is so-called Headless Drupal.  As far as I can tell, the common thread that runs through the multitude of implementations involves Drupal's front end theming layer replaced by a JavaScript based application such as Angular, React, or Ember. Drupal's role in the process is one of a database UI to curate content and manage non theme layer configuration, such as editorial workflow and third party content aggregation.

## The list:
1. [Drupal 8: The crash course](https://events.drupal.org/losangeles2015/sessions/drupal-8-crash-course)

    DrupalCon without Larry Garfield (Crell) would be like spring in the Northwest without daffodils. The impending release of Drupal 8 brings many new features and systems not the least of which relate to the inclusion of the Symfony framework I routinely enjoy his talks and blog posts, more so than his Twitter feed. He excels at presenting a complex topic as a series of easy to understand bites that clearly explain even the thorniest of topics.  The session covers an introduction to the new systems introduced in Drupal 8, which assumes, but not requires, some knowledge of Drupal 7. This is one of many Drupal 8 sessions, but unless you've already been working in D8, it wouldn't be a bad idea to drop in on this one.

1. [Drupal 8's render pipeline](https://events.drupal.org/losangeles2015/sessions/drupal-8s-render-pipeline)

    This session focuses more on the new ways that Drupal renders page content in version 8.  Specifically the new caching regime that caches entities instead of just nodes, improved cache invalidation (cache tags, & bubbling FTW!), and so forth. Cache tags mean that individual cache components can be reset on certain events (expiring blog post feed cache when there's a new post, caching the latest version of the page on node save, not after 2 hours).  This is a hug win for performance nerds, and will have significant effect on the Drupal's performance as a standalone application, as well as being part of a larger web stack.  One of the major hangups a lot of my Non-Drupal Web dev associates complain about with regard to Drupal is that making the site performant isn't a clearly demarcated, easy task to accomplish.  That the framework itself becomes the bottleneck is a drawback of Drupal.  I'm excited that Wim Leers will be presenting this talk to help help combat these pernicious stereotypes and win over critics.

1. [What's next for Drupal.org: Updates on Strategic Initiatives](https://events.drupal.org/losangeles2015/sessions/whats-next-drupalorg-updates-strategic-initiatives)

    Josh Mitchell, the new CTO of the Drupal Association has, as I'm assuming is part of his job at the DA, has come up with a set of strategic initiatives to improve D.O. as a resource for all members of the Drupal community.  This is something that I feel has been some time coming, and I for one am excited to hear what CTO  Mitchell's ideas for the future of D.O.

1. [Issue Workspaces: A better way to collaborate in Drupal.org issue queues](https://events.drupal.org/losangeles2015/sessions/issue-workspaces-better-way-collaborate-drupalorg-issue-queues)

    Interacting directly with the code base on D.O. is somewhat of a challenge for people new to the community, it requires some fairly advanced knowledge which can be a big barrier to new folks looking to get into contributing on issue queues.  I'm interested in seeing how issue workspaces can increase the velocity of D.O. projects getting bug reports resolved, especially when the project itself is fast moving.  The modernization of the Drupal issue queue, especially when it mimics best-of-breed code repository tools such as Bitbucket and Github. It's exciting to see how Drupal.org is evolving to support a more git friendly workflow.

1. [We need revisions and CRAP everywhere in core](https://events.drupal.org/losangeles2015/sessions/we-need-revisions-and-crap-everywhere-core)

    Dick Olsson (Dixon_) - maintainer of the Deploy and UUID modules posits that while content staging will never be in core, it should be easy enough to implement a Create Read Archive Purge model of content workflow. I believe, this session will extend his previous sessions from Austin and Amsterdam and focus on what needs to be done to extend this functionality out from core using contrib modules.  Content staging is in no way a solved problem, so it's especially exciting to see how quickly custom solutions can be created using Drupal as the framework. This session also has the added benefit of having a related sprint, so if you can't get enough of this topic, there will be a sprint on Friday.

1. [What Panels can teach us about Web Components](https://events.drupal.org/losangeles2015/sessions/what-panels-can-teach-us-about-web-components)

    Many times Drupal blurs the line between data and display layers in an application, as anyone who has written a custom theme function or a template file can attest.  While the current trend in Drupal is going towards headless Drupal, this trend comes to a screeching halt at Drupal core.  The panels module is can be considered a good example at how to decouple the display and data layers in the Drupal environment.  Anyone who has been involved with the Panels module has understood the immense power at their disposal, which suggests that this could be an interesting session to preview potential improvements to Drupal core.

1. [To the Pattern Lab! Collaboration Using Molecular Design Principles](https://events.drupal.org/losangeles2015/sessions/pattern-lab-collaboration-using-modular-design-principles)

    I've always had a soft spot for prototyping, and Pattern Lab has not disappointed.  For the uninitiated, Pattern Lab is a dynamic prototyping system that focuses on breaking down a page into small, self-contained blocks of content.  These blocks can be combined into multiple configurations without needing to rebuild everything from scratch.  Furthermore, since the prototype is being viewed in the browser, styling the elements is created using CSS and the markup can be edited to mimic Drupal's native markup structure, which means that the prototype's style closely imitates the styling of the Drupal site, reducing duplicated effort in the theme creation and prototyping phases.  Furthermore, since the system uses the web stack, it also means that the site can be designed as responsive from the beginning.

1. [Making Content Strategic before "Content Strategy" Happens](https://events.drupal.org/losangeles2015/sessions/making-content-strategic-%E2%80%9Ccontent-strategy%E2%80%9D-happens)

    Recently I've been interested in the topic of Conent Strategy. Content Strategy can be defined as the process of planning content so as to maximize its effect for users.  I'm excited to hear that people in the community are also interested in helping people create content that is engaging, compelling, and interesting.  It focuses, rightly, on the what of content in the content management system. Not the how - as is the most common focus.

### So many sessions, so little time

Below are a list of interesting sessions that I could not pick between the two, so I leave as a compiled list with suggestions for them.  **NOTE** below here you will have to make decisions on the session you attend.  But fear not, all the sessions *should* be recorded to view at a later time.

If I were a themer or coder, and I like fast demos, I'd go to: [0 to MVP in 40 minutes: Coder and Themer get rich quick in silicon valley](https://events.drupal.org/losangeles2015/sessions/coder-and-themer%E2%80%99s-guide-getting-rich-quick-silicon-valley-0-mvp-40-minutes)
If I'm a SysOps aficionado and interested in hearing from a couple of Drupal community heavyweights I'd go to: [You Are A Golden God: Automate Your Workflow for Fun and Profit](https://events.drupal.org/losangeles2015/sessions/you-are-golden-god-automate-your-workflow-fun-and-profit)

This next one is a toughie. This time slot is occupied by *three* sessions.

For the Content Strategy nerd in me, nothing makes me happier than to see the DA taking steps to create model content that helps communicate Drupal's mission - [Content Strategy for Drupal.org](https://events.drupal.org/losangeles2015/sessions/content-strategy-drupalorg).  For the front end, storytelling nerd in me there's [Styles of Storytelling: Cultivating Compelling Long-form Content](https://events.drupal.org/losangeles2015/sessions/styles-storytelling-cultivating-compelling-long-form-content).  Finally Steve Persch (stevector) makes the case for extracting Drupal from generating markup for a webpage:  [Rendering HTML with Drupal: Past, Present and Future](https://events.drupal.org/losangeles2015/sessions/rendering-html-drupal-past-present-and-future).

If I were a junior dev looking to level up into a more senior dev, one of the skills needed would be the ability to estimate tasks. To learn more about this skill I'd attend: [De-mystifying client discovery](https://events.drupal.org/losangeles2015/sessions/de-mystifying-client-discovery).  If I haven't already been to a headless Drupal session, or I'm a fan of Amitai Burnstein's colorful presentation style, I'd go to [Decoupled Drupal: When, Why, and How](https://events.drupal.org/losangeles2015/sessions/decoupled-drupal-when-why-and-how).

Todd Nienkerk's talk on company culture was very warmly received at DrupalCon Latin America this spring, and I'm excited to hear this in person, moreso for the discussion it can generate than anythign [Creating a Culture of Empowerment](https://events.drupal.org/losangeles2015/sessions/creating-culture-empowerment). This session I've had on my radar ever since Ryan submitted it - He's a must-see presenter if you haven't already [Routes, controllers and responses: The Basic Lifecycle of a D8 Request](https://events.drupal.org/losangeles2015/sessions/routes-controllers-and-responses-basic-lifecycle-d8-request).

If you'd like to get better acquainted with the D8 plugin system [An Overview of the Drupal 8 Plugin System](https://events.drupal.org/losangeles2015/sessions/overview-drupal-8-plugin-system) would be right up your alley.  Larry Garfield (crell) is presenting a workshop on the focus of Drupal core, and possibly more importantly, what may be de-emphasized [No](https://events.drupal.org/losangeles2015/sessions/no).

Clearly, DrupalCon LA will be a really exciting opportunity to grow ones skills, both as a developer and as a community member. As always I'm looking forward to attending many of these sessions, and also for the opportunity to network and contribute to the success of the Drupal project.
