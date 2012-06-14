desc 'remove the default activeadmin user'
namespace :activeadmin do
  desc "remove default admin users from initial migration"
  task :remove_default_user => [:environment] do
    admin_users = AdminUser.where(:email => "admin@example.com")
    admin_users.each do | au |
      au.delete
    end	
  end

  desc "generate a new admin user"
  task :new_admin => [:environment] do
    puts "admin email:"
    username = STDIN.gets.chomp
    puts "admin password:"
    password = STDIN.gets.chomp

    if (username.blank? || password.blank?)
      puts "must provide username and password"
     else
      AdminUser.create(:email => username, :password => password, :password_confirmation => password)
    end
  end

  desc "scramble admin user passwords"
  task :scramble_passwords => [:environment] do
    AdminUser.all.each do |au|
      scramble_chars = ['a'..'z','A'..'Z','0'..'9'].collect{|x| x.to_a}.flatten
      password = (0..50).collect{ scramble_chars[rand(scramble_chars.length)]}.join

      au.password = password
      au.password_confirmation = password
      au.save!
      puts "user: #{au.email} now has password #{password}"
    end
  end 
end
