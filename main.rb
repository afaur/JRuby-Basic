# Need this to use java_import
require 'java'

# Need this to be able to detect deps?
require 'jbundler'

java_import "org.yaml.snakeyaml.Yaml"

# solrj stuff
java_import "org.apache.solr.client.solrj.SolrServerException"
java_import "org.apache.solr.client.solrj.impl.HttpSolrServer"
java_import "org.apache.solr.client.solrj.SolrQuery"
java_import "org.apache.solr.client.solrj.response.QueryResponse"
java_import "org.apache.solr.common.SolrDocumentList"

# Alternate import syntax
#java_import Java::org.yaml.snakeyaml.Yaml

java_import "java.io.Reader"
java_import "java.io.FileReader"
java_import "org.apache.bsf.util.IOUtils"

# Create a new reader using FileReader to read a file
reader = FileReader.new("./test.yaml")

# Create a new snake_yaml
snake_yaml = Yaml.new

# Get the yaml data
data = snake_yaml.load(
  # Parse into a string from a reader
  IOUtils.getStringFromReader(
    reader
  )
)

# Print out the data
puts data['person']

