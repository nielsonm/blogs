# Drush make - creating easy to use and maintain sites

Drush make is a subset of the Drupal command line interface (CLI) Drush.  It allows teams of developers to synchronize their development environments in ta way that is lightweight, flexible, and yet very powerful. It also allows task runners like [Grunt](https://gruntjs.com) to automate the build process, making maintenance of a Drupal site during the build much less convoluted and keeps all of the module versions in a central location that can be checked into the repo, destroying the contrib/core code in repo antipattern.

## What is Drush make?

Drush make is a dependency manager and build tool that drastically reduces the maintenance and storage overhead for building a Drupal site.  It allows users to, in a few short lines, declare the version of Drupal and all required contrib modules and have drush go to Drupal.org, download, and install those specific modules in a given directory.  This means that instead of committing an entire copy of Drupal core, along with views, cTools, features, etc. users simply declare `projects[features][version] = 2.3` and drush will take care of the rest.  This means that you can rest easy knowing that the site will not be using a hacked version of a contrib module. Furthermore, on a multi-developer project, it's easy to lose time debugging development environments. Drush make means that as long as every developer has the latest version of the make file, they will all be running the relevant versions of the project's dependencies.

## How do I use it

First off there has to be a make file. Something with the file extension `.make`.  The next thing is to declare the required modules for the project.  The simplest one I've been able to find is the example project make file for Phase 2 Technologies `grunt-drupal-tasks` project. I'll include it here in its entirety.

        core = 7.x
        api = 2

        ; Drupal Core
        projects[drupal][version] = "7.33"

        ; =====================================
        ; Contrib Modules
        ; =====================================

        ; By default, store all contrib modules in the "contrib" subdirectory of
        ; sites/all/modules.
        defaults[projects][subdir] = "contrib"

        projects[features][version] = 2.2

For those following along at home the file is linked on [Github](https://github.com/phase2/grunt-drupal-tasks/blob/master/example/src/project.make).  The first two lines determine the drush make API version and the Drupal core version.

After that it sets a default that downloads all contrib modules into the `sites/all/modules/contrib` directory.  Lastly, a directive to download the features module version 2.2.

**That's it!** Adding a new module is as simple as adding `projects[foo_module][version] = 1.0` where foo_module is the project URL on D.O.  e.g. `views` for Views, and google_analytics for the Google analytics modules.

There's a more full-featured make file with more examples in the [Turnip starter kit](https://github.com/horses-eating-turnips/turnip/blob/7.x/os_project/base.make).

## What makes it special?

Some of the neat features of drush make such as patching as can be seen in the above make file. This means that downloading the module, then "hacking" it with the patch is a thing of the past.

Another neat feature is the ability to break dev only modules into a development directory, so `diff`, `krumo_search` and `stage_file_proxy` are running on dev machines, but could be easily excluded from a testing instance.

### Upgrading modules is a snap

Let's say you've been given the enviable task of updating modules on older client sites. If the whole source code is in the repo, that task can be a pain.  Checking changelogs, running `drush up` and praying it'll work.  Diffing modules to check whether or not the module has been patched, the agony goes on and on.

Or you could do this:

        ; Features
        - projects[features][version] = 2.1
        + projects[features][version] = 2.2
        projects[features][patch][1417630] = "http://drupal.org/files/features_static_caches-1063204-32.patch"

That's it!  Upgrading a module is as easy as changing the drush make file and rebuilding.  Reviewing upgrades is just as easy, with only a few lines to peruse.

### Look Ma, no core!

With no duplication of libraries on a per-project basis, this frees the developer to focus of feature building and module development. That is what is in the repo, with Drupal core and contrib modules in the make file, like a shipping manifest.

Drush make also works with non-Drupal based libraries.  For example, if the project needs the footable library, simply add this to the .make file.

        libraries[footable][directory_name] = "FooTable"
        libraries[footable][download][tag] = "V2.0.1.4"
        libraries[footable][download][type] = "git"
        libraries[footable][download][url] = "https://github.com/bradvin/FooTable.git"

The above code downloads the 2.0.1.4 tag of the FooTable JS plugin to `libraries/FooTable` using git.b  Other fetching methods are get, svn, git, and bzr. The options git, svn, and bzr correspond to their respective repo formats, while get uses a wget/curl method to download a file directly.

## Hate the file format?  No worries, use YAML

The .ini format can be cumbersome for those not used to it. Not to fret, drush make also reads YAML.
Make files in the YAML format are a feature that snuck up on me up until a few weeks ago.

YAML files are going to be used heavily in Drupal 8, so get crackin'!

The YAML formatted make file looks like this:

        # Example makefile
        # ----------------
        # This is an example makefile to introduce new users of drush make to the
        # syntax and options available to drush make.

        # This make file is a working makefile - try it! Any line starting with a `#`
        # is a comment.

        # Core version
        # ------------
        # Each makefile should begin by declaring the core version of Drupal that all
        # projects should be compatible with.

        core: '7.x'

        # API version
        # ------------
        # Every makefile needs to declare it's Drush Make API version. This version of
        # drush make uses API version `2`.

         api: 2

        projects:
          drupal:
            version: ~

          views:
            version: ~

        defaults:
          projects:
            subdir: "contrib"

        libraries:
          fotable:
            download:
              type: git
              tag: V2.0.1.4
              url: "https://github.com/bradvin/FooTable.git"
            destination: libraries
            directory_name: FooTable

This example file will download the latest stable releases for both Drupal core and views and sets the default projects subdirectory to `contrib`, just like in previous examples!  See the [example YAML .make file](https://raw.githubusercontent.com/drush-ops/drush/master/examples/example.make.yml) for more information.  This has been a recent development, so check in on D.O. for updates.

## Reverse engineer it!
If copy and pasting a make file or forking a repo is too much work and you happen to have a site running drush that uses the modules desired, the folks at the drush project have a way to reverse engineer the site provisioning process for you. Where you would normally execute drush insert `drush make-generate my_make_file.make` and presto, the modules currently in use on the site will be exported into the aforementioned .make file.

## It gets better

Not only can make file declare the dependencies and work as a package manager, but it also works recursively. For the uninitiated, the concept of recursion means that a given tasks calls itself, starting the process on a new level, ad nauseam.  If drush make downloads a module that itself has a make file, drush make calls **that** make file to download the module's dependencies and further simplifying the base make file. For example, the panopoly_wysiwyg module has its own make file, which contains a few libraries and a couple Drupal modules.
Since the file's part of the module, the specific configuration of modules and libraries has been vetted by the module maintainer, which further simplifies the build architecture.

Furthermore, using drush make can elevate your place in the community.  Since contrib modules for the project are no longer in the repo, this requires developers to fix bugs in contrib modules using a patch-based workflow, and where better  to post patches to be used in your project than in an issue on Drupal.org.  This one feature of drush make has accelerated my involvement in the community.  Who knows, submit enough patches on your favorite project and you may become a co-maintainer!

## Conclusion
While some hosting environments only indirectly support the drush make based build workflow, creating site builds using drush make is an easy to maintain, fast to review, and easy to extend way to provision Drupal sites.  It makes updating contrib modules, even core versions, practically trivial. I'd like to thank Jonathan Hedstrom and the rest of the drush team for building such awesome tools that make all of our lives better.  For more information on drush make, and for all things drush related, please visit [http://www.drush.org/en/latest/make](http://www.drush.org/en/latest/make)  and read up on all the awesome things drush can do.
