# [8] Make a program that prints each line that has a two of the same nonwhitespace characters next to each other. It should match lines that contain words such as Mississippi, Bamm-Bamm, or llama.

ARGF.each do |line|
  puts line if line =~ /(\S)\1/ # \1 is a 'back reference' to what we captured in (). any character that is not a space
end