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

t2 = Track.create(name: 'Yarmouth Stadium',
                  promotion: p1,
                  address_ln_1: 'Yarmouth Road',
                  address_ln_2: 'Caister-On-Sea',
                  city: 'Norfolk',
                  postcode: 'NR30 5TE',
                  telephone_office: '01252 322920',
                  telephone_tickets: '01252 322920',
                  telephone_bookings: '01252 322920',
                  surface: 'Tarmac',
                  length: 300,
                  length_unit: 'm')

t3 = Track.create(name: 'Aldershot Raceway',
                  promotion: p1,
                  address_ln_1: 'Claycart Road',
                  address_ln_2: '',
                  city: 'Aldershot',
                  postcode: 'GU11 1SQ',
                  telephone_office: '01252 322920',
                  telephone_tickets: '01252 322920',
                  telephone_bookings: '01252 322920',
                  surface: 'Tarmac',
                  length: 350,
                  length_unit: 'm')

t4 = Track.create(name: 'Arlington Raceway',
                  promotion: p1,
                  address_ln_1: 'Arlington Road West',
                  address_ln_2: '',
                  city: 'Hailsham',
                  postcode: 'BN27 3RE',
                  telephone_office: '01252 322920',
                  telephone_tickets: '01252 322920',
                  telephone_bookings: '01252 322920',
                  surface: 'Tarmac',
                  length: 320,
                  length_unit: 'm')
