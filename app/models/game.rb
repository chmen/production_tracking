class Game < ActiveRecord::Base
  has_many :assignments
  def employee_name(game_id, role)
    return nil if Assignment.find_by(role: role, game_id: game_id).nil?
    Employee.find(Assignment.find_by(role: role, game_id: game_id)
            .employee_id)
            .name
  end
end
