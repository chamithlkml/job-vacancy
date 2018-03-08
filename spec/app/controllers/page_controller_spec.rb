require 'spec_helper'

RSpec.describe "PageController" do 

    describe "GET #about" do 

        it "renders the :about view" do 
            get '/about'
            expect(last_response).to be_ok
        end

    end


      describe "GET #contact" do
        it "renders the :contact view" do
          get '/contact'
          expect(last_response).to be_ok
        end
      end

      describe "GET #home" do
        it "renders :home view" do
          get '/'
          expect(last_response).to be_ok
        end
      end
    
end

# RSpec.describe "/page" do
#   pending "add some examples to #{__FILE__}" do
#     before do
#       get "/page"
#     end

#     it "returns hello world" do
#       expect(last_response.body).to eq "Hello World"
#     end
#   end
# end
