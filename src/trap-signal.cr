require "./trap-signal/*"

Signal.values.each do |signal|
  signal.trap do
    puts signal.to_i
    exit
  end
end
