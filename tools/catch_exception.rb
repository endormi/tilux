#!/usr/bin/ruby

# Catches if user presses CTRL-C to close program

trap "SIGINT" do
  puts "\nExiting..."
  sleep 0.5
  exit 130
end
