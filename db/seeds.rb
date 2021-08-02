# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.create(
  name: 'A北海道札幌市AA商店街',
  number: 20001,
)
Room.create(
  project_id: 1
)
# Project.create(
#   name: '東京都23区BB商店会',
#   number: 20002
# )

User.create(
  email: '11@11',
  password: 'pwpwpw',
  category_id: 4
)
Organization.create(
  name: '北海道札幌市AA商店街',
  name_kana: 'ホッカイドウサッポロシエーエーショウテンガイ',
  project_id: 1
  # room_id: 1,
)

User.create(
  email: '22@22',
  password: 'pwpwpw',
  category_id: 4
)
Organization.create(
  name: '東京都23区BB商店会',
  name_kana: 'トウキョウトニジュウサンクビービーショウテンカイ'
  # project_id: 2,
  # room_id: 2,
)
Organization.create(
  name: '東京都多摩市c商店会',
  name_kana: 'トウキョウトタマシシーショウテンカイ'
  # project_id: 2,
  # room_id: 2,
)
Organization.create(
  name: '東京都離島組合d連合会',
  name_kana: 'トウキョウトリトウクミアイディーレンゴウカイ'
  # project_id: 2,
  # room_id: 2,
)

User.create(
  email: '00@00',
  password: 'pwpwpw',
  category_id: 1
)
User.create(
  email: '01@01',
  password: 'pwpwpw',
  category_id: 2
)
User.create(
  email: '02@02',
  password: 'pwpwpw',
  category_id: 3
)