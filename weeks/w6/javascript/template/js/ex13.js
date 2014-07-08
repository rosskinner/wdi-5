// Write a function named helloWorld that:

// takes 1 argument, a language code (e.g. "es", "de", "en")
// returns "Hello, World" for the given language, for atleast 3 languages. It should default to returning English.
// Call that function for each of the supported languages and log the result to make sure it works.

var helloWorld = function(ln_code) {
  if (ln_code == "es") {
    console.log("Hola Mundo");
  } else if (ln_code == "de") {
    console.log("Hallo Welt");
  } else if (ln_code == "en") {
    console.log("Hello World");
  }
}

helloWorld("es");
helloWorld("de");
helloWorld("en");