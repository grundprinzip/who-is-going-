class Home < Application
          
  def index
   render
  end               
      
  def post_back
    # Should do the pdf thingie and the twitter shout and the email....
    
  end          
                                       
  def test_def
    render_then_call("hallo") do 
      1 + 1
    end
  end
  
  def stream
    stream_file(:filename => "test") do |response|
      response.write "test"
    end
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