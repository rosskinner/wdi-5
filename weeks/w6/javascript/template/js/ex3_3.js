// Write a function named assignGrade that:

// takes 1 argument, a number score.
// returns a grade for the score, either "A", "B", "C", "D", or "F".
// Call that function for a few different scores and log the result to make sure it works.

var assignGrade = function(score) {
  if (score > 90) {
    grade = "A";
  } else if (score > 80 && score < 90){
    grade = "B";
  } else if (score > 60 && score < 80) {
    grade = "C";
  }
  console.log("your score of " + score + " gives you a grade of " + grade);
}

assignGrade(71);