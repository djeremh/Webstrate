Webstrate
=========

Webstrate is a research prototype enabling collaborative editing of websites through DOM manipulations realized by [Operational Transformation](http://en.wikipedia.org/wiki/Operational_transformation) using [ShareJS](https://github.com/share/ShareJS). Webstrate observes changes to the DOM using [MutationObservers](https://developer.mozilla.org/en/docs/Web/API/MutationObserver).

Installation
============
Requirements:
 * [MongoDB](http://www.mongodb.org)
 * [NodeJS](http://nodejs.org)
 * [CoffeeScript](http://coffeescript.org)

To install:
 * Clone this repository
 * From the repository root do:
    * npm install
    * bower install
    * cake build
    * coffee webstrate.coffee

Usage
=====
Webstrate serves (and creates) any named webpage you ask for.<br>
Simply navigate your browser* to http://localhost:7007/[some_page_name].<br>
Now any changes you make to the DOM will be persisted and distributed to any other clients that may have the page open.

\* Webstrate is currently only tested to work in Chrome Version 37.0.2062.120

Disclaimer
==========
Webstrate is work-in-progress and the mapping between the DOM to a ShareJS document is not 100% water proof yet.
After each set of DOM manipulations Webstrate checks the integrity of the mapping between DOM and ShareJS document, and may throw an exception if something is off. If this happens just reload the page.

License
=======

This work is licenced under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0)
