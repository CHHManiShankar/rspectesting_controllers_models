require 'rails_helper'

RSpec.describe 'Login requests'do

    describe 'POST /login' do
        it 'checks status' do
            User.create(email: 'shankar@gmail.com', username: 'shankar', password: 'shankar123')
            #get('/api/v1/login')

            post '/api/v1/login', params: {:session => {:email => 'shankar@gmail.com', :password => 'shankar123' }}
            #post ('/api/v1/login?session[email]=shankar@gmail.com&session[password]=shankar123')
            expect(response.status).to eql(200)
        end
    end
end
