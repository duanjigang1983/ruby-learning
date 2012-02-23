#!/usr/bin/ruby

$:.unshift( '../lib' )

require 'inifile'

oIni = IniFile::new( "TestRead.ini" )

oIni['section3'].each { |k, v|
  print "#{k} = #{v}\n"
}
