class Rouge < Character
	def saving_throws
		[:wis => mod(self.ability.wis), :char => mod(self.ability.char)]
	end

	def number_of_skill
		2
	end

	def skill_choices
		
	end
end