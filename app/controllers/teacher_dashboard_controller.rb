class TeacherDashboardController < ApplicationController


def index

	@my_classrooms = Classroom.where( :teacher_id => current_user.id )

end

def my_lessons

	@my_lessons = Lesson.where( :user_id => current_user.id )

end



end
