name = File.basename(@file).sub(/\.#{@extension}$/, '')
out  = File.join("build", "cpp", name)

puts "Compiling..."
if system "g++ #{@file} -o #{out}"
  puts "Running..."
  system out
end