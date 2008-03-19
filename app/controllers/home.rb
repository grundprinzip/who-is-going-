class Home < Application
  
  def index
    render
  end               
  
  def result            
    users = params[:user].select{ |e| !e.blank? }
  
    @selected = users[rand(users.size)]   
    @question = params[:question]
    
    users.delete(@selected)
    @list = users
    
    
    partial "result"
  end
  
end