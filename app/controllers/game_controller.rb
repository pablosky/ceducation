class GameController < ApplicationController


 def csearch

 	@word = Word.find_by_word(params[:word])

 	if @word !=[] 

 	@content = Lesson.where(:word_id => @word.id)

 	else
 		flash[:notice] = "Word not found"
 		redirect_to "/"
 	end
 end

#check pronunciation
 def check_pron

 	@lesson = Lesson.where(:category => "Pronunciation").sample

 	if params[:texto] 


 		flash[:notice] = "correct! is "+ params[:texto]
 		redirect_to "/"

 	end	

 end 
 

 def dashboard
 	
 end

 def index

 end

 def startgame(skill)

 		uncompleted = Lesson.where(:skillLevel => skill).select(:id).collect(&:id)
		totalPoints = uncompleted.count
		@new = GameTrack.create :gameName => 'negapos', :user_id => current_user.id, :completedLessons => [], :uncompletedLessons => uncompleted, :skillLevel => params[:skill] 

 end


 def negapos

 		#si hay params de id, analizo si la respuesta estaba ok

 		#mientras se tengan vidas, y para elegir 

		 		#revisar track de ya vistas , cargarlas y luego hacer un array para comparar lo que aparezca

		 		#guardar como ya visto el elegido

		 		#mostrar la leccion

		 		#control de aprendizaje y gametrack

		 		#1 chequeo de gametrack

		 		@skill = params[:skill]

		 		#FALTA AGREGAR EL NIVEL QUE EL WEON VA A JUGAR COMO INPUT revisar lo q pasa cuando le achunta!
		 		@g = GameTrack.where(:user_id => current_user.id.to_s , :gameName => 'negapos' , :skillLevel => params[:skill]).first# buscar usuario y aventura q coincidan 
				
				#setting up gametrack if doesnt have
		 		if @g == nil
		 			
					startgame(params[:skill])
		 		 	
		 		else	

					 		if params[:id] && params[:ans]

					 			@lesson_test = Lesson.find(params[:id])
					 			
					 			if  params[:ans] == @lesson_test.posneg
					 				flash[:notice] = "You are ok!"

					 				#update gametrack
					 				@g.completedLessons << params[:id]
					 				@g.uncompletedLessons.delete(params[:id].to_i)
					 				GameTrack.update(@g.id, :completedLessons => @g.completedLessons , :uncompletedLessons => @g.uncompletedLessons)

					 				
					 				
					 				
					 			end	


					 			@lesson = Lesson.where(:id => @g.uncompletedLessons.sample , :skillLevel => @skill).first
					 			
					 			if @lesson == [] || @lesson = nil
					 				flash[:notice] = "No more lessons"
					 				redirect_to game_path()
					 			else

					 			@words = @lesson.content.scan(/\w+|\n|[!]/)

					 			end
					 			#redirect_to root_path
					 		end


				end #end of if the game == []


					#arreglar
		 			@lesson = Lesson.find([*1..Lesson.count].sample)
		 			@words = @lesson.content.scan(/\w+|\n|[!]/)


 end



end
