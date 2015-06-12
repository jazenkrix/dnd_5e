module WeaponsList
	def weapons
	[
  	{ :id => 13, :name => "Club", :category => "simple_melee", :cost => 0.1, :damage => "1d4 bludgeoning", :weight => 2, :properties => "Light"},
  	{ :id => 14, :name => "Crossbow, light", :category => "simple_ranged", :cost => 25, :damage => "1d8 piercing", :weight => 5, :properties => "Ammunition (range 80/320), loading, two-handed", :ranged => true },
  	{ :id => 15, :name => "Longsword", :category => "martial_melee", :cost => 15, :damage => "1d8 slashing", :weight => 3, :properties => "Versatile (1d10)"},
    { :id => 16, :name => "Dart", :category => "simple_ranged", :cost => 0.05, :damage => "1d4 piercing", :weight => 0.25, :properties => "Finesse, thrown (range 20/60)", :ranged => true },
    { :id => 17, :name => "Dagger", :category => "simple_melee", :cost => 2, :damage => "1d4 piercing", :weight => 1, :properties => "Finesse, light, thrown (range 20/60)", :ranged => false },
    { :id => 18, :name => "Greatclub", :category => "simple_melee", :cost => 0.2, :damage => "1d8 bludgeoning", :weight => 10, :properties => "Two-handed", :ranged => false },
    { :id => 19, :name => "Handaxe", :category => "simple_melee", :cost => 5, :damage => "1d6 slashing", :weight => 2, :properties => "Light, thrown (range 20/60)", :ranged => false} ,
    { :id => 20, :name => "Javelin", :category => "simple_melee", :cost => 0.5, :damage => "1d6 piercing", :weight => 2, :properties => "Thrown (range 60/120)", :ranged => false },
    { :id => 21, :name => "Light hammer", :category => "simple_melee", :cost => 2, :damage => "1d4 bludgeoning", :weight => 2, :properties => "Light, thrown (range 20/60)", :ranged => false },
    { :id => 23, :name => "Mace", :category => "simple_melee", :cost => 5, :damage => "1d6 bludgeoning", :weight => 4, :properties => "---", :ranged => false },
    { :id => 22, :name => "Quarterstaff", :category => "simple_melee", :cost => 0.2, :damage => "1d6 bludgeoning", :weight => 4, :properties => "Versatile (1d8)", :ranged => false },
    { :id => 24, :name => "Sickle", :category => "simple_melee", :cost => 1, :damage => "1d4 piercing", :weight => 2, :properties => "Light", :ranged => false },
    { :id => 25, :name => "Spear", :category => "simple_melee", :cost => 1, :damage => "1d6 piercing", :weight => 3, :properties => "Thrown (range 20/60), Versatile (1d8)", :ranged => false },
    { :id => 26, :name => "Shortbow", :category => "simple_ranged", :cost => 25, :damage => "1d6 piercing", :weight => 2, :properties => "Ammunition (range 80/320)", :ranged => true },
    { :id => 27, :name => "Sling", :category => "simple_ranged", :cost => 0.1, :damage => "1d4 bludgeoning", :weight => 0, :properties => "Ammunition (range 30/120)", :ranged => true },
    { :id => 28, :name => "Battleaxe", :category => "martial_melee", :cost => 10, :damage => "1d8 slashing", :weight => 4, :properties => "Versatile (1d10)", :ranged => false },
    { :id => 29, :name => "Fail", :category => "martial_melee", :cost => 10, :damage => "1d8 bludgeoning", :weight => 2, :properties => "---", :ranged => false },
    { :id => 30, :name => "Glaive", :category => "martial_melee", :cost => 20, :damage => "1d19 slashing", :weight => 6, :properties => "Heavy, reach, two-handed", :ranged => false },
    { :id => 31, :name => "Greateaxe", :category => "martial_melee", :cost => 50, :damage => "2d6 slashing", :weight => 7, :properties => "Heavy, two-handed", :ranged => false },
    { :id => 32, :name => "Halberb", :category => "martial_melee", :cost => 20, :damage => "1d10 slashing", :weight => 6, :properties => "Heavy, two-handed", :ranged => false },
    { :id => 33, :name => "Lance", :category => "martial_melee", :cost => 10, :damage => "1d10 piercing", :weight => 6, :properties => "Reach, special", :ranged => false },
    { :id => 34, :name => "Maul", :category => "martial_melee", :cost => 10, :damage => "2d6 slashing", :weight => 10, :properties => "Heavy, two-handed", :ranged => false },
    { :id => 35, :name => "Morningstar", :category => "martial_melee", :cost => 15, :damage => "1d8 piercing", :weight => 4, :properties => "---", :ranged => false },
    { :id => 36, :name => "Pike", :category => "martial_melee", :cost => 5, :damage => "1d10 piercing", :weight => 18, :properties => "Heavy, reach, two-handed", :ranged => false },
    { :id => 37, :name => "Rapier", :category => "martial_melee", :cost => 25, :damage => "1d8 piercing", :weight => 2, :properties => "Finesse", :ranged => false },
    { :id => 38, :name => "Net", :category => "martial_ranged", :cost => 1, :damage => "---", :weight => 3, :properties => "Special, thrown (range 5/15), loading", :ranged => true },
    { :id => 39, :name => "Scimitar", :category => "martial_melee", :cost => 25, :damage => "1d6 slashing", :weight => 3, :properties => "Finnesse, light", :ranged => false },
    { :id => 40, :name => "Shortsword", :category => "martial_melee", :cost => 10, :damage => "1d6 piercing", :weight => 2, :properties => "Finnesse, light", :ranged => false },
    { :id => 41, :name => "Trident", :category => "martial_melee", :cost => 5, :damage => "1d6 piercing", :weight => 4, :properties => "Thrown (range 20/60) versatile (1d8 )", :ranged => false },
    { :id => 42, :name => "War Pick", :category => "martial_melee", :cost => 5, :damage => "1d8 piercing", :weight => 2, :properties => "---", :ranged => false },
    { :id => 43, :name => "Warhammer", :category => "martial_melee", :cost => 15, :damage => "1d8 bludgeoning", :weight => 2, :properties => "Versatile (1d10)", :ranged => false },
    { :id => 44, :name => "Whip", :category => "martial_melee", :cost => 2, :damage => "1d4 slashing", :weight => 3, :properties => "Finnesse, reach", :ranged => false },
    { :id => 45, :name => "Blowgun", :category => "martial_ranged", :cost => 10, :damage => "1 piercing", :weight => 1, :properties => "Ammunition, (range 25/100), loading", :ranged => true },
    { :id => 46, :name => "Crossbow, hand", :category => "martial_ranged", :cost => 75, :damage => "1d6 piercing", :weight => 3, :properties => "Ammunition, (range 30/120), light, loading", :ranged => true },
    { :id => 47, :name => "Crossbow, heavy", :category => "martial_ranged", :cost => 50, :damage => "1d10 piercing", :weight => 18, :properties => "Ammunition, (range 100/400), heavy, loading, two-handed", :ranged => true },
    { :id => 48, :name => "Longbow", :category => "martial_ranged", :cost => 50, :damage => "1d8 piercing", :weight => 2, :properties => "Ammunition, (range 150/600), heavy, two-handed", :ranged => true },
		]
	end
end