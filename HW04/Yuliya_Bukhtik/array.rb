# frozen_string_literal: true

require_relative 'my_module.rb'

class Array
  include MyModule
end

[1, 2, 3, 4].my_select
p [1, 2, 3, 4].select(&:even?)
[1, 2, 3, 4].my_each
