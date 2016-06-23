#!/usr/bin/env ruby

require_relative '../example'

example %q$

a = ['russell', 'mike', 'john', 'dan', 'rob']


pp a.sort

pp      a.sort {|a,b| a.length <=> b.length}
$
