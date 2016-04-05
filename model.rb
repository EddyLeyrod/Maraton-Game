require 'csv'

class Question
	attr_accessor :question, :answer
	def initialize(question,answer)
		@question = question
		@answer = answer

	end
end

#CREAMOS VARIABLES DE INSTACIA PARA CONTAR 
#LAS RESPUESTAS CORRECTAS E INCORRECTAS
class Maraton
	attr_accessor :c,:i
	def initialize
		@maraton = []
		@c = 0
		@i = 0
	end

#lee el CSV para crear un arreglo de objetos de cada pregunta
	def read		
		CSV.foreach("questions.csv") do |question|
			@maraton << Question.new(question[0],question[1])
		end
		@maraton
	end

	# def search_q(maraton,num)
	# 	p num
	# 	question_one = []
	# 		maraton.each_with_index do |question, index|
		
	# 			if num == index
	# 				question_one << question.question
	# 			end
	# 		end
	# 		p question_one
	# end

	# def check(answer_user)
		
	# 	@maraton.each do |question|
	# 		 answer = question.answer
	# 		if answer == answer_user
	# 			p "Correcto"
	# 			p @c += 1
	# 		else
	# 			p "Incorrecto"		
	# 			p @i += 1
	# 		end
	# 	end
	# end

end