class AddUtilisateurRefToArticles < ActiveRecord::Migration[5.1]
  def change
    add_reference :articles, :utilisateur, foreign_key: true
  end
end
