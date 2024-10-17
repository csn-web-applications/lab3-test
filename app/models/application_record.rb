class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end


# .all
# .find(<ID>)
# .create(<attributes>)
# .destroy_all (.all.each {|object| object.destroy })
# #save
# #update(<attributes>)
# #destroy
