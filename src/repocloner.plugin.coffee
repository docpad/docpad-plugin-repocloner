# Export Plugin
module.exports = (BasePlugin) ->
	# Import
	{TaskGroup} = require('taskgroup')
	extendr = require('extendr')
	balUtil = require('bal-util')
	fsUtil = require('fs')

	# Define Plugin
	class RepoclonerPlugin extends BasePlugin
		# Plugin Name
		name: 'repocloner'

		# Plugin Config
		config:
			repos: null

		# Clone/Update our DocPad Documentation Repository
		generateBefore: (opts,next) ->
			# Prepare
			docpad = @docpad
			config = docpad.getConfig()
			tasks = new TaskGroup().setConfig(concurrency:0).once 'complete', (next)
			repos = @config.repos or []

			# Cycle through the repos assigning each repo value to @ so it works asynchronously
			repos.forEach (repoDetails) -> tasks.addTask (complete) ->
				# Normalize path
				repoDetails.path = repoDetails.path
					.replace(/^src\/documents/, config.documentsPaths[0])
					.replace(/^src\/files/, config.filesPaths[0])
					.replace(/^src/, config.srcPath)
					.replace(/^out/, config.outPath)

				# Check
				return complete()  unless opts.reset is true or fsUtil.existsSync(repoDetails.path) is false

				# Log
				docpad.log('info', "Updating #{repoDetails.name}...")

				# Opts
				_opts =
					log: docpad.log
					remote: 'origin'
					branch: 'master'
					output: true
				extendr.extend(_opts,repoDetails)

				# Init or Update
				balUtil.initOrPullGitRepo _opts, (err) =>
					# warn about errors, but don't let them kill execution
					docpad.warn(err)  if err
					docpad.log('info', "Updated #{repoDetails.name}")
					complete()

			# Fire
			tasks.run()
			return
