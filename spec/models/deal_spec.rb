require 'spec_helper'

describe Deal do
before(:each) do
@attr = {:title => "New Deal YO!", :price =>33}

end

it "should have a deal title" do

	no_title_deal =Deal.new(@attr.merge(:title =>""))
	no_title_deal.should_not be_valid

end

end
