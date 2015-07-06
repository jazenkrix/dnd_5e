class Belonging < ActiveRecord::Base

  has_one :item
  belongs_to :character

  validates :item, :presence => true, :numericality => { :only_integer => true, :greater_then_or_equal_to => 1, :less_than_or_equal_to => 212 }
  validates :description, :allow_blank => true, :length => { :maximum => 250 }
  validates :character_id, :presence => true, :numericality => { :only_integer => true }
  validates :quantity, :allow_blank => true, :numericality => { :only_integer => true, :greater_then_or_equal_to => 1, :less_than_or_equal_to => 100 }



  Dir['app/models/items/*.rb'].each {|file| require_dependency file }
  extend PackCreation

  ###
  # Returns an array of hashes with all items
  # and their details that belong to a character
  ###
  def self.items_list
    equipment_list = self.all
    add_item_details(equipment_list)
  end

  ###
  # Iterates through all items submitted in params and 
  # calls create_item for that item
  ##
  def self.create_starting_items(character, item_choices)
    non_option_starting_equipment(character)
    item_choices.each do |k, choice|
      create_item(character, choice)
    end  
  end

  private

  def self.add_item_details(list_of_equipment)

    items = []
    list_of_equipment.each do |equipment|
      item = list.find { |h| h[:id] == equipment.item }
      item[:quantity] = equipment.quantity if equipment.quantity 
      item[:description] = equipment.description if equipment.description
      item[:pack] = equipment.pack
      item[:type] = item_type(item)
      if item[:id] == 211
        item[:name] = equipment.description
      end
      item[:quantity] = 1 unless item[:quantity]
      items << item
    end
    items
  end
  
  # Creates item or redirects to add_unlisted_item
  def self.create_item(character, item)
    item = item.to_i
    if item <= 210 && item > 0 || item == 212# if item is a cataloged numbered item create it 
      create(:character_id => character.id, :item => item)
    else # else reffer to add_unlisted_items find in /items/pack_creation.rb
      add_unlisted_items(character, item)
    end
  end
  
  # Returns item type based on :id number
  def self.item_type(item)
    if item[:id] >= 1 && item[:id] <= 12 || item[:id] == 212
      "armour"
    elsif item[:id] >= 13 && item[:id] <= 48
      "weapon"
    elsif item[:id] >= 49 && item[:id] <= 144 || item[:id] == 210 || item[:id] == 211
      "gear"
    elsif item[:id] >= 145 && item[:id] <= 181
      "tool"
    elsif item[:id] >= 182 && item[:id] <= 189
      "mount"
    elsif item[:id] >= 190 && item[:id] <= 203
      "tack"
    elsif item[:id] >= 205 && item[:id] <= 209
      "boat"
    end
  end
end