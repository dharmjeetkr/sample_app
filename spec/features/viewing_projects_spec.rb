require 'spec_helper'
feature "Viewing projects" do
before do
project = FactoryGirl.create(:project, title: "TextMate 2")
visit '/'
click_link 'TextMate 2'
expect(page.current_url).to eql(project_url(project))
end
end
