require "fibonacci/version"
require 'ffi'
require 'ffi-compiler/loader'

module Fibonacci
  extend FFI::Library
  ffi_lib FFI::Compiler::Loader.find('fibonacci')

  # example function which takes no parameters and returns long
  attach_function :fib, [:int], :int
end
