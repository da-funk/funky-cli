#!/usr/bin/env ruby

platforms = {
  "i386-darwain"   => "i386-apple-darwin14",
  "i686-linux"     => "i686-pc-linux-gnu",
  "i686-mingw32"   => "i686-w64-mingw32.exe",
  "x86_64-darwin"  => "x86_64-apple-darwin14",
  "x86_64-linux"   => "x86_64-pc-linux-gnu",
  "x86_64-mingw32" => "x86_64-w64-mingw32.exe"
}

executable = platforms["#{`uname -m`}-#{`uname -s`.downcase}"]

system("#{File.dirname(File.realpath(__FILE__))}/../exe/#{executable}", *ARGV)