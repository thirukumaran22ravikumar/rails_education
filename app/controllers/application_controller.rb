class ApplicationController < ActionController::Base
	include HeplerExampleHelper

	def self.callfunction
		p ";;;;;;;;;;"
		data = HeplerExampleHelper.format_date(Time.now)
		p data.to_s
	end

	
end
