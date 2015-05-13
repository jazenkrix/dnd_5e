class SkillsController < ApplicationController
	def new
		@character ||= Character.find(character_id_params)
	end
	
	def create
		@character = Character.find(character_id_params)
		if @character.create_skill(skill_params).invalid?
			flash[:notice] = "You must chose #{@character.number_of_skill} Skills!"
			@character.skill.set_all_skills_to_nil
			redirect_to new_character_skill_path(@character) and return
		end
		redirect_to character_path @character
	end
	def skill_params
		params.require(:skill).permit(:acrobatics, :animal_handling, :arcana, :athletics, :deception, :history, :insight, :intimidation, :investigation, :medicine, :nature, :perception, :perforamance, :persuasion, :religion, :sleight_of_hand, :stealth, :survival) if params[:skill]
	end
end

