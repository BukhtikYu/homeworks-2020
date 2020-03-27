# frozen_string_literal: true

file_path = 'log_file_task_02.txt'

def task_2(file)
  f = File.new file
  lines = f.readlines

  # by the below method lines with ERROR will be deleted
  lines.delete_if { |line| line.include? 'error' }

  # by the below method the rest lines will be parsed into the required format
  lines.map! do |line|
    parsing_new_line line
  end

  f.close
  puts lines
end

def parsing_new_line(line)
  ip = Regexp.new '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}'
  date = Regexp.new '\d{1,2}\/[a-zA-Z]+\/\d{4}:\d{1,2}:\d{1,2}:\d{1,2} \+\d+'

  # getting POST address in upcase
  address = line[/".+"/].upcase!
  # getting required address format for output
  address_format = address[%r{/[a-zA-Z]{4}/\d/[a-zA-Z]+}]

  "#{line[date]} FROM: #{line[ip]} TO: #{address_format}"
end

task_2 file_path
