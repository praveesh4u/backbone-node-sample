JsonRenderer =

  user: (user)->
    id:                 user.id
    email:              user.email
    firstName:           user.firstName
    lastName:           user.lastName
    updated_at:         user.updated_at
    created_at:         user.created_at

  users: (users)->
    data = []
    for user in users
      data.push @user user
    data

exports = module.exports = JsonRenderer

