class LogController < ApplicationController
  def update
    user_id = params[:id]
    friend_id = params[:request].scan(/(\d+)\z/)
    friend_id = friend_id[0][0] unless friend_id.blank?

    controller_action_name = params[:request].scan(/^http:\/\/[^\/]+\/(.*)\/\d+\z/)
    controller_action_name = controller_action_name[0][0] unless controller_action_name.blank?

    unique_visit = params[:referer].index(/^http:\/\/facegraph.me/).blank?

    user = User.update(user_id, params[:login], unique_visit, true)

    unless friend_id.blank?
      friend = User.update(friend_id, false, false, false)
      controller_action = ControllerAction.update(controller_action_name)
      UserLog.update(user.id, friend.id, controller_action.id)
    end

    render :json => {:message => "Logged"}
  end
end