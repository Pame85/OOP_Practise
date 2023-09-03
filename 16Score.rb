# Assignment : 
# Given a hash student_scores with student names as keys and their corresponding test scores as values,
# 1. write code to find the student with the highest score.


require 'colorize'

student_scores = { "Alice" => 85, "Bob" => 92, "Charlie" => 78, "David" => 95 }

def highest_score(scores)
    highest_score = scores.values.max
    highest_scoring_students = scores.select { |student, score| score == highest_score }
    
    highest_scoring_students.each do |student, score|
    puts "#{student} has the highest score of #{score}".blue
    end
end

highest_score(student_scores)