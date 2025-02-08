proc count_lines {filename} {
    set lines 0
    if {[catch {[open $filename r] f}]} {
        puts stderr "Error opening file $filename: $::errorInfo"
        return -1 ; # Or throw an error
    }
    while {[gets $f line] >= 0} {
        incr lines
    }
    close $f
    return $lines
}

set filename "my_file.txt"
set num_lines [count_lines $filename]
puts "Number of lines in $filename: $num_lines"