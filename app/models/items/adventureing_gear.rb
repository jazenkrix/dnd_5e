module AdventureingGearList
	def adventuring_gear
		[
			{ :id => 49, :name => "Abacus", :cost => 2, :weight => 2}, 
			{ :id => 50, :name => "Chalk",:cost => 0.001, :weight => false }, 
			{ :id => 51, :name => "Block and Tackle", :cost => 2, :weight => 2 }, 
			{ :id => 52, :name => "Chest", :cost => 5, :weight => 25 }, 
			{ :id => 53, :name => "Acid (vial)", :cost => 25, :weight => 1, :details => [acid] },
			{ :id => 54, :name => "Alchemist's fire (flask)", :cost => 50, :weight => 1, :details => [alchenist_fire] }, 
			{ :id => 55, :name => "Arrows (20)",:cost => 1, :weight => 1, :category => "Ammunition" }, 
			{ :id => 56, :name => "Blowgun needles (50)", :cost => 1, :weight => 1, :category => "Ammunition" }, 
			{ :id => 57, :name => "Crossbow bolts (20)", :cost => 1, :weight => 1.5, :category => "Ammunition" }, 
			{ :id => 58, :name => "Sling bullets (20)", :cost => 0.04, :weight => 1.5, :category => "Ammunition" },
			{ :id => 59, :name => "Antitoxin", :cost => 50, :weight => 0, :details => [antitoxin] } , 
			{ :id => 60, :name => "Crystal",:cost => 10, :weight => 1, :category => "Arcane focus", :details => [arcane_focus] }, 
			{ :id => 61, :name => "Orb", :cost => 20, :weight => 3, :category => "Arcane focus", :details => [arcane_focus] }, 
			{ :id => 62, :name => "Rod", :cost => 10, :weight => 2, :category => "Arcane focus", :details => [arcane_focus] }, 
			{ :id => 63, :name => "Staff", :cost => 5, :weight => 4, :category => "Arcane focus", :details => [arcane_focus] },
			{ :id => 64, :name => "Wand", :cost => 10, :weight => 1, :category => "Arcane focus", :details => [arcane_focus] }, 
			{ :id => 65, :name => "Backpack",:cost => 2, :weight => 5 }, 
			{ :id => 66, :name => "Ball bearings (bag of 1,000)", :cost => 1, :weight => 2, :details => [ball_bearings] }, 
			{ :id => 67, :name => "Barrel", :cost => 2, :weight => 70 }, 
			{ :id => 68, :name => "Basket", :cost => 0.4, :weight => 2 },
			{ :id => 69, :name => "Bedroll", :cost => 1, :weight => 7 }, 
			{ :id => 70, :name => "Bell",:cost => 1, :weight => 0 }, 
			{ :id => 71, :name => "Blanket", :cost => 0.5, :weight =>  3 }, 
			{ :id => 72, :name => "Book", :cost => 25, :weight => 5, :details => [book] }, 
			{ :id => 73, :name => "Bottle, glass", :cost => 2, :weight => 2 },
			{ :id => 74, :name => "Bucket", :cost => 0.05, :weight => 2 }, 
			{ :id => 75, :name => "Caltrops (bag of 20)",:cost => 1, :weight => 2, :details => [caltrops] }, 
			{ :id => 76, :name => "Case, crossbow bolt", :cost => 1, :weight => 1, :details => [crossbow_bolt_case] }, 
			{ :id => 77, :name => "Chain (10 feet)", :cost => 5, :weight => 10, :details => [chain] },
			{ :id => 78, :name => "Case, map or scroll", :cost => 1, :weight => 1, :details => [map_scroll_case]} ,
			{ :id => 79, :name => "Climber's kit", :cost => 25, :weight => 12, :details => [climber_kit] },
			{ :id => 80, :name => "Clothes, common", :cost => 0.5, :weight => 3 },
			{ :id => 81, :name => "Clothes, costume", :cost => 5, :weight => 4 },
			{ :id => 82, :name => "Clothes, fine", :cost => 15, :weight => 6 },
			{ :id => 83, :name => "Clothes, traveler's", :cost => 2, :weight => 4 },
			{ :id => 84, :name => "Component pouch", :cost => 25, :weight => 2, :details => [component_pouch] },
			{ :id => 85, :name => "Crowbar", :cost => 2, :weight => 5, :details => [crowbar] },
			{ :id => 86, :name => "Sprig of mistletoe", :cost => 1, :weight => 0, :category => "Druidic focus", :details => [druidic_focus] },
			{ :id => 87, :name => "Totem", :cost => 1, :weight => 0, :category => "Druidic focus", :details => [druidic_focus] },
			{ :id => 88, :name => "Wooden staff", :cost => 5, :weight => 4, :category => "Druidic focus", :details => [druidic_focus] },
			{ :id => 89, :name => "Yew wand", :cost => 10, :weight => 1, :category => "Druidic focus", :details => [druidic_focus] },
			{ :id => 90, :name => "Fishing tackle", :cost => 1, :weight => 4, :details => [fishing_tackle] },
			{ :id => 91, :name => "Grappling hook", :cost => 2, :weight => 4 },
			{ :id => 92, :name => "Hammer", :cost => 1, :weight => 3 },
			{ :id => 93, :name => "Hammer, sledge", :cost => 2, :weight => 10 },
			{ :id => 94, :name => "Healer's kit", :cost => 5, :weight => 3, :details => [healer_kit] },
			{ :id => 95, :name => "Amulet", :cost => 5, :weight => 1, :category => "Holy symbol", :details => [holy_symbol] },
			{ :id => 96, :name => "Emblem", :cost => 5, :weight => 0, :category => "Holy symbol", :details => [holy_symbol] },
			{ :id => 97, :name => "Reliquary", :cost => 5, :weight => 2, :category => "Holy symbol", :details => [holy_symbol] },
			{ :id => 98, :name => "Holly water (flask)", :cost => 5, :weight => 2, :details => [holy_water] },
			{ :id => 99, :name => "Hourglass", :cost => 25, :weight => 1 },
			{ :id => 100, :name => "Hunting trap", :cost => 5, :weight => 25, :details => [hunting_trap] },
			{ :id => 101, :name => "Ink (1 ounce bottle)", :cost => 1, :weight => 0 },
			{ :id => 102, :name => "Ink pen", :cost => 0.02, :weight => 0 },
			{ :id => 103, :name => "Jug or pitcher", :cost => 0.02, :weight => 4 },
			{ :id => 104, :name => "Ladder (10-foot)", :cost => 0.1, :weight => 25 },
			{ :id => 105, :name => "Lamp", :cost => 0.5, :weight => 1, :details => [lamp] },
			{ :id => 106, :name => "Lantern, bullseye", :cost => 10, :weight => 2, :details => [lantern_bullseye] },
			{ :id => 107, :name => "Lantern, hooded", :cost => 5, :weight => 2, :details => [lantern_hooded] },
			{ :id => 108, :name => "Lock", :cost => 10, :weight => 1, :details => [lock] },
			{ :id => 109, :name => "Magnifying glass", :cost => 100, :weight => 0, :details => [magnifying_glass] },
			{ :id => 110, :name => "Manacles", :cost => 2, :weight => 6, :details => [manacles] },
			{ :id => 111, :name => "Mess kit", :cost => 0.2, :weight => 1, :details => [mess_kit] },
			{ :id => 112, :name => "Mirror, steel", :cost => 5, :weight => 0.5 },
			{ :id => 113, :name => "Oil (flask)", :cost => 0.1, :weight => 1, :details => [oil] },
			{ :id => 114, :name => "Paper (one sheet)", :cost => 0.2, :weight => 0 },
			{ :id => 115, :name => "Parchment (one sheet)", :cost => 0.1, :weight => 0 },
			{ :id => 116, :name => "Perfume (vial)", :cost => 5, :weight => 0 },
			{ :id => 117, :name => "Pick, miner's", :cost => 2, :weight => 10 },
			{ :id => 118, :name => "Piton", :cost => 0.05, :weight => 0.25 },
			{ :id => 119, :name => "Poison, basic (vial)", :cost => 100, :weight => 0, :details => [poison_basic] },
			{ :id => 120, :name => "Pole (10-foot)", :cost => 0.05, :weight => 7 },
			{ :id => 121, :name => "Pot, iron", :cost => 2, :weight => 10 },
			{ :id => 122, :name => "Potion of healing", :cost => 50, :weight => 0.25, :details => [potion_of_healing] },
			{ :id => 123, :name => "Pouch", :cost => 0.5, :weight => 1, :details => [pouch] },
			{ :id => 124, :name => "Quiver", :cost => 1, :weight => 1, :details => [quiver] },
			{ :id => 125, :name => "Ram, portable", :cost => 4, :weight => 35, :details => [ram_portable] },
			{ :id => 126, :name => "Rations (1 day)", :cost => 0.5, :weight => 2, :details => [rations] },
			{ :id => 127, :name => "Robes", :cost => 1, :weight => 4 },
			{ :id => 128, :name => "Rope, hempen (50 feet)", :cost => 1, :weight => 10, :details => [rope] },
			{ :id => 129, :name => "Rope, silk (50 feet)", :cost => 10, :weight => 5, :details => [rope] },
			{ :id => 130, :name => "Sack", :cost => 0.01, :weight => 0.25 },
			{ :id => 131, :name => "Scale, merchant's", :cost => 5, :weight => 3, :details => [scale_merchant] },
			{ :id => 132, :name => "Sealing wax", :cost => 0.5, :weight => 0 },
			{ :id => 133, :name => "Shovel", :cost => 2, :weight => 5 },
			{ :id => 134, :name => "Signal wistle", :cost => 0.05, :weight => 0 },
			{ :id => 135, :name => "Soap", :cost => 0.05, :weight => 0 },
			{ :id => 136, :name => "Spellbook", :cost => 50, :weight => 3, :details => [spellbook] },
			{ :id => 137, :name => "Skipes, iron (10)", :cost => 1, :weight => 5 },
			{ :id => 138, :name => "Spyglass", :cost => 1000, :weight => 1, :details => [spyglass] },
			{ :id => 139, :name => "Tent, two-person", :cost => 2, :weight => 20, :details => [tent] },
			{ :id => 140, :name => "Tinderbox", :cost => 0.5, :weight => 1, :details => [tinderbox] },
			{ :id => 141, :name => "Torch", :cost => 0.01, :weight => 1, :details => [torch] },
			{ :id => 142, :name => "Vial", :cost => 1, :weight => 0 },
			{ :id => 143, :name => "Waterskin", :cost => 0.2, :weight => 5 },
			{ :id => 144, :name => "Whetstone", :cost => 0.01, :weight => 1 },
			{ :id => 210, :name => "Candle", :cost => 0.05, :weight => 0, :details => [candle] },
			{ :id => 211, :name => "Unlisted", :cost => 0, :weight => 0 },
		]
	end

end