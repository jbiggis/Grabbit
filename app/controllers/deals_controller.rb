class DealsController < ApplicationController

def home

@title = "Today's Deal"


@deal = Deal.find(3)


end

def new

@deal = Deal.new
	
end

def create

@deal = Deal.new(params[:deal])

if @deal.save

redirect_to(root_path, :notice => "Deal success Create YAH!")

else

	render :action => "new"



end	

end



end
