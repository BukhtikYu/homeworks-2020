# frozen_string_literal: true

logs = 'log_file.txt'

def task_1(file)
  IO.foreach(file) do |line|
    puts line if line.include? 'error'
  end
end

task_1 logs
