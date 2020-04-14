# frozen_string_literal: true

module MyModule
  def my_map
    each do |item|
      p item
    end
  end

  def my_select
    new_array = []
    each do |item|
      new_array << item if item.even?
    end
    p new_array
  end

  def my_each
    new_array = []
    each do |item|
      item *= item
      new_array << item
    end
    p new_array
  end
end
