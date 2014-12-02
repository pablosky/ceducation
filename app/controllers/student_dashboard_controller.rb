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
        @class = Classroom.find(params[:id])


        if  @class == nil
        	flash[:notice] = "class doesnt exists"
			redirect_to student_dashboard_path
        end	

		if @user.classrooms == nil && @class != nil

		 		@user.classrooms = []
		 		@user.classrooms << params[:id]
		 		@class.students = []
		 		@class.students << current_user.id
		 		@user.save
		 		@class.save
		 		flash[:notice] = "succesfuly joined"
				redirect_to student_dashboard_path
		 		redirect_to student_dashboard_path

		else	
			

			if @user.classrooms.include?(params[:id]) 
				flash[:notice] = "already part of class"
				redirect_to student_dashboard_path
			else

				if @class.students == nil
					@class.students = []
					@class.students << current_user.id
					@class.save
				end	

				@user.classrooms << params[:id]
				@user.save

				flash[:notice] = "succesfuly joined"
				redirect_to student_dashboard_path
	 			
			end

		end 		


	end

end
