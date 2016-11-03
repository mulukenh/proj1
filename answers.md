# Q0: Why is this error being thrown?

- We get this error because the model Pokemon is missing and couldn't run the statement
trainerless_pokemon = Pokemon.where(trainer: nil) in the HomesController class

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

- The random Pokemon is appearing because we call the method sample() from Pokemon database, which selects one of the qulifying pokemons at random. The common factor is 
that pokemons who don't have trainers. (trainers == nil)

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

- As I described on the previous question, @pokemon gets random Pokemon from our database whose trainer field is nil. Then capture_path(id: @pokemon) sends the id of the pokemons without trainers to the Pokemon#capture method, where they are assigned a trainer. It redirects to the routes.rb file where it's matched with the correct class and method. In the pokemons#capture method, the attribute gets updated

# Question 3: What would you name your own Pokemon?

- I would name it 'mankusa'

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

- I passed the path to the current trainer and the id. When it is empty it gives error. So it's not okay to leave the redirect blank unless we have a view for the damage method.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app

https://floating-dusk-18029.herokuapp.com/
