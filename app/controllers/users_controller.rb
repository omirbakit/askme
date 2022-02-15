class UsersController < ApplicationController
  def index
  @users = [
    User.new(
      id: 1,
      name: 'Vadim',
      username: 'installero',
      avatar_url: 'https://secure.gravatar.com/avatar/' \
        '71269686e0f757ddb4f73614f43ae445?s=100'
    ),
    User.new(id: 2, name: 'Misha', username: 'aristofun')
  ]
  end

  def new
  end

  def edit
  end

  def show
  	@user = User.new(
  		name: 'Vadim',
  		username: 'installero',
  		avatar_url: 'https://www.ixbt.com/img/n1/news/2021/10/2/22459ff25f8eff76bddf34124cc2c85b16f4cd4a_large.jpg'
  	  )

  	@questions = [
  		Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
  		Question.new(text: 'В чем смысл жизни?', created_at: Date.parse('27.03.2016'))
	]
  	
  	@new_question = Question.new

  end
end
