class User < ActiveRecord::Base
  validates_uniqueness_of :origin_identifier

  def self.update(origin_identifier, increment_login, unique_visit, is_visitor)
    user = User.find_or_initialize_by_origin_identifier(origin_identifier)

    if is_visitor
      user.increment(:login_count) if increment_login == "true"
      user.increment(:visit_count) if unique_visit
      user.increment(:page_view_count)
    end

    user.save
    user
  end
end