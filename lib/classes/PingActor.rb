class PingActor < Akka::UntypedActor
  def self.create(*args)
    self.new(*args)
  end
 
  def onReceive(message)
    puts "!!! Acted on: #{message}"
  end
end

