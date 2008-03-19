module Merb
  module HomeHelper
  
    def humanize_names(names)
      last = names.delete(names.last)
      
      names.join(", ")  + " and " + last
    end
  end
end
