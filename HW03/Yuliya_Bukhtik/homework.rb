# This is class Homework

# frozen_string_literal: true

require 'BaseObserver'

class Homework < BaseObserver
  def update(student)
    student.homeworks
  end
end
