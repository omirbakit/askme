module ApplicationHelper
  def user_avatar(user)
  	if user.avatar_url.present?
  	  user.avatar_url
  	else
  	  asset_path 'avatar.jpg'
  	end
  end

  def inclination(num, vopros, voprosa, voprosov)

    ostatok = num % 10
    ostatok100 = num % 100

    if  ostatok100 >= 11 && ostatok100 <= 14 || num >= 11 && num <= 14
      voprosov
    elsif ostatok == 1 && ostatok100 != 11
      vopros
    elsif ostatok >= 2 && ostatok <= 4 || num >= 2 && num <= 4
      voprosa
    elsif ostatok > 4 || ostatok == 0
      voprosov
    end

  end
end
