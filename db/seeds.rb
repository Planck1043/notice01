# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

notice_items = NoticeItem.create([
  {
    department: "技术部"
  },
  {
    department: "市场部"
  },
  {
    department: "人事部"
  },
  {
    department: "财务部"
  },
  {
    department: "运营部"
  }
])
