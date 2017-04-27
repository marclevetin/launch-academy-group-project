Rails.application.configure do

  config.middleware.use '::Rack::Auth::Basic' do |u, p|
     [u, p] == ['username', 'password']
   end
 end
