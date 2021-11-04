# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5.times do |n|
    # 一般ユーザー
#     User.create!(
#       email: "general#{n + 1}@general#{n + 1}.com",
#       password: "password",
#       password_confirmation: "password",
#       role: 0
#     )
#   end


#スキル項目データ入力
# Skill.create!(
#     [
#       {skill: 'HTML/CSS'},
#       {skill: 'JavaScript'},
#       {skill: 'Vue.js'},
#       {skill: 'PHP'},
#       {skill: 'Laravel'},
#       {skill: 'Java'},
#       {skill: 'Python'},
#       {skill: 'Ruby'},
#       {skill: 'C++'},
#       {skill: 'Swift'},
#       {skill: 'WordPress'},
#       {skill: 'Photoshop'},
#       {skill: 'Illustrator'},
#     ]
#   )

# ユーザーデータを作成
# 管理者ユーザー
 User.create!(
    email: "admin@admin.com",
    password: "password",
    password_confirmation: "password",
    role: 1
  )