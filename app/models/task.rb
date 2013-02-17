class Task < ActiveRecord::Base
  attr_accessible :description, :done, :due_date, :position, :title, :user_id

  validates :position,
            :uniqueness => true,
            :numericality => {:greater_than_or_equal_to => 1}

  belongs_to :user

  # ASSUMPTION user can access his own tasks alone
  # ASSUMPTION done tasks are last
  default_scope proc { where(:user_id => User.current.id).order(:done).order(:position)}
end
