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
    puts "Welcome to the Magic Eight Ball".colorize(:red)
    sleep(2)
    menu
  end

  def menu
    puts "1) Ask a question".colorize(:red)
    puts "2) QUIT".colorize(:red)
    print "> "
    choice = gets.to_i
    case choice
      when 1
        puts "What is your question?".colorize(:red)
        print "> "
        $user_question = gets.strip
        puts "#{$answers.sample}"
        print_answers
      when 2
        puts "You are now leaving Magic Eight Ball".colorize(:red)
        exit
      else
        "Invalid Option".colorize(:red)
    end
    menu
  end
end


def print_answers
  if $user_question == "Yes or yes?"
    $answers.each do |answer|
      puts "#{answer}"
    end
  end
end


EightBall.new