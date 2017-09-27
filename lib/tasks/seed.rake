require 'csv'

namespace :seed do
  task promotions: :environment do
    csv_path = Rails.root.join('db', 'seeds', 'promotions.csv')
    promotions = CSV.read(csv_path, headers: true)

    promotions.each do |p|
      Promotion.find_or_create_by!(name: p['Name'],
                                   slug: p['Slug'],
                                   company_name: p['Company Name'],
                                   company_number: p['Company Number'],
                                   address_ln_1: p['Address Ln 1'],
                                   address_ln_2: p['Address Ln 2'],
                                   city: p['City'],
                                   postcode: p['Postcode'],
                                   telephone_main: p['Telephone Main'],
                                   telephone_tickets: p['Telephone Tickets'],
                                   telephone_bookings: p['Telephone Bookings'],
                                   short_desc: p['Short Desc'],
                                   long_desc: p['Long Desc'])
    end
  end

  task tracks: :environment do
    csv_path = Rails.root.join('db', 'seeds', 'tracks.csv')
    tracks = CSV.read(csv_path, headers: true)

    tracks.each do |t|
      promo = Promotion.find_by(slug: t['Promo Slug'])
      Track.find_or_create_by!(name: t['Track Name'],
                               slug: t['Slug'],
                               promotion: promo,
                               address_ln_1: t['Address Ln 1'],
                               address_ln_2: t['Address Ln 2'],
                               city: t['City'],
                               postcode: t['Postcode'],
                               telephone_office: t['Telephone Office'],
                               telephone_tickets: t['Telephone Tickets'],
                               telephone_bookings: t['Telephone Bookings'],
                               surface: t['Surface'],
                               length: t['Length'],
                               length_unit: t['Length Unit'])
    end
  end

  task fixtures: :environment do
    csv_path = Rails.root.join('db', 'seeds', 'fixtures.csv')
    fixtures = CSV.read(csv_path, headers: true)

    fixtures.each do |f|
      track = Track.find_by(slug: f['Track Slug'])
      Fixture.find_or_create_by!(name: f['Fixture Name'],
                                 slug: f['Slug'],
                                 track: track,
                                 start_time: f['Start Time'],
                                 short_desc: f['Short Desc'],
                                 long_desc: f['Long Desc'])
    end
  end
end
