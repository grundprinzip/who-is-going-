module Merb
    module HomeHelper
      def humanize_names(names)
        last = names.delete(names.last)

        names.join(", ")  + " and " + last
      end 
      
      def lang_links
        LANGUAGES.map {|k,v| 
          link_to v ,"?locale=#{k.to_s}"
          }.join("|")
      end
      
    end
end