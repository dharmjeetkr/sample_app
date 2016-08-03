require 'spec_helper'
feature "Editing Projects" do

before do                                         # for 2nd invalid check test
FactoryGirl.create(:project, title: "TextMate 2") #change name to title bcz appn crted 
                                                  #project title and description  
visit "/"
click_link "TextMate 2"
click_link "Edit Project"
end


before do
fill_in "Title", with: "TextMate 2 beta"       #make caps T not small
click_button "Update Project"
expect(page).to have_content("Project has been updated.")
 end
end

