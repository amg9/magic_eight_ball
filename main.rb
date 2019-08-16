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
    puts "Welcome to the Magic Eight Ball!".colorize(:red)
    sleep(1)
    qna
  end

  def qna
    puts "Type a question to get an answer, or type QUIT to end the program".colorize(:red)
    print "> "
    $user_input = gets.strip
    case $user_input
      when "QUIT"
        puts "You are now leaving Magic Eight Ball".colorize(:red)
        exit        
      when "Yes or yes?"
        print_answers
      when "Do you love me?"
        add_answer
      else
        puts "8: #{$answers.sample}".colorize(:magenta)
    end
    qna
  end
end


def print_answers
  $answers.each do |answer|
    puts "#{answer}".colorize(:magenta)
  end
end

def add_answer
  puts "Add an answer to Magic Eight Ball".colorize(:red)
  print "> "
  user_answer = gets.strip
  $answers << user_answer
end


EightBall.new