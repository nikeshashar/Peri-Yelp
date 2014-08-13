def leave_review(comments, rating)
	visit restaurants_path
	click_link 'Review Nandos Shoreditch'
	fill_in 'Grill Skill', with: comments
	select rating.to_s, from: 'Rating'
	click_button 'Review Nandos, Shoreditch'
end