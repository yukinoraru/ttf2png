#coding: utf-8
(("あ".unpack("U").first .. "ヺ".unpack("U").first)).step do |i|
  a = [i].pack("U")
  cmd = "convert -background none -fill black -font yubimoji.ttf -pointsize 300 label:\"#{a}\" #{a}.png"
  puts cmd
  system(cmd) if ARGV[0]
end
if ARGV.length == 0
  print sprintf("If you want to execute these commands, try this: \nruby %s 1\n", File.basename(__FILE__))
end
