title = "Table of Contents"
sec1 = "Chapter 1: Getting Started"
pg1 = "Page 1"
sec2 = "Chapter 2: Numbers"
pg2= "Page 9"
sec3 = "Chapter 3: Letters"
pg3 = "Page 13"
line_width = 50
puts (title.center(line_width))
puts (sec1.ljust(line_width) + pg1.rjust(line_width/12))
puts (sec2.ljust(line_width) + pg2.rjust(line_width/12))
puts (sec3.ljust(line_width) + pg3.rjust(line_width/12))
