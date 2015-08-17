
# ProductsCategory seeds:
violin_id = 1
saxophone_id = 2
guitar_id = 3
piano_id = 4
ProductsCategory.create!(id: violin_id, name: 'Violin')
ProductsCategory.create!(id: saxophone_id, name: 'Saxophone')
ProductsCategory.create!(id: guitar_id, name: 'Guitar')
ProductsCategory.create!(id: piano_id, name: 'Piano')

# User seeds:
15.times do |i|
  User.new.tap do |u|
    u.id = 800 + i
    u.email = "user#{u.id}@example.com"
    u.first_name = 'User'
    u.last_name = "#{u.id}"
    u.password = '12345678'
    u.password_confirmation = '12345678'
    u.phone = '1234567890'
    u.address = 'whatever'

    u.skip_confirmation!
    u.skip_confirmation_notification!
    u.save!
  end
end

# Musical Instruments and Product seeds
60.times do |i|
  if i < 15
    # Violin IDs - [800-815]
    Product.new.tap do |p|
      p.id = 800 + i
      p.name = "Violin #{i}"
      p.products_category_id = violin_id
      p.price = 49_000.0
      p.country = 'Austria'
      p.company = 'Violin Company'
      p.quantity = 50

      p.save!
    end
    Violin.new.tap do |v|
      v.product_id = 800 + i
      v.weight = 1200
      v.body_material = 'wood'
      v.size = 'real big'
      v.string_count = 3
      v.bow_included = i.even?
      v.color = 'brownish'

      v.save!
    end
  elsif i < 30
    # Guitar IDs - [815-830]
    Product.new.tap do |p|
      p.id = 800 + i
      p.name = "Guitar #{i}"
      p.products_category_id = guitar_id
      p.price = 25_000.0
      p.country = 'Canada'
      p.company = 'Guitar Company'
      p.quantity = 50

      p.save!
    end

    Guitar.new.tap do |g|
      g.product_id = 800 + i
      g.frets = 24
      g.chords = 5 + i
      g.dimensions = 3
      g.weight = 1500
      g.is_digital = i.even?

      g.save!
    end
  elsif i < 45
    # Saxophone IDs - [830-845]
    Product.new.tap do |p|
      p.id = 800 + i
      p.name = "Saxophone #{i}"
      p.products_category_id = saxophone_id
      p.price = 98_000.0
      p.country = 'Jamaica'
      p.company = 'Saxophone Company'
      p.quantity = 50

      p.save!
    end

    Saxophone.new.tap do |s|
      s.product_id = 800 + i
      s.type = 'Super Type'
      s.tonality = 'Tonality 80lvl'
      s.keys_number = 35
      s.low_key = 'very low'
      s.high_key = 'very high'
      s.bell_diametr = 54.5
      s.bell_engraved = i.even?
      s.body_material = 'gold'

      s.save!
    end
  else
    # Pianos IDs - [845-860]
    Product.new.tap do |p|
      p.id = 800 + i
      p.name = "Piano #{i}"
      p.products_category_id = piano_id
      p.price = 65_000.0
      p.country = 'Japan'
      p.company = 'Piano Company'
      p.quantity = 50

      p.save!
    end

    Piano.new.tap do |p|
      p.product_id = 800 + i
      p.color = 'black'
      p.keys_number = 104
      p.black_keys_surface = 'dark material'
      p.white_keys_surface = 'light material'
      p.is_digital = i.even?

      p.save!
    end
  end
end
