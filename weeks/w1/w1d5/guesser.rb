class Guesser
  attr_reader :max_guess, :guesses
  def initialize(max_guess=100)
    @max_guess = max_guess
    @secret_number = rand(@max_guess)
    @guesses = 0
  end

  def try(guess)
    @guesses += 1
    guess == @secret_number

end
end
