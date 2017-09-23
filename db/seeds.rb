# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Promotion.create(name: 'Speedworth Motorsports',
                      address_ln_1: 'Spedeworth House',
                      address_ln_2: 'Hollybush Lane',
                      city: 'Aldershot',
                      postcode: 'GU11 2PX',
                      telephone_main: '01252 322920',
                      telephone_tickets: '01252 322920',
                      telephone_bookings: '01252 322920')

t1 = Track.create(name: 'Ipswich Foxhall Stadium',
                  promotion: p1,
                  address_ln_1: 'Foxhall Heath',
                  address_ln_2: 'Foxhall Road',
                  city: 'Suffolk',
                  postcode: 'IP4 5TL',
                  telephone_office: '01252 322920',
                  telephone_tickets: '01252 322920',
                  telephone_bookings: '01252 322920',
                  surface: 'Tarmac',
                  length: 382,
                  length_unit: 'm')