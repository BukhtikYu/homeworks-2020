# frozen_string_literal: true

require 'BaseObserver'

class Notification < BaseObserver
  def update(mentor)
    mentor.notification
  end
end
