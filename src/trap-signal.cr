require "cli"
require "./trap-signal/*"

class Main < Cli::Command
  version TrapSignal::VERSION
  command_name "trap-signal"

  class Options
    help
    version
  end

  def run
    Signal.values.each do |signal|
      signal.trap do
        puts signal.to_i
        exit
      end
    end
    sleep
  end
end

Main.run ARGV
