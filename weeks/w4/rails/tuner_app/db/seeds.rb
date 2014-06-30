Genre.destroy_all
Song.destroy_all
Artist.destroy_all
Album.destroy_all
User.destroy_all
Mixtape.destroy_all

g1 = Genre.create(:name => 'Post punk')
g2 = Genre.create(:name => 'Pop')
g3 = Genre.create(:name => 'Rock')
g4 = Genre.create(:name => 'Folk')
g5 = Genre.create(:name => 'Hip Hop')
g6 = Genre.create(:name => 'RnB')


s1 = Song.create(:name => 'Hospital Doors')
s2 = Song.create(:name => '3005')
s3 = Song.create(:name => 'R U Mine?')

r1 = Artist.create(:name => 'Beyonce')
r2 = Artist.create(:name => 'The Strokes')
r3 = Artist.create(:name => 'Lauryn Hill')

a1 = Album.create(:name => 'Channel Orange')
a2 = Album.create(:name => 'The Number A')
a3 = Album.create(:name => 'Vs')

u1 = User.create(:username => 'Ros', :avatar => 'http://tinyurl.com/o3jklyq', :password => 'password', :password_confirmation => 'password', :is_admin => true)
u2 = User.create(:username => 'Bill', :avatar => 'http://tinyurl.com/o3jklyq', :password => 'password', :password_confirmation => 'password')
u3 = User.create(:username => 'Xaun', :avatar => 'http://tinyurl.com/o3jklyq', :password => 'password', :password_confirmation => 'password')

m1 = Mixtape.create(:name => 'Sad')
m2 = Mixtape.create(:name => 'Pump')
m3 = Mixtape.create(:name => 'Sleep')


r1.songs << s1
r2.songs << s2
r3.songs = [s3]
r3.save

a1.songs << s1
a2.songs << s2
a3.songs << s3

g1.songs << s1
g2.songs << [s3]
s2.genres << g3
g2.save

u1.mixtapes << m1 << m2
u2.mixtapes = [m3]
u2.save

m1.songs << s2 << s3
m2.songs << s1
m3.songs = [s2]
m3.save


