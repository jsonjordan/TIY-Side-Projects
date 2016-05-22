require "pry"

symbols = [
  "Æ", "¥", "£", "þ",
  "¢", "¿", "Ø", "®",
  "§", "¶", "±", "√",
  "π", "∞", "⋰", "Ω",
  "ڲ", "₪", "Ð", "β",
  "€", "Œ", "@", "Ž",
  "♇", "▷", "☆", "⌘",
  "⎈", "☭", "♢", "╬"
]

# a = (symbols[0]*8).split("") + (symbols[1]*8).split("")
# a = a + (symbols[2]*8).split("")

a = []
symbols.each do |s|
  a += (s*8).split("")
end

i = 0
a.each do |e|
  if (i % 8  == 7)
    puts a[i].center(2)
  else
    print a[i].center(2)
    #print " "
  end
  i += 1
end
