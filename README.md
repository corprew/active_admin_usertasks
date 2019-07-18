# activeadmin_usertasks

This gem adds some rake tasks to make working with the [activeadmin gem](https://github.com/activeadmin) easier.  Note that this gem is from 2012, it still works for the limited, specific thing it does but may not be what you need to solve your 2019 and later security problems.

`activeadmin:remove_default_user` removes the default admin user that activeadmin creates

`activeadmin:new_admin` adds a new admin user

`activeadmin:scramble_passwords` scrambles all the passwords of the admin users

The raison d'etre of this gem is that activeadmin generates by default an administrative user with a default password that can be used to get access to the system.

too many of the projects using activeadmin that i've inherited have ended up with this password in production.


# Contributing to activeadmin_usertasks
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

# Copyright

Copyright (c) 2019 Corprew Reed. See LICENSE.txt for further details.

