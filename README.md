Convert True Type Font(.ttf) to png using "convert" command in Imagemagick.

It's pretty simple and easier to use RMagick.

####Usage

`ruby gen.rb 1` then `ls *.png`

Simply type `ruby gen.rb`, this is equivalent to specify no-operation flag.
So you can see all commands to execute.

####Mechanism

This image was created by following command.

`convert -background none -fill black -font yubimoji.ttf -pointsize 300 label:"あ" あ.png`

![](http://github.com/yukinoraru/ttf2png/raw/master/a.png)



