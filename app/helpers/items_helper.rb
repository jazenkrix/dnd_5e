module ItemsHelper


  # Generates a link to items/show wtih item name
  def item_name_to_link(item, character) 
    render_haml(link_to "#{item[:name]}", item_path(item))
  end
	


	###
	# Compares previous and next from sorted list of items 
	# and returns true of false depending if category name 
	# needs to be printed to screen
	###
	def category_needs_lable(cat_items, category_name, index)
		if !cat_items[index + 1] 
			return false 
		elsif category_name == cat_items[next_index(cat_items, index)][:name] && category_name != cat_items[last_index(cat_items, index)][:name]
			return true
		else
			false
		end
	end

	###
	# Compares previous and next from sorted list of items 
	# and returns true of false if item belongs to a category 
	###
	def item_is_part_of_category(cat_items, category_name, index)
		if !cat_items[index + 1] 
			return false unless category_name == cat_items[last_index(cat_items, index)][:name]
		elsif category_name == cat_items[next_index(cat_items, index)][:name] || category_name == cat_items[last_index(cat_items, index)][:name]
			return true
		else
			return false
		end
		true
	end


	def last_index(cat_items, index)
		lindex = nil
		unless cat_items[index - 1] == nil
			lindex = index - 1 
		else
			lindex = index
		end
		lindex
	end
	
	def next_index(cat_items, index)
		nindex = nil
		unless cat_items[index + 1] == nil
			nindex = index + 1 
		else
			nindex = index
		end
		nindex
	end

	###
	# Returns a hash of objects sorted with their categories
	###
	def items_with_categories(items)
		categories = []
		items.each do |item|
			if item.category != "adventuring_gear" && item.category != "tack" && item.category != "tool"
				categories << {:item => item, :name => "#{item.category.split(/ /)[1].downcase}" }
			else
				categories << {:item => item, :name => "#{item.name.downcase}"}
			end
		end
		categories.sort_by! {|item| item[:name]}
	end

	def armour_categories(armour_list)
		light = []
		medium = []
		heavy = []
		armour_list.each do |a|
			case a.category
			when "armour, light_armour"
				light << a
			when "armour, medium_armour"
				medium << a
			when "armour, heavy_armour"
				heavy << a
			end
		end
		light.sort_by! { |a| a.name}
		medium.sort_by! { |a| a.name}
		heavy.sort_by! { |a| a.name}
		armour = light + medium + heavy
	end

	def weapon_categories(weapon_list)
		simple_ranged = []
		simple_melee = []
		martial_melee = []
		martial_ranged = []
		weapon_list.each do |a|
			case a.category
			when "weapon, simple_melee"
				simple_melee << a
			when "weapon, simple_ranged"
				simple_ranged << a
			when "weapon, martial_melee"
				martial_melee << a
			when "weapon, martial_ranged"
				martial_ranged << a
			end
		end
		simple_melee.sort_by! { |a| a.name}
		simple_ranged.sort_by! { |a| a.name}
		martial_melee.sort_by! { |a| a.name}
		martial_ranged.sort_by! { |a| a.name}
		armour = simple_melee + simple_ranged + martial_melee + martial_ranged
	end


	# def details(item)
	# 	a = []		
	# 	item.details.split("\"}, {").flatten.each do |d|
	# 		hsh = Hash.new
	# 		logger.debug "d = #{d.inspect}"
	# 		title = d.gsub(/(.*)title=>"/, "").gsub(/", :body(.*)/, "")
	# 		body = d.gsub(/(.*)body=>"/, "").gsub(/[\"]}]/, "")
	# 		hsh[:title] = title
	# 		hsh[:body] = body
	# 		a << hsh
	# 	end 
	# 	a
	# end
end