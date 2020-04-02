# frozen_string_literal: true

# this class Mentor

class Mentor
  def initialize(name:, surname:)
    @name = name
    @surname = surname
    @notification = []
  end

  def notification(notification)
    @notification << notification
  end

  def read_notifications!
    @notification.delete(notification)
  end
end
