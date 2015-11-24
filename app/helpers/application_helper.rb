module ApplicationHelper
	def full_title(page_title = nil)
		if page_title.present?
			"Mountain Sunrise - #{page_title}"
		else
			"Mountain Sunrise"
		end
	end
end
