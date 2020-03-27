# frozen_string_literal: true

require 'date'

logs = 'log_file_task_03.txt'

def task_3(file)
  f = File.new file
  lines = f.readlines

  # getting action duration
  d = formatted_strings lines

  puts d.to_f.to_s
end

def formatted_strings(array)
  # getting only strings with "Calling core with action"
  array.select! { |elem| elem.include? 'Calling core with action' }

  # getting format date from Calling core with action_strings
  array.map! { |elem| elem[/\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}\.\d/] }

  # getting DateTime object from date format
  a = DateTime.parse(array[0])
  b = DateTime.parse(array[1])

  # action duration calculation
  duration = quantity_of_seconds(b) - quantity_of_seconds(a)
  duration
end

# getting quantity of seconds from DateTime objects
def quantity_of_seconds(time)
  time.hour * 60 + time.minute * 60 + time.second + time.second_fraction
end

task_3(logs)

# output "49.1"
