# frozen_string_literal: true

require 'spec_helper'

require_relative 'array.rb'
require_relative 'my_module.rb'

RSpec.describe MyModule do
  subject(:a) { Array.new([1, 2, 3, 4]) }

  describe '#my_each' do
    it 'iterates over the array and prints each element' do
      expect(a.my_each).to eq [1, 2, 3, 4]
    end
  end

  describe '#my_select' do
    it 'iterates over the array and returnes new array with even numbers' do
      expect(a.my_select).to eq [2, 4]
    end
  end

  describe '#my_map' do
    it 'returnes new array with square of each element' do
      expect(a.my_map).to eq [1, 4, 9, 16]
    end
  end
end
