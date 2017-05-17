class Utilisateur < ApplicationRecord
	validates_presence_of :nom, :prenom, :promotion
	has_many :articles
end
