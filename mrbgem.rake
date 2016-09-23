MRuby::Gem::Specification.new('funky-cli') do |spec|
  spec.license = 'MIT'
  spec.author  = 'MRuby Developer'
  spec.summary = 'funky-cli'
  spec.bins    = ['funky-cli']

  spec.add_dependency "mruby-sprintf", :core => "mruby-sprintf"
  spec.add_dependency 'mruby-mtest', :mgem => 'mruby-mtest'
  spec.add_dependency "mruby-print", :core => "mruby-print"
  spec.add_dependency "mruby-math", :core => "mruby-math"
  spec.add_dependency "mruby-time", :core => "mruby-time"
  spec.add_dependency "mruby-struct", :core => "mruby-struct"
  spec.add_dependency "mruby-enum-ext", :core => "mruby-enum-ext"
  spec.add_dependency "mruby-string-ext", :core => "mruby-string-ext"
  spec.add_dependency "mruby-numeric-ext", :core => "mruby-numeric-ext"
  spec.add_dependency "mruby-array-ext", :core => "mruby-array-ext"
  spec.add_dependency "mruby-hash-ext", :core => "mruby-hash-ext"
  spec.add_dependency "mruby-range-ext", :core => "mruby-range-ext"
  spec.add_dependency "mruby-proc-ext", :core => "mruby-proc-ext"
  spec.add_dependency "mruby-symbol-ext", :core => "mruby-symbol-ext"
  spec.add_dependency "mruby-random", :core => "mruby-random"
  spec.add_dependency "mruby-object-ext", :core => "mruby-object-ext"
  spec.add_dependency "mruby-objectspace", :core => "mruby-objectspace"
  spec.add_dependency "mruby-fiber", :core => "mruby-fiber"
  spec.add_dependency "mruby-enumerator", :core => "mruby-enumerator"
  spec.add_dependency "mruby-enum-lazy", :core => "mruby-enum-lazy"
  spec.add_dependency "mruby-toplevel-ext", :core => "mruby-toplevel-ext"
  spec.add_dependency "mruby-kernel-ext", :core => "mruby-kernel-ext"
  spec.add_dependency "mruby-eval", :core => "mruby-eval"
  spec.add_dependency "mruby-exit", :core => "mruby-exit"

  spec.add_dependency "mruby-hs-regexp", :github => "scalone/mruby-hs-regexp"
  spec.add_dependency "mruby-io", :mgem => "mruby-io"
  spec.add_dependency "mruby-dir", :mgem => "mruby-dir"
  spec.add_dependency "mruby-tempfile", :mgem => "mruby-tempfile"
  spec.add_dependency "mruby-require", :github => "iij/mruby-require"
  spec.add_dependency "mruby-socket", :mgem => "mruby-socket"
  spec.add_dependency "mruby-pack", :mgem => "mruby-pack"
  spec.add_dependency "mruby-polarssl", :mgem => "mruby-polarssl"
  #spec.add_dependency "mruby-qrcode", :github => "sadasant/mruby-qrcode", :check_sum => "83205181508fe77f9fa7e556002334e439bcbc7b"
  spec.add_dependency "mruby-miniz", :github => "scalone/mruby-miniz"
  spec.add_dependency "mruby-sleep", :mgem => "mruby-sleep"
  spec.add_dependency "mruby-msgpack", :mgem => "mruby-msgpack"
  spec.add_dependency "mruby-json", :mgem => "mruby-json"
  spec.add_dependency "mruby-context", :github => "scalone/mruby-context"
  spec.add_dependency "mruby-ripemd", :github => "scalone/mruby-ripemd"
  spec.add_dependency "mruby-hmac", :github => "scalone/mruby-hmac"
  spec.add_dependency "mruby-sha2", :mgem => "mruby-sha2"
  spec.add_dependency "mruby-sha1", :mgem => "mruby-sha1"
  spec.add_dependency "mruby-base58", :mgem => "mruby-base58"
  spec.add_dependency "mruby-bignum", :mgem => "mruby-bignum"
end

