# ./install/bin/ruby test_rle_bench.rb
# regex = /^<title>.*?\d+\.\d+<\/title>$/
regex = /(a|a?)+$/
# regex = /^.*\/(.*).git$/

# input = '<title>' + '9' * 2000 + '%'
input = 'a' * 2000 + '%'
# input = '/' * 2000 + '%'

start_time = Time.now
matched = regex.match?(input)
end_time = Time.now

puts "Input length: #{input.length}"
puts "Matched? #{matched}"
puts "Time taken: #{((end_time - start_time) * 1000).round(2)} ms"
