// It's like IMDB, but much much smaller!

// Create an object to store the following information about your favorite movie: title (a string), duration (a number), and stars (an array of strings).

// Create a function to print out the movie information like so: "Puff the Magic Dragon lasts for 30 minutes. Stars: Puff, Jackie, Living Sneezes."
var stars = [];

var movies = {
  title: "Fifth Element",
  duration: 127,
  stars: ["Bruce Willis", "Milla Jovovich", "Gary Oldman"]
};

for(i = 0; i < movies.stars.length; i++) {
   star =  movies.stars[i];
   stars.push(star);
}

var stars = stars.join(', ');

console.log(movies.title + " lasts for " + movies.duration + " minutes. Stars: " + stars + ".")