require 'spec_helper'

# RSpec.describe User do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe "User Model" do 
	let(:user) { FactoryGirl.build(:user) }
	let(:user_second) {build(:user)}
	let(:job_offer){{title: "Padrino Engineer", location: "Tangalle", description: "Come to this place"}}


	it 'can be created' do 
		expect(user).not_to be_nil
	end



	it 'fresh user should have no job offers' do
		expect(user.job_offers.size).to eq 0
	end


	it 'have job-offers' do
		user.job_offers.build(FactoryGirl.attributes_for(:job_offer))
		expect(user.job_offers.size).to eq 1
	end

	it 'have no blank name' do 
		user.name = ""
		expect(user.valid?).to be_falsey
	end

	pending('no blank email')

	describe "passwords" do 
		pending('no blank password')
		pending('no blank password_confirmation')
	end

	describe "When name is already used" do 

		it 'should not be saved' do 
			User.destroy_all
			user.save
			user_second.name = user.name 
			user_second.save 
			expect(user_second.valid?).to be_falsey
		end
		
	end

	describe "email address" do 
		pending('valid')
		pending('not valid')
	end

end