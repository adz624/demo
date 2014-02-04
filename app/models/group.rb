class Group < ActiveRecord::Base

	validates :title, :presence => true

	# {:key => 'value'} 
	# {key: 'value'} # Ruby 1.9+

end
