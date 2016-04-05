#
#FALTA REFACTORIZAR COFDIGO
require_relative 'model'

require_relative 'view'

class Controller

	def initialize
		@model = Maraton.new
		@view = View.new

	end
	#SEPARAR POR SINGLE RESPONSABILITY
	def show	
		maraton = @model.read
		@view.inst
		maraton.each do |question|
			answer_user = @view.show(question)
			ans = question.answer
			if answer_user == question.answer
				p "Respuesta correcta"
				@model.c += 1
			else
				p "Respuesta incorrecta  ==> #{ans}" 
				@model.i += 1
			end
		end
		@view.result(@model.c,@model.i)
	end	
end
#@model.check(answer_user)

maraton = Controller.new
	maraton.show
#un ciclo times del numero de preuntaq eu tenenos establecias