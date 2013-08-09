#encoding: utf-8
module ApplicationHelper
	def what_status(status)
	  html = ""
	  if (200..299) === status
	      html += content_tag :span, status, :class => "badge badge-success"
	  elsif (300..399) === status
	      html += content_tag :span, status, :class => "badge badge-info"
    elsif (400..499) === status
	      html += content_tag :span, status, :class => "badge badge-warning"
    elsif (500..599) === status
	      html += content_tag :span, status, :class => "badge badge-important"
	  end
	  html.html_safe
	end

	def public(site)
		html = ''
		if site.public?
			html += content_tag :span, content_tag(:i, "", class: 'icon-ok-circle medium_icon_ok')
		else
			html += content_tag :span, content_tag(:i, "", class: 'icon-remove-circle medium_icon_remove')
		end
		html.html_safe
	end
end