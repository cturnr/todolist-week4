class Profile < ActiveRecord::Base
  belongs_to :user

  validate :first_or_last, :male_named_sue
  validates_inclusion_of :gender, :in => ["male", "female"]
  # validates_numericality_of :first_name, allow_nil: true
  # validates_numericality_of :last_name, allow_nil: true


def first_or_last
  if !first_name.present? && !last_name.present?
    errors.add(:first_name, "cannot have first name and last name be blank")
  end
 end

def male_named_sue
	if "male" == gender &&  "Sue" == first_name
    errors.add(:first_name, "men cannot be called Sue")
  end
end


end
