module Merb
  module GlobalHelper
    # helpers defined here available to all views.  
    
    def lang_links
      LANGUAGES.map {|k,v| 
        link_to v ,"?locale=#{k.to_s}"
        }.join("|")
    end
    
  end
end    