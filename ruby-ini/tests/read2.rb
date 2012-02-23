#!/usr/bin/ruby

$:.unshift( '../lib' )

require 'inifile'

oIni = IniFile::new( )
oIni.load( "host.ini" )
$host_hash = []
$num=0
oIni.sections { |s|
	$ini_hash = {}
  	print "[#{s}]\n"
  	oIni[s].each { |k, v|
    	$ini_hash[k] = v if v !=nil
	#print "  #{k} = #{v}\n"
  }
  #print "host="+$ini_hash["host"].to_s+"\n"
   $host_hash[$num]=$ini_hash 	
   $num=$num+1
}
$a=$host_hash[0]
print $host_hash.size 
print "\n" + $a["host"].to_s+"\n"
$a=$host_hash[1]
print "\n" + $a["host"].to_s+"\n"
	
