module FunkyCli
  class Helper
    def self.run
      puts "funky-cli [switches] [arguments]"
      puts "funky-cli help                            : show this message"
      puts "funky-cli new <name>                      : create app"
      puts "funky-cli compile -o<out> <file1> <file2> : compile ruby to mrb"
      puts "funky-cli console                         : mirb console"
      puts "funky-cli run -b <out>, <file1>           : run ruby or binary file"
      puts "funky-cli version                         : print funky-cli version"
    end
  end
end
