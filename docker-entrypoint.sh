#!/bin/sh
#https://gitlab.com/gitlab-org/omnibus-gitlab/blob/10-8-stable/docker/assets/wrapper

exec /assets/wrapper

gitlab-ctl stop

gitlab-rails console

# ## Reset default password for root user
# u = User.first
# u.password_automatically_set = false
# u.password = 'password'
# u.password_confirmation = 'password'
# u.save!

# ## Create access token
# t = PersonalAccessToken.new({ user: u, name: 'node-gitlab', scopes: ['api']})
# t.save!

# ## Store access token in an ENV
# ENV['PERSONAL_ACCESS_TOKEN'] = t.token

# ## Exist rails console
exit

## Exec any other entry point logic