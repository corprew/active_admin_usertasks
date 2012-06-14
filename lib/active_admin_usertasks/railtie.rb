require 'active_admin_usertasks'
require 'rails'

module ActiveAdminUsertasks
  class Railtie < Rails::Railtie
    railtie_name :activeadmin_usertasks
    
    rake_tasks do
      load "tasks/active_admin_usertasks.rake"
    end
  end
end
