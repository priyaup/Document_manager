class ApplicationController < ActionController::Base

	before_action :print_message

	after_action :after_display_message

	private
	def print_message
		puts "====================================="
		puts "Here before action message is display"
		puts "====================================="
	end

	private
	def after_display_message
		puts "====================================="
		puts "Here after action message is display"
		puts "====================================="
	end
end
