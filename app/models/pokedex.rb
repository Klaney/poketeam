class Pokedex < ActiveRecord::Base
	def self.create name, sprite, speed, sdefense, sattack, defense, attack, hp, type, subtype, pokedex_num
		@entry = Pokedex.new
		@entry.name = name
		@entry.sprite = sprite
		@entry.speed = speed
		@entry.sdefense = sdefense
		@entry.sattack = sattack
		@entry.defense = defense
		@entry.attack = attack
		@entry.hp = hp
		@entry.type = type
		@entry.subtype = subtype
		@entry.pokedex_num = pokedex_num
		@entry.save
	end
end
