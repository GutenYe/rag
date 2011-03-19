desc "build a gem file"
task :release do
	`rm *.gem &>/dev/null`
	sh "gem build rag.gemspec"
	sh "gem push *.gem"
	sh "rm *.gem"
end

desc "autotest with watchr"
task :autotest do
	sh "watchr rag.watchr"
end

desc "testing the libraray"
task :test do
	sh "rspec --color spec"
end

desc "run yard server --reload"
task :doc do
	sh "yard server --reload"
end

def sh cmd
	puts cmd
	system cmd
end
