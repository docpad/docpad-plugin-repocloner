# RepoCloner Plugin for [DocPad](http://docpad.org)

[![Build Status](https://secure.travis-ci.org/docpad/docpad-plugin-repocloner.png?branch=master)](http://travis-ci.org/docpad/docpad-plugin-repocloner "Check this project's build status on TravisCI")
[![NPM version](https://badge.fury.io/js/docpad-plugin-repocloner.png)](https://npmjs.org/package/docpad-plugin-repocloner "View this project on NPM")
[![Gittip donate button](http://badgr.co/gittip/docpad.png)](https://www.gittip.com/docpad/ "Donate weekly to this project using Gittip")
[![Flattr donate button](https://raw.github.com/balupton/flattr-buttons/master/badge-89x18.gif)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](https://www.paypalobjects.com/en_AU/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=QB8GQPZAH84N6 "Donate once-off to this project using Paypal")

Clone or update repositories into your [DocPad](http://docpad.org) website before generation


## Install

```
docpad install repocloner
```



## Usage

Define the following inside your [docpad configuration file](http://docpad.org/docs/config), changing the `repo` values to what you desire:

``` coffee
	plugins:
		repocloner:
			repos: [
				name: 'Plugin Wiki'
				path: 'src/documents/wiki'
				url: 'https://github.com/docpad/docpad-plugin-repocloner.wiki.git'
			]
```



## History
[You can discover the history inside the `History.md` file](https://github.com/bevry/docpad-plugin-repocloner/blob/master/History.md#files)


## Contributing
[You can discover the contributing instructions inside the `Contributing.md` file](https://github.com/bevry/docpad-plugin-repocloner/blob/master/Contributing.md#files)


## License
Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT License](http://creativecommons.org/licenses/MIT/)
<br/>Copyright &copy; 2013+ [Bevry Pty Ltd](http://bevry.me) <us@bevry.me>
