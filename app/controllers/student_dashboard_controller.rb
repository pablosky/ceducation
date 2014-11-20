class StudentDashboardController < ApplicationController


	def index

		#@courses = Classroom.where(classroom_id:=>'bla') 


	end

	def join_class


		#add class to student profile
		@user = User.find(current_user.id)


		if @user.classrooms == nil

		 		@user.classrooms = []
		 		@user.classrooms << params[:id]
		 		@user.save

		else	
			
			@user.classrooms << params[:id]
			@user.save

		end 		


	end

end
