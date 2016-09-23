def __main__(argv)
  case argv[1]
  when "version"
    puts "v#{FunkyCli::VERSION}"
  when "new"
    FunkyCli::Setup.run(argv[2])
  when "help"
    FunkyCli::Helper.run
  when "compile"
    FunkyCli::Mruby.compile(*argv[2..-1])
  when "run"
    FunkyCli::Mruby.run(*argv[2..-1])
  when "console"
    FunkyCli::Mruby.console
  else
    FunkyCli::Helper.run
  end
end
