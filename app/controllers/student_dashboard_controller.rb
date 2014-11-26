class StudentDashboardController < ApplicationController


	def index

		@courses = Classroom.where(:id => current_user.classrooms) 


	end

	def class_search

		
	 	@class_search = Classroom.where(:class_name => params[:class])

	 	if @class_search ==[] || @class_search == nil

	 
	 		flash[:notice] = "class not found"
	 		redirect_to student_dashboard_path
	 	end
		
	end

	def join_class


		#add class to student profile
		@user = User.find(current_user.id)


		if @user.classrooms == nil

		 		@user.classrooms = []
		 		@user.classrooms << params[:id]
		 		@user.save
		 		redirect_to student_dashboard_path

		else	
			

			if @user.classrooms.include?(params[:id]) 
				flash[:notice] = "already part of class"
				redirect_to student_dashboard_path
			else
				@user.classrooms << params[:id]
				@user.save
				flash[:notice] = "succesfuly joined"
				redirect_to student_dashboard_path
	 			
			end

		end 		


	end

end
