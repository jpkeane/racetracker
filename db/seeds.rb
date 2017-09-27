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

p2 = Promotion.create(name: 'Incarace Motorsport Live',
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

t5 = Track.create(name: 'Hednesford Hills Raceway',
                  promotion: p2,
                  address_ln_1: 'Reservoir Road',
                  address_ln_2: 'Hednesford',
                  city: 'Cannock',
                  postcode: 'WS12 1BF',
                  telephone_office: '01252 322920',
                  telephone_tickets: '01252 322920',
                  telephone_bookings: '01252 322920',
                  surface: 'Tarmac',
                  length: 402,
                  length_unit: 'm')

t6 = Track.create(name: 'Birmingham Wheels Raceway',
                  promotion: p2,
                  address_ln_1: 'Birmingham Wheels Adventure Park',
                  address_ln_2: 'Landor Street',
                  city: 'Birmingham',
                  postcode: 'B8 1AD',
                  telephone_office: '01252 322920',
                  telephone_tickets: '01252 322920',
                  telephone_bookings: '01252 322920',
                  surface: 'Tarmac',
                  length: 320,
                  length_unit: 'm')

t7 = Track.create(name: 'Northampton International Raceway',
                  promotion: p2,
                  address_ln_1: 'Brafield Road',
                  address_ln_2: 'Horton',
                  city: 'Northampton',
                  postcode: 'NN7 2BA',
                  telephone_office: '01252 322920',
                  telephone_tickets: '01252 322920',
                  telephone_bookings: '01252 322920',
                  surface: 'Tarmac',
                  length: 396,
                  length_unit: 'm')

f1 = Fixture.create(name: 'Ipswich Gala Night',
                    track: t1,
                    start_time: '2017-11-04 13:00:00')
