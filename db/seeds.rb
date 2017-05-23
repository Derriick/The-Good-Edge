# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Utilisateur.create({ nom: 'Lo Monaco', prenom: 'Damien', email: 'damien-lo@hotmail.fr', password: 'scoledge', promotion: 2019, telephone: '123', avatar: File.new("#{Rails.root}/public/system/exemples/avatar1.jpg") })
Utilisateur.create({ nom: 'Koebelin', prenom: 'Pierre', email: 'derriick.ensiie@yahoo.com', password: 'azerty', promotion: 2017, telephone: '0623862376', avatar: File.new("#{Rails.root}/public/system/exemples/avatar2.png") })

Article.create({ titre: 'Chaise', description: 'Objet permettant de rester assis', prix: 14, utilisateur_id: 1 })
Article.create({ titre: 'Voiture', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi bibendum nulal eu mattis posuere. Sed vehicula, odio ut vestibulum luctus, metus erat congue justo, in eleifend purus eros eu quam. Nullam facilisis, tellus sit amet cursus viverra, orci dui interdum lectus, sit amet mattis est orci condimentum nulla. Mauris sollicitudin rhoncus luctus. Quisque sed finibus sem, et molestie odio. Aliquam sed tristique tellus. Aliquam odio lorem, malesuada non pulvinar ac, elementum vel augue. Mauris ullamcorper molestie lectus, id commodo lectus porta et. Maecenas finibus aliquam tortor quis feugiat. ', prix: 888, utilisateur_id: 2 })
Article.create({ titre: 'Bateau', description: 'Et on pagaie ! Et pagaie !', prix: 140000, utilisateur_id: 2 })

Image.create({
	file: File.new("#{Rails.root}/public/system/exemples/chaise1.jpg"),
	article_id: 1
})
Image.create({
	file: File.new("#{Rails.root}/public/system/exemples/chaise2.jpg"),
	article_id: 1
})
Image.create({
	file: File.new("#{Rails.root}/public/system/exemples/chaise3.jpg"),
	article_id: 1
})
Image.create({
	file: File.new("#{Rails.root}/public/system/exemples/voiture1.jpg"),
	article_id: 2
})
Image.create({
	file: File.new("#{Rails.root}/public/system/exemples/voiture2.jpg"),
	article_id: 2
})
Image.create({
	file: File.new("#{Rails.root}/public/system/exemples/voiture3.jpg"),
	article_id: 2
})
Image.create({
	file: File.new("#{Rails.root}/public/system/exemples/bateau1.jpg"),
	article_id: 3
})
Image.create({
	file: File.new("#{Rails.root}/public/system/exemples/bateau2.jpg"),
	article_id: 3
})
Image.create({
	file: File.new("#{Rails.root}/public/system/exemples/bateau3.jpg"),
	article_id: 3
})
Image.create({
	file: File.new("#{Rails.root}/public/system/exemples/bateau4.jpg"),
	article_id: 3
})