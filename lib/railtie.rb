require 'active_admin_usertasks'
require 'rails'

module ActiveAdminUsertasks
  class Railtie < Rails::Railtie
    railtie_name :activeadmin_usertasks
    
    rake_tasks do
      load "tasks/activeadmin_usertasks.rake"
    end
  end
end
