namespace eval ::mal {}

proc ::mal::read {str} {
	return $str
}

proc ::mal::eval {ast env} {
	return $ast
}

proc ::mal::print {exp} {
	return $exp
}

proc ::mal::rep {str} {
	return [print [eval [read $str] {}]]
}

proc ::mal::prompt {} {
		puts -nonewline "user> "
		flush stdout
		set input [gets stdin]
		if {[eof stdin]} {
			return -code break
		}
		return $input
}

proc ::mal::main {argv} {
	while {true} {
		puts [rep [prompt]]
	}
}

::mal::main $::argv