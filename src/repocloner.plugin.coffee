# Export Plugin
module.exports = (BasePlugin) ->
	# Import
	{TaskGroup} = require('taskgroup')
	extendr = require('extendr')
	safeps = require('safeps')
	fsUtil = require('fs')

	# Define Plugin
	class RepoclonerPlugin extends BasePlugin
		# Plugin Name
		name: 'repocloner'

		# Plugin Config
		config:
			repos: null

		# Clone/Update our DocPad Documentation Repository
		populateCollectionsBefore: (opts,next) ->
			# Prepare
			docpad = @docpad
			config = docpad.getConfig()
			tasks = new TaskGroup().setConfig(concurrency:0).done (next)
			repos = @config.repos or []

			# Cycle through the repos assigning each repo value to @ so it works asynchronously
			repos.forEach (repoDetails) -> tasks.addTask (complete) ->
				# Normalize path
				repoDetails.path = repoDetails.path
					.replace(/^src\/documents/, config.documentsPaths[0])
					.replace(/^src\/files/, config.filesPaths[0])
					.replace(/^src/, config.srcPath)
					.replace(/^out/, config.outPath)

				# Log
				docpad.log('info', "Updating #{repoDetails.name}...")

				# Opts
				_opts =
					remote: 'origin'
					branch: 'master'
					output: true
				extendr.extend(_opts, repoDetails)

				# Init or Update
				safeps.initOrPullGitRepo _opts, (err) ->
					# warn about errors, but don't let them kill execution
					docpad.warn(err)  if err

					# Update
					docpad.log('info', "Updated #{repoDetails.name}")
					return complete()

			# Fire
			tasks.run()
			return
