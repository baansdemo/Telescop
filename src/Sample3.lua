local speech = require "summit.speech"
 
channel.answer()
 
local digit = channel.gather(
    { play=speech("Press 1 to hear an emergency compliment. Press 2 to get knocked down a notch."), maxDigits=1 }
)
 
if digit == '1' then
    channel.say('Your hair looks great today. It also looked really good two days ago.')
elseif digit == '2' then
    channel.say("Those shoes maybe weren't the best choice with that shirt.")
else
    channel.say('Please press either 1 or 2.')
end
channel.hangup()