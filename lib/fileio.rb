require_relative 'jungle_beat'

class File_io
  attr_accessor :input

  def initialize(input)
    @input = File.open(ARGV[0]).read
  end

  def play_beats
    player = LinkedList.new(@input)
    player.play
  end
end

file = File_io.new(ARGV[0])
file.play_beats
