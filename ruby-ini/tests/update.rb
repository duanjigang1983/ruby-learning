#!/usr/bin/ruby

$:.unshift( '../lib' )

require 'inifile'

oIni = IniFile::new( "TestRead.ini" )

h = oIni["section3"]
h["sec3key6"] = "value6"
oIni["section3"] = h

nh = Hash::new
nh["sec4key1"]="value1"
nh["sec4key2"]="value2"
nh["sec4key3"]="value3"
nh["sec4key4"]="value4"
nh["sec4key5"]="value5"
oIni["section4"] = nh

oIni.write( "TestReadUpdate.ini" )
