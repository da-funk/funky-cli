def __main__(argv)
  case argv[1]
  when "version"
    puts "v#{FunkyCli::VERSION}"
  when "new"
    FunkyCli::Setup.run(argv[2])
  when "help"
    FunkyCli::Helper.run
  else
    puts "Hello World"
  end
end
