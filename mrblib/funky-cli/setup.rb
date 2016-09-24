module FunkyCli
  class Setup
    def self.run(name)
      Dir.mkdir(name) unless Dir.exist?(name)
      Dir.chdir(name) do
        write_file(".gitignore", gitignore)
        write_file("Gemfile", gemfile)
        write_file("Rakefile", rakefile)
        create_dir_p("lib")
        write_file("lib/main.rb", main)
        create_dir_p("test/unit")
        create_dir_p("test/integration")
        write_file("test/test_helper.rb", helper)
        write_file("test/unit/#{name}_test.rb", unit(name))
        write_file("test/integration/#{name}_test.rb", integration)
      end
    end

    def self.gitignore
      <<IGNORE
out/
IGNORE
    end

    def self.create_dir_p(dir)
      dir.split("/").inject("") do |parent, base|
        new_dir =
          if parent == ""
            base
          else
            "#{parent}/#{base}"
          end

        create_dir(new_dir)

        new_dir
      end
    end

    def self.create_dir(dir)
      if Dir.exist?(dir)
        puts "  skip    #{dir}"
      else
        puts "  create  #{dir}/"
        Dir.mkdir(dir)
      end
    end

    def self.write_file(file, contents)
      puts "  create  #{file}"
      File.open(file, 'w') {|file| file.puts contents }
    end

    def self.gemfile
      <<GEMFILE
source 'https://rubygems.org'

gem 'da_funk'
gem 'funky-cli', '~> 0.2'
gem 'rake'
GEMFILE
    end

    def self.rakefile
      <<RAKEFILE
#!/usr/bin/env rake

require 'rake'
require 'fileutils'
require 'bundler/setup'

Bundler.require(:default)

DaFunk::RakeTask.new do |t|
  t.mrbc  = "funky-cli compile"
  t.mruby = "funky-cli run -b"
end
RAKEFILE
    end

    def self.main
      <<MAIN
class Main < Device
  def self.call
    puts "Hello World!"
    getc
    true
  end

  def self.foo
    :foo
  end

  def self.version
    "0.0.1"
  end
end
MAIN
    end

    def self.helper
      <<HELPER
ROOT_PATH = File.expand_path("../")
APP_NAME = File.basename(ROOT_PATH)

$LOAD_PATH.unshift "./\#{APP_NAME}"
require 'da_funk'

DaFunk::Test.configure do |t|
  t.root_path = ROOT_PATH
  t.name      = APP_NAME
end
HELPER
    end

    def self.integration
      <<INTEGRATION
class MainTest < DaFunk::Test.case
  def test_true
    assert Main.call
  end
end
INTEGRATION
    end

    def self.unit(name)
      <<UNIT
class #{Util.camelize(name)}Test < DaFunk::Test.case
  def test_foo0
    assert_equal :foo, Main.foo
  end

  def test_foo1
    assert_equal :foo, Main.foo
  end
end
UNIT
    end
  end
end