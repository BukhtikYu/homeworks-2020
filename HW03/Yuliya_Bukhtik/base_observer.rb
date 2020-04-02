# frozen_string_literal: true

# this class creates observer's interface

class BaseObserver
  def update
    raise 'Must be implement "update" function'
  end
end
