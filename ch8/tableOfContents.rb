
line_width = 50
book = ["Table of Contets", "Chapter 1: Getting Started", "Page 1", "Chapter 2: Numbers", "Page 9", "Chapter 3: Letters", "Page 13"]
puts book[0].center(line_width)
puts book[1].ljust(line_width) + book[2].rjust(5)
puts book[3].ljust(line_width) + book[4].rjust(5)
puts book[5].ljust(line_width) + book[6].rjust(5)
