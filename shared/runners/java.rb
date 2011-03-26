name      = File.basename(@file).sub(/\.#{@extension}$/, '')
runname   = @file.sub(/\.#{@extension}$/, '')
classpath = File.join('build', 'java')
shared    = File.join('shared', 'includes', '*.java')

puts "Compiling..."
if system "javac -cp #{classpath} #{shared} #{@file}"" -d #{classpath}"
  puts "Running..."
  system "cd #{classpath} && java #{runname}"
end