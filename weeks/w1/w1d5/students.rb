hackers = "Wendy Quek,BIll Searle,David Mesaros,Rosalind Skinner,Larlyn Tanasap,Daisy Smith,Xaun Lopez,Rich Field,Tommy Mitchell,Victerry So,Fai Weiner,Allen Hsu,Rira Choi,Yuko Sugiyama".split(',')
new_group = []
hackers.shuffle!
group_count = 0


puts "What is the size of the group?"
group_size = gets.chomp.to_i


until hackers.length < group_size
  new_group << hackers.shift(group_size)
end


names_last = hackers.join(', ').to_s
new_group.last << names_last

new_group.each do |n|
  group_count += 1
  puts " Group #{group_count} consists of #{n.join(', ').to_s}\n"
end
