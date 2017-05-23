# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Utilisateur.create({ nom: 'Skywalker', prenom: 'Luke', email: 'damien-lo@hotmail.fr', password: 'scoledge', promotion: 2019, telephone: '0627445449' })
Utilisateur.create({ nom: 'Javel', prenom: 'Aude', email: 'derriick.ensiie@yahoo.com', password: 'saucisse', promotion: 2017, telephone: '0754218269' })

Article.create({ titre: 'chaise', description: 'objet permettant de rester assis', prix: 14, utilisateur_id: 1 })
Article.create({ titre: 'voiture', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi bibendum nulal eu mattis posuere. Sed vehicula, odio ut vestibulum luctus, metus erat congue justo, in eleifend purus eros eu quam. Nullam facilisis, tellus sit amet cursus viverra, orci dui interdum lectus, sit amet mattis est orci condimentum nulla. Mauris sollicitudin rhoncus luctus. Quisque sed finibus sem, et molestie odio. Aliquam sed tristique tellus. Aliquam odio lorem, malesuada non pulvinar ac, elementum vel augue. Mauris ullamcorper molestie lectus, id commodo lectus porta et. Maecenas finibus aliquam tortor quis feugiat. ', prix: 888, utilisateur_id: 2 })
