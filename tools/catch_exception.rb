#!/usr/bin/ruby

# Catches if user presses CTRL-C to close program
trap "SIGINT" do
  puts
  exit 130
end
