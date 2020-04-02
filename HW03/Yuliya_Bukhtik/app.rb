# frozen_string_literal: true

# this is a main module to run the application

require 'base_observer'
require 'student'
require 'mentor'
require 'homework'
require 'notification'

module App
  def self.run
    student = Student.new(name: 'John', surname: 'Doe')
    mentor = Mentor.new(name: 'Jack', surname: 'Gonsales')

    student.add_observer(Homework.new)
    student.add_observer(Notification.new)

    student.homework_date = 'homework_date.txt' # student submitted his homework

    student.notify_observers

    mentor.read_notifications!
  end
end
