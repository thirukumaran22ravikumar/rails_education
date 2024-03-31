# app/controllers/welcome_controller.rb
require Rails.root.join('lib', 'require_example')
#load Rails.root.join('lib', 'load_example.rb')

class RequiredLoadController < ApplicationController
  def self.my_required_method
    greet("name")
  end

  # lib/my_dynamic_code.rb
  def self.callerfuntion
    my_dynamic_method("John")
  end

end
