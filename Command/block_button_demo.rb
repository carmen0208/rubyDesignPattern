require_relative '../example'
require_relative 'block_button'

example %q{
new_button = SlickButton.new do
  #
  #Create a new document
  #
end


new_button.on_button_push

}

test_button = SlickButton.new {puts "pushed"}

test_button.on_button_push
