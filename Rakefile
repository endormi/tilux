desc 'Run tests'
task :run_tests do
  Dir['spec/*.rb'].each do |test|
    puts test
    system('rspec', test)
  end
end

task :benchmark do
  system('cd bmrk && rake')
end

task default: :run_tests
