require "pry"
require "colorize"

$answers = [
  "Yes definitely",
  "Most likely",
  "Maybe",
  "Very doubtful",
  "My sources say no",
  "Outlook is good",
  "Outlook not so good",
  "Ask again later"
]

class EightBall
  def initialize
    puts "Welcome to the Magic Eight Ball"
    menu
  end

  def menu
    puts "1) Ask a question"
    puts "2) QUIT"
    print "> "
    choice = gets.to_i
    case choice
      when 1
        puts "What is your question?"
        print "> "
        gets 
        puts "#{$answers.sample}"
      when 2
        puts "You are now leaving Magic Eight Ball"
        exit
      else
        "Invalid Option"
        menu
    end
  end
end


EightBall.new