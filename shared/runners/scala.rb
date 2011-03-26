name      = File.basename(@file).sub(/\.#{@extension}$/, '')
classpath = File.join('build', 'scala')
shared    = File.join('shared', 'includes', '*.scala')

puts "Compiling..."
if system "scalac -cp #{classpath} #{shared} #{@file}"" -d #{classpath}"
  puts "Running..."
  system "cd #{classpath} && scala #{name}"
end