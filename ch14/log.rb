def log name, &block
  puts "Beginning " + name + "..."
  answer = block.call
  puts "..." + name.to_s + "finished, returning: " + answer.to_s
end
log "Outer Block" do
  log "some little block" do
    5*5
  end
    log "yet another block" do
      "I like Thai Food" #How come putting "Puts" before this and line 8 causes nothing to appear?
  end
  0
end
