-- Initial setup for shrine and follower count
local started = false
local follower_count = 0

-- Function to start the process by typing "Desire"
function start_shrine(command)
    if command == "Desire" then
        started = true
        print("You have entered the Shrine. Begin your prayer.")
    else
        print("Type 'Desire' to start.")
    end
end

-- Function to execute a "Pray" command
function pray()
    if started then
        follower_count = follower_count + 1
        print("HSR Character Kafka gains a follower +" .. follower_count)
    else
        print("You must type 'Desire' to enter the Shrine first.")
    end
end

-- Example input handling
while true do
    print("Enter a command:")
    local user_input = io.read()
    
    if user_input == "Desire" then
        start_shrine(user_input)
    elseif user_input == "Pray" then
        pray()
    else
        print("Unknown command. Type 'Desire' to begin or 'Pray' to continue.")
    end
end
