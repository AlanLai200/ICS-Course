$counter = 0
def log name, &block
  indent = "    " * $counter
  $counter += 1
  puts indent +"Beginning " + name + "..."
  answer = block.call
  puts indent.to_s + "..." + name.to_s + "finished, returning: " + answer.to_s
end

log "Outer Block" do
  log "some little block" do
    log "teeny-tiny block" do
      "lots of love"
    end
    7*6
  end
    log "yet another block" do
      "I like Indian Food!"
  end
  true
end
