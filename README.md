Convert True Type Font(.ttf) to png using "convert" command in Imagemagick.

It's pretty simple and easier to use RMagick.

####Usage

`ruby ttf2png.rb 1` then `ls *.png`

Simply type `ruby ttf2png.rb`, this is equivalent to specify no-operation flag.
So you can see all commands to execute.

####Mechanism

This image was created by following command.

`convert -background none -fill black -font yubimoji.ttf -pointsize 300 label:"あ" あ.png`

![](http://github.com/yukinoraru/ttf2png/raw/master/a.png)

####Perl Sample
Want to convert 'U+E001' to png, type following command (perl required):

`perl -e 'binmode(STDOUT, ":utf8"); print "\x{E001}";' | convert -background none -fill black -font YourFont.ttf -pointsize 300 label:@- foo.png`

You can get code point via "Font Book" app in your Mac.
![](http://github.com/yukinoraru/ttf2png/raw/master/fontbook.png)
