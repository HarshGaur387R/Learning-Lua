local options = { "Rock", "Paper", "Scissor" }

-- Rules: key defeats value
local rules = {
	Rock = "Scissor",
	Paper = "Rock",
	Scissor = "Paper"
}

local function compareInputs(userChoice, computerChoice)
	if userChoice == computerChoice then
		print("It's a draw!")
	elseif rules[userChoice] == computerChoice then
		print("User Won!")
	else
		print("Computer Won!")
	end
end

local function takeInput()
	print("Enter a number between 1 to 3:")
	print("(1) Rock  (2) Paper  (3) Scissor")
	local option = tonumber(io.read())

	if not option or option < 1 or option > 3 then
		print("Incorrect Option!")
		return nil
	end
	return options[option]
end

local function main()
	math.randomseed(os.time()) -- better randomness

	while true do
		local userChoice = takeInput()
		if not userChoice then break end

		local computerChoice = options[math.random(1, 3)]
		print("You chose: " .. userChoice)
		print("Computer chose: " .. computerChoice)

		compareInputs(userChoice, computerChoice)

		print("\nPlay again? (y/n)")
		local replay = io.read()
		if replay:lower() ~= "y" then
			print("Thanks for playing!")
			break
		end
	end
end

main()
