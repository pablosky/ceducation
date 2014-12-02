class TeacherDashboardController < ApplicationController


def index

	#always load this
	@my_classrooms = Classroom.where( :teacher_id => current_user.id )

	if params[:ver_curso]

		@classroom = Classroom.find(params[:ver_curso])

	end

	if params[:nuevaplanificacion]

		@planification = Planification.new
		@planification.classroom_id = params[:nuevaplanificacion]
		@planification.user_id = current_user.id
        #respond_with(@planification)
	end



end

def my_lessons

	@my_lessons = Lesson.where( :user_id => current_user.id )

end




end
