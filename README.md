# Make use of Java in Ruby?

jruby to the rescue.

# Getting started

## Download

~~~
git clone git@github.com:afaur/JRuby-Basic.git
cd JRuby-Basic
~~~

## JRuby

### RVM

~~~
rvm install jruby-9.0.5.0
~~~

### rbenv

~~~
# with rbenv
rbenv install jruby-9.0.5.0
rbenv local jruby-9.0.5.0
~~~

## Running

~~~
jruby -S gem install jbundler
jbundle install
./bin/run
~~~
