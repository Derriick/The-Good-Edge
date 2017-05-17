class Utilisateur < ApplicationRecord
	validates_presence_of :nom, :prenom, :promotion
end
