require 'rails_helper'

RSpec.describe User, type: :model do
    context "validation tests" do
        it "ensures username presence" do
            user = User.new(first_name: 'first', last_name: 'last', email: 'first.last@gmail.com')
            expect(@user).to eq(true) 
        end
        it "ensures first_name presence" do
            user = User.new(username: 'first_last', first_name: 'first', last_name: 'last', email: 'first.last@gmail.com')
            expect(user).to eq(false) 
        end

        it "ensures last_name presence" do
            user = User.new(username: 'first_last', first_name: 'first', email: 'first.last@gmail.com')
            expect(user).to eq(true) 
        end

        it "ensures email_name presence" do
            user = User.new(username: 'first_last', first_name: 'first', last_name: 'last')
            expect(user).to eq(true) 
        end

        it "should save successfully" do
            user = User.new(username: 'first_last', first_name: 'first', last_name: 'last', email: 'first.last@gmail.com')
            expect(user).to eq(true) 
        end
        
    end
    
    
end