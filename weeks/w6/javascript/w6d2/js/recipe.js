// Never forget another recipe!

// Create an object to hold information on your favorite recipe. It should have properties for title (a string), servings (a number), and ingredients (an array of strings).

// On separate lines (one console.log statement for each), log the recipe information so it looks like:

// Mole
// Serves: 2
// Ingredients:
// cinnamon
// cumin
// cocoa

var recipe = {
  _title: "Roast Lamb",
  servings: "4",
  ingredients: ["lamb", "potatoes", "carrots", "olive oil", "cabbage", "gravy"]
};

console.log(recipe._title);
console.log("Serves: " + recipe.servings);
console.log("Ingredients: ");

for (i = 0; i < recipe.ingredients.length; i ++) {
  console.log(recipe.ingredients[i]);
}
