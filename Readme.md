A classic rock,paper and scissors game built using: Ruby, TDD and Sinatra


# Setup

- Clone/Save Github repo

- Make sure you have sinatra and Ruby installed

- run: ruby app.rb

- Go to http://localhost:4567/welcome in your browser

# Brief

- Create a simple sinatra app to allow the user to play rock, paper, scissors in their browser
- You should be able to go to /rock/scissors and return the string “rock wins” to the page
- You will need to write a bit of logic that compares the two hands and decides which one has won, and then use that in the route definition

**Extensions**

- Add an ERB view file for returning the result of the game, rather than just sending a string
- Add a welcome page (and a route to get it) to explain the rules before the user picks their move. Add a link to this on the result view
- Add some CSS to either/both of your pages.

**Further extension**

Think about how you might differentiate between the two people playing the game - currently we don’t know WHO has won, just which hand. If we think of ‘/rock/scissors’ as being Player 1 plays Rock, and Player 2 plays Scissors, how might we be able to give the feedback of ‘Player 1 wins by playing Rock!’ rather than just ‘Rock wins!’?

---
