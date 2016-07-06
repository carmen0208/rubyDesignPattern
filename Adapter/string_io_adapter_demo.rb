#!/usr/bin/env ruby

require_relative '../example'
require_relative 'encrypter'
require_relative 'string_io_adapter'

example %q{
encrypter = Encrypter.new('XYZZY')
reader = StringIOAdapter.new('We attack at dawn')
writer = File.open('Adapter/message.encrypted','w')
encrypter.encrypt(reader, writer)

writer.close

}
