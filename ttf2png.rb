# coding: utf-8
# USAGE: ruby ttf2png.rb

#//-------------------------------------------
# Note:
#//-------------------------------------------

# Unicode(code point):
# U+3042 == "あ" == "\u3042" == \u{3042}

# How to get code point:
# "あ".unpack( "U*" ).first.to_s(16)  #=> "3042"
# "あ".encode( "UTF-8" ).ord.to_s(16) #=> "3042"

#//-------------------------------------------
# Config:
#//-------------------------------------------

FONT      = "yubimoji.ttf"
FONT_SIZE = 300 #pt

FIRST     = "\u3042"  # == "あ"
LAST      = "\u30fa"  # == "ヺ"

#//-------------------------------------------

(FIRST..LAST).step do |a|
  cmd = "convert -background none -fill black -font #{FONT} -pointsize #{FONT_SIZE} label:\"#{a}\" #{a}.png"
  puts cmd
  system(cmd) if ARGV[0]
end

print sprintf("If you want to execute these commands, try this: \nruby %s 1\n", File.basename(__FILE__)) if ARGV.length == 0
