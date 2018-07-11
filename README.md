<!-- TITLE/ -->

<h1>Repository Cloner Plugin for DocPad</h1>

<!-- /TITLE -->


<!-- BADGES/ -->

<span class="badge-travisci"><a href="http://travis-ci.org/docpad/docpad-plugin-repocloner" title="Check this project's build status on TravisCI"><img src="https://img.shields.io/travis/docpad/docpad-plugin-repocloner/master.svg" alt="Travis CI Build Status" /></a></span>
<span class="badge-npmversion"><a href="https://npmjs.org/package/docpad-plugin-repocloner" title="View this project on NPM"><img src="https://img.shields.io/npm/v/docpad-plugin-repocloner.svg" alt="NPM version" /></a></span>
<span class="badge-npmdownloads"><a href="https://npmjs.org/package/docpad-plugin-repocloner" title="View this project on NPM"><img src="https://img.shields.io/npm/dm/docpad-plugin-repocloner.svg" alt="NPM downloads" /></a></span>
<span class="badge-daviddm"><a href="https://david-dm.org/docpad/docpad-plugin-repocloner" title="View the status of this project's dependencies on DavidDM"><img src="https://img.shields.io/david/docpad/docpad-plugin-repocloner.svg" alt="Dependency Status" /></a></span>
<span class="badge-daviddmdev"><a href="https://david-dm.org/docpad/docpad-plugin-repocloner#info=devDependencies" title="View the status of this project's development dependencies on DavidDM"><img src="https://img.shields.io/david/dev/docpad/docpad-plugin-repocloner.svg" alt="Dev Dependency Status" /></a></span>
<br class="badge-separator" />
<span class="badge-patreon"><a href="https://patreon.com/bevry" title="Donate to this project using Patreon"><img src="https://img.shields.io/badge/patreon-donate-yellow.svg" alt="Patreon donate button" /></a></span>
<span class="badge-opencollective"><a href="https://opencollective.com/bevry" title="Donate to this project using Open Collective"><img src="https://img.shields.io/badge/open%20collective-donate-yellow.svg" alt="Open Collective donate button" /></a></span>
<span class="badge-flattr"><a href="https://flattr.com/profile/balupton" title="Donate to this project using Flattr"><img src="https://img.shields.io/badge/flattr-donate-yellow.svg" alt="Flattr donate button" /></a></span>
<span class="badge-paypal"><a href="https://bevry.me/paypal" title="Donate to this project using Paypal"><img src="https://img.shields.io/badge/paypal-donate-yellow.svg" alt="PayPal donate button" /></a></span>
<span class="badge-bitcoin"><a href="https://bevry.me/bitcoin" title="Donate once-off to this project using Bitcoin"><img src="https://img.shields.io/badge/bitcoin-donate-yellow.svg" alt="Bitcoin donate button" /></a></span>
<span class="badge-wishlist"><a href="https://bevry.me/wishlist" title="Buy an item on our wishlist for us"><img src="https://img.shields.io/badge/wishlist-donate-yellow.svg" alt="Wishlist browse button" /></a></span>
<br class="badge-separator" />
<span class="badge-slackin"><a href="https://slack.bevry.me" title="Join this project's slack community"><img src="https://slack.bevry.me/badge.svg" alt="Slack community badge" /></a></span>

<!-- /BADGES -->


<!-- DESCRIPTION/ -->

Clone or update repositories into your DocPad website before generation

<!-- /DESCRIPTION -->


<!-- INSTALL/ -->

<h2>Install</h2>

Install this DocPad plugin by entering <code>docpad install repocloner</code> into your terminal.

<!-- /INSTALL -->


## Usage

Add the following inside your [DocPad configuration file](http://docpad.org/docs/config), changing the `repo` values to what you desire:

``` coffee
	plugins:
		repocloner:
			repos: [
				name: 'Some Repository'
				path: 'src/documents/some-repo'
				branch: 'master'
				url: 'https://github.com/some-org/some-repo.git'
			]
```

This will update the repository on each initial generation.

If you would like to have repocloner update the repository during subsequent generations, you can do this via the [DocPad API](http://docpad.org/docs/api):

``` coffee
docpadInstance.action('generate', {populate:true, reload:true})
# populate will cause this plugin to fire, as it emits the populateCollections events
# reload will scan the file system for new files
```

<!-- HISTORY/ -->

<h2>History</h2>

<a href="https://github.com/docpad/docpad-plugin-repocloner/blob/master/HISTORY.md#files">Discover the release history by heading on over to the <code>HISTORY.md</code> file.</a>

<!-- /HISTORY -->


<!-- CONTRIBUTE/ -->

<h2>Contribute</h2>

<a href="https://github.com/docpad/docpad-plugin-repocloner/blob/master/CONTRIBUTING.md#files">Discover how you can contribute by heading on over to the <code>CONTRIBUTING.md</code> file.</a>

<!-- /CONTRIBUTE -->


<!-- BACKERS/ -->

<h2>Backers</h2>

<h3>Maintainers</h3>

These amazing people are maintaining this project:

<ul><li><a href="http://balupton.com">Benjamin Lupton</a> — <a href="https://github.com/docpad/docpad-plugin-repocloner/commits?author=balupton" title="View the GitHub contributions of Benjamin Lupton on repository docpad/docpad-plugin-repocloner">view contributions</a></li></ul>

<h3>Sponsors</h3>

No sponsors yet! Will you be the first?

<span class="badge-patreon"><a href="https://patreon.com/bevry" title="Donate to this project using Patreon"><img src="https://img.shields.io/badge/patreon-donate-yellow.svg" alt="Patreon donate button" /></a></span>
<span class="badge-opencollective"><a href="https://opencollective.com/bevry" title="Donate to this project using Open Collective"><img src="https://img.shields.io/badge/open%20collective-donate-yellow.svg" alt="Open Collective donate button" /></a></span>
<span class="badge-flattr"><a href="https://flattr.com/profile/balupton" title="Donate to this project using Flattr"><img src="https://img.shields.io/badge/flattr-donate-yellow.svg" alt="Flattr donate button" /></a></span>
<span class="badge-paypal"><a href="https://bevry.me/paypal" title="Donate to this project using Paypal"><img src="https://img.shields.io/badge/paypal-donate-yellow.svg" alt="PayPal donate button" /></a></span>
<span class="badge-bitcoin"><a href="https://bevry.me/bitcoin" title="Donate once-off to this project using Bitcoin"><img src="https://img.shields.io/badge/bitcoin-donate-yellow.svg" alt="Bitcoin donate button" /></a></span>
<span class="badge-wishlist"><a href="https://bevry.me/wishlist" title="Buy an item on our wishlist for us"><img src="https://img.shields.io/badge/wishlist-donate-yellow.svg" alt="Wishlist browse button" /></a></span>

<h3>Contributors</h3>

These amazing people have contributed code to this project:

<ul><li><a href="http://balupton.com">Benjamin Lupton</a> — <a href="https://github.com/docpad/docpad-plugin-repocloner/commits?author=balupton" title="View the GitHub contributions of Benjamin Lupton on repository docpad/docpad-plugin-repocloner">view contributions</a></li>
<li><a href="http://robloach.net">Rob Loach</a> — <a href="https://github.com/docpad/docpad-plugin-repocloner/commits?author=RobLoach" title="View the GitHub contributions of Rob Loach on repository docpad/docpad-plugin-repocloner">view contributions</a></li>
<li><a href="https://github.com/vsopvsop">vsopvsop</a> — <a href="https://github.com/docpad/docpad-plugin-repocloner/commits?author=vsopvsop" title="View the GitHub contributions of vsopvsop on repository docpad/docpad-plugin-repocloner">view contributions</a></li></ul>

<a href="https://github.com/docpad/docpad-plugin-repocloner/blob/master/CONTRIBUTING.md#files">Discover how you can contribute by heading on over to the <code>CONTRIBUTING.md</code> file.</a>

<!-- /BACKERS -->


<!-- LICENSE/ -->

<h2>License</h2>

Unless stated otherwise all works are:

<ul><li>Copyright &copy; <a href="http://bevry.me">Bevry Pty Ltd</a></li></ul>

and licensed under:

<ul><li><a href="http://spdx.org/licenses/MIT.html">MIT License</a></li></ul>

<!-- /LICENSE -->
