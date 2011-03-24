class Rag < Thor

	desc "release", "release this gem to RubyGems.org"
	def release
		system "gem build #{Rc.o.project}.gemspec", :verbose
		system "gem push #{Rc.o.project}-#{Rc.o.version}.gem", :verbose
		Pa.rm "#{Rc.o.project}-#{Rc.o.version}.gem", :verbose
	end

	desc "install", "install this gem to your system"
	def install
		system "gem build #{Rc.o.project}.gemspec", :verbose
		system "gem install #{Rc.o.project}-#{Rc.o.version}.gem", :verbose
		Pa.rm "#{Rc.o.project}-#{Rc.o.version}.gem", :verbose
	end

end