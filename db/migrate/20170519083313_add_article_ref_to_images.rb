class AddArticleRefToImages < ActiveRecord::Migration[5.1]
  def change
    add_reference :images, :article, foreign_key: true
  end
end
