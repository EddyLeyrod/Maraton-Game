class View
	def inst
		puts "\nBienvenido a Maratón."
		puts "Te daremos una pregunta y deberás adivinar la respuesta correcta. "
		puts "Listo?  Arranca el juego!\n\n"
	end
		
	def show(question)
		puts "\n#{question.question}"			
		print "=> "
		gets.chomp.to_s
	end

	def result(correct,incorrect)
		puts "  _ _ _ _ _ _ _ _ _ _ _ _ "
		puts "||Juego terminado        ||"
		puts "||    Respuestas         ||"
	  puts "||#{correct} Correctas   ||"
	  puts "||#{incorrect} Incorrectas||"
	  puts " - - - - - - - - - - - - - -"

	end
end
