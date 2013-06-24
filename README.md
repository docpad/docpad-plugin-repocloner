# RepoCloner Plugin for [DocPad](http://docpad.org)
Clone or update repositories into your [DocPad](http://docpad.org) website before generation


## Install

```
npm install --save docpad-plugin-repocloner
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
