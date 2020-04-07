# frozen_string_literal: true

require 'observable'

class Student
  include Observable

  attr_writer :homework_date

  def initialize(name:, surname:)
    super()
    @name = name
    @surname = surname
    @homework_date = homework_date
    @homeworks = []
  end

  def homeworks
    @homeworks << @homework_date
  end
end
