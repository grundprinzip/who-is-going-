class Home < Application
          
  def index
   render
  end               
      
  def post_back
    # Should do the pdf thingie and the twitter shout and the email....
    
  end          
   
  def result            
    
    users = params["user"].select{ |e| !e.blank? }
  
    @selected = users[rand(users.size)]   
    @question = params["question"]
    
    users.delete(@selected)
    @list = users

    partial "result"
  end
  
end