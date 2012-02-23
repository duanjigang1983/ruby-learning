#!/usr/bin/ruby

$:.unshift( '../lib' )

require 'inifile'

oIni = IniFile::new( "TestRead.ini" )
oIni.write( "TestReadCopy.ini" )
