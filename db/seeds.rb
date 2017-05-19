# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Utilisateur.create({ nom: 'Skywalker', prenom: 'Luke', email: 'empire@contratak.fr', password: 'bitedure', promotion: 2019, telephone: 666 })
Utilisateur.create({ nom: 'Dieu', prenom: 'Donné', email: 'superconnard@quenelle.fr', password: 'lepenforever', promotion: 7, telephone: 123 })

Article.create({ titre: 'sextoy', description: 'objet de desir', prix: 14, utilisateur_id: 1 })
Article.create({ titre: 'voiture', description: 'objet de desir qui roule', prix: 888, utilisateur_id: 2 })
