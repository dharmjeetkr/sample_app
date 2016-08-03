require 'spec_helper'
feature 'Creating Projects' do
before do
visit '/'
click_link 'New Project'
end

scenario "can create a project" do
fill_in 'Title', with: 'TextMate 2'
fill_in 'Description', with: 'A text-editor for OS X'
end

scenario "can not create a project without a name" do      #for 2nd test
#visit '/'
#click_link 'New Project'

end
end


