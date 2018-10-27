



--channel.play('assets://GPV.wav')

--channel.play(‘assets://GPV.mp3’)



channel.answer()
 
local menu = require 'summit.menu'
 
local my_ivr = menu()
 
function positive_affirmation()
    channel.say("Your hair looks great today. It also looked really good two days ago.")
end
function negative_response()
    channel.say("Those shoes maybe weren't the best choice with that shirt.")
end
function invalid_response()
    channel.say("Invalid input. Press 1 or 2.")
end
 
 
my_ivr.add('1', "Press 1 to hear an emergency compliment.", positive_affirmation)
my_ivr.add('2', "Press 2 to get knocked down a notch.", negative_response)
my_ivr.default(invalid_response)
 
my_ivr.run()