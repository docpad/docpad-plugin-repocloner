# Test our plugin using DocPad's Testers
require('docpad').require('testers')
	# ensure initial clone works
	.test({
		pluginPath: __dirname+'/..'
		testerClass: 'RendererTester'
	})
	# ensure that a rerun works
	.test({
		pluginPath: __dirname+'/..'
		testerClass: 'RendererTester'
	})
