# encoding: utf-8
FactoryGirl.define do
	sequence(:email){|n| "chamithlkml#{n}@dms.com"}

	factory :user do 
		name "Alvis Fantom"
		email
		password "humptydumpty"
	end

	factory :job_offer do
		title "Padrino Engineer"
		location "Berlin"
		description "We want you"
		contact "recruiter@berlin.com"
		time_start "01/01/2018"
		time_end "01/03/2018"
	end
end