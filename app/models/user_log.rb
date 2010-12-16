class UserLog < ActiveRecord::Base
  validates_uniqueness_of :origin_identifier, :scope => [:friend_origin_identifier, :controller_action]
  
  def self.update(self_id, friend_id, controller_action_id)
    user_log = UserLog.find_or_initialize_by_origin_identifier_and_friend_origin_identifier_and_controller_action(self_id,
                                                                                                                  friend_id,
                                                                                                                  controller_action_id)

    user_log.increment(:count)
    user_log.save
    user_log
  end
end