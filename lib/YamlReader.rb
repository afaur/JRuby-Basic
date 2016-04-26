require 'java'
require 'jbundler'

java_import "org.yaml.snakeyaml.Yaml"
java_import "java.io.Reader"
java_import "java.io.FileReader"
java_import "org.apache.bsf.util.IOUtils"

class YamlReader
  attr_reader :data
  def initialize(file)
    @file   = file
    @reader = FileReader.new("./config/test.yaml")
    @sy     = Yaml.new
    @parsed = read
  end

  def read
    @sy.load(
      IOUtils.getStringFromReader(
        @reader
      )
    )
  end

  def data
    @parsed
  end
end

