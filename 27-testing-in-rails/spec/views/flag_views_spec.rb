require 'rails_helper'

RSpec.describe 'Flag Views', type: :system do
    describe 'pages have correct content' do
        before(:all) do
            Flag.destroy_all
            Flag.create(region:"Zimbabwe", flag_type: "National", current: true, info:"The soapstone bird is a symbol of Zimbabwe.", image_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Flag_of_Zimbabwe.svg/255px-Flag_of_Zimbabwe.svg.png", rating:4)
        end

        it 'index page shows the right content' do
            visit flags_path
            expect(page).to have_content("FLAGS FLAGS FLAGS")
        end

        it 'index page lists all the flags' do
            visit flags_path
            expect(page).to have_content("Zimbabwe")
        end
    end

    describe 'can create new flag with form' do
        before(:each) do
            allow_any_instance_of(ApplicationController).to receive(:logged_in?).and_return(true)
            allow(User).to receive(:find).and_return(User.new)
            allow_any_instance_of(User).to receive(:username).and_return("MATTEO")
        end

        it 'loads the new form' do
            visit new_flag_path
            expect(page).to have_content("Add a new flag")
        end

        it 'processes the flag form' do
            visit new_flag_path

            select "Historical", from: "flag[flag_type]"
            fill_in "flag[region]", with: "Qing dynasty (1889-1912)"
            choose "flag_current_false"
            fill_in "flag[info]", with: "Known as the Yellow Dragon Flag."
            fill_in "flag[image_url]", with: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Flag_of_China_%281889%E2%80%931912%29.svg/1024px-Flag_of_China_%281889%E2%80%931912%29.svg.png"
            select "4", from: "flag[rating]"
            click_on "Add flag"

            expect(page).to have_content("Qing dynasty")
            expect(page).to have_content("Type: Historical")
            expect(page).to have_content("This is NOT the current flag")
        end

    end
end