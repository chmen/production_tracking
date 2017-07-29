class Assignment < ActiveRecord::Base
  enum role: { graphic_designer: 1, illustrator: 2, writer: 3,
                 composer: 4, developer: 5 }
  belongs_to :game
  belongs_to :employee
end
