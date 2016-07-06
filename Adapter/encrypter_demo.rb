#!/usr/bin/env ruby

require_relative '../example'

require_relative 'encrypter'

example %q{
  reader = File.open('Adapter/message.txt')
  writer = File.open('Adapter/message.encrypted','w')
  encrypter = Encrypter.new('my secret key')
  encrypter.encrypt(reader, writer)


  writer.close
}
