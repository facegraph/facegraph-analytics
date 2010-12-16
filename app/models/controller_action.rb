class ControllerAction < ActiveRecord::Base
  validates_uniqueness_of :controller_action

  def self.update(controller_action)
    user_log = ControllerAction.find_or_initialize_by_controller_action(controller_action)
    user_log.save
    user_log
  end
end