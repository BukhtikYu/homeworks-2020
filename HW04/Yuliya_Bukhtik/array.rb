# frozen_string_literal: true

rubocop:disable Lint/Syntax

require_relative 'my_module.rb'

class Array
  include MyModule
end
