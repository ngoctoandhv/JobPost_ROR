# frozen_string_literal: true

User.create!(
  user_name: 'admin',
  email: 'admin@gmail.com',
  password: 'admin123',
  password_confirmation: 'admin123',
  user_type: 3,
  confirmed_at: Time.zone.now
)
User.create!(
  user_name: 'a',
  email: 'a@gmail.com',
  password: '123456',
  password_confirmation: '123456',
  user_type: 1,
  confirmed_at: Time.zone.now
)
User.create!(
  user_name: 'b',
  email: 'b@gmail.com',
  password: '123456',
  password_confirmation: '123456',
  user_type: 2,
  confirmed_at: Time.zone.now
)