

def read_code
  File.open(__FILE__, "r") do |f|
  f.readlines.each do |line|
    puts line
  end
end
end


read_code
