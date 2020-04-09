# frozen_string_literal: true

User.create!(
  user_name: 'admin',
  email: 'admin@gmail.com',
  password: 'admin123',
  password_confirmation: 'admin123',
  user_type: 2
  # confirmed: true,
  # activated_at: Time.zone.now
)
