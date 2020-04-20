# frozen_string_literal: true

module MyModule
  def my_each(&block)
    self.length.times do |item|
      yield(self[item])
    end
    self
  end

  def my_select(&block)
    new_array = []

    for item in self do
      new_array << item if yield(item)
    end
    new_array
  end

  def my_map(&block)
    new_array = []

    for item in self do
      new_array << yield(item)
    end
    new_array
  end
end
