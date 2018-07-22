module ApplicationHelper
	def sortable(column, title = nil)
    title ||= column.titleize
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, params.merge(:sort => column, :direction => direction, :display_style => "list").permit(:search, :sort, :direction, :display_style)
  end 
end
