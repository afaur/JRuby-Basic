require 'java'
require 'jbundler'

#Java::Awt::Image::BufferedImage
#Java::Io::File
#Java::Io::IOException
#Javax::Imageio::ImageIO
#Com::Github::Sarxos::Webcam::Webcam

java_import "com.github.sarxos.webcam.Webcam"
java_import "javax.imageio.ImageIO"
java_import "java.io.File"

# get default webcam and open it
#Com::Github::Sarxos::Webcam::Webcam
webcam = Webcam.getDefault()

# Open the camera
webcam.open()

# get image
#Java::Awt::Image::BufferedImage
image = webcam.getImage()

# save image to PNG file
ImageIO.write(image, "PNG", File.new("test.png"))

