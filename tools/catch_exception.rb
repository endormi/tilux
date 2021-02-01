#!/usr/bin/ruby

# Catches if user presses CTRL-C to close program
trap "SIGINT" do
  puts
  exit 130
end


# Checks if input is empty
def empty_input?(choice)
  if choice == ""
    puts "Choice can't be empty!"
    exit()
  end
end
