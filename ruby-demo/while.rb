#!/usr/bin/ruby
$i = 0
$num =1<<10

while $i < $num do
    puts("Inside the loop i = #$i")
    $i += 1
end

for i in 0..10
    puts "value of local variable is #{i}"
end

(0..5).each do |i|
    puts "value of local variable is #{i}"
end
