proc count_lines {filename} {
    set lines 0
    set f [open $filename r]
    while {[gets $f line] >= 0} {
        incr lines
    }
    close $f
    return $lines
}

set filename "my_file.txt"
set num_lines [count_lines $filename]
puts "Number of lines in $filename: $num_lines"