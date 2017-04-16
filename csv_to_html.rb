require 'csv'
require 'erb'
require 'date'
csv_path = ARGV[0]
table = CSV.table( csv_path )
date = Date.today
contents = ERB.new(File.read("table.html.erb")).result(binding)
result = ERB.new(File.read("template.html.erb")).result(binding)
if ARGV[1] == nil
  export = date.to_s + '-result.html'
else
  export = ARGV[1]
end



File.open(export, "w") do |file|
  file.puts result
end
table.headers.each do |head|
  puts head
end
