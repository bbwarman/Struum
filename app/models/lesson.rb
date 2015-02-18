class Lesson < ActiveRecord::Base
	has_one :teacher, class_name: "Teacher"
	has_one :user, class_name: "User"
end
