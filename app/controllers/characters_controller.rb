class CharactersController < ApplicationController

	def index
		@characters = Character.all
		#raise @characters.inspect
		#@characters.sort_by!{|name| name.character_name.downcase}

	end

	def show
		if Character.exists?(id_params)
			@character = Character.find(id_params)
		else
			flash[:notice] = "Sorry, record does not exist"
			redirect_to character_index_path
		end
		@skill_ability = @character.skill.skill_ability # Hash with skill ability dependancy; Skill.rb
		# @skill_modifiers = skill_modifiers
		params[:show] = 1 #indicating if routing from Character Show
	end

	def edit
		@character = Character.find(id_params)
		@recomended_ability = Ability.abilities_array(@character) 
		if @character.skill
			@skills_chose = @character.skill.load_skill_choices
		end
		# @skills_chose ||= ["one"]
		params[:edit] = 1
	end

	def update
		@character = Character.find(id_params)
		@character.update(character_params)
		@character.ability.update(ability_params)
		set_skills_to_nil
		if @character.character_name
			flash[:notice] = "#{character_params[:character_name]} has been updated."
		else
			flash[:notice] = "Character has been updated."
		end
		redirect_to character_path(id_params)
	end

	# skills would not save unselected skills as unselected
	# setting all to nil prior to updating new skills solved this
	def set_skills_to_nil
		if @character.skill
			@character.skill.set_all_skills_to_nil
			if !@character.skill.update_attributes(skill_params)
				# flash[:notice] = @character.errors[:skill]
				flash[:notice] = "You mush chose #{@character.number_of_skill} skills!"
				redirect_to edit_character_path(@character) and return
			end
		end
	end

	def new
		params[:new] = 1
	end

	def create
		@character = character_params
		# Save character based on class
		if save_by_class.invalid?
			flash[:notice] = @character.errors
			redirect_to new_character_path(@character)
		else
			redirect_to new_character_ability_path(@character.id)
		end
	end

	def destroy
		@character = Character.find(id_params)
		@character.destroy
		flash[:notice] = "#{@character.character_name} has been destroyed!"
		redirect_to characters_path
	end

	###
	# Create Character by Class
	###
	def save_by_class
		case character_class
		when "fighter"
			@character = Fighter.create(@character)
		when "cleric"
			@character = Cleric.create(@character)
		when "rouge"
			@character = Rouge.create(@character)
		when "wizard"
			@character = Wizard.create(@character)
		end
	end

	# Check Prams to determin class for create character
	def character_class
		if character_params
			@character_class = character_params[:character_class]
		else
			@character_class = @character.character_class
		end
	end

	###
	# Create character background so that skills can 
	# access background skill options before background
	# choces are made
	###
	def creat_background
		case @character.background
		when "acolyte"
			@character.background.background.create
		end

	end

###
# Strong Params
###
	def skill_params
		if params[:skill]
			params.require(:skill).permit(:acrobatics, :animal_handling, :arcana, :athletics, :deception, :history, :insight, :intimidation, :investigation, :medicine, :nature, :perception, :perforamance, :persuasion, :religion, :sleight_of_hand, :stealth, :survival) 
			end
	end

	def character_id_params
		params.require(:character_id)
	end

	def character_params
		params.require(:character).permit(:character_id, :character_name, :character_class, :level, :past, :player_name, :race, :alignment, :xp, :subrace)
	end

	def id_params
		params.require(:id)
	end

	def ability_params
		params.require(:ability).permit(:str, :dex, :con, :int, :wis, :char)
	end	

end