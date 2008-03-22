
function tabHandler(e)
{
  var event = new Event(e);      
  if (event.key == "tab"){
    addUser(e);
    event.stop();
  }
}

// Adds a user to the scene
function addUser(e){
  new Event(e).stop;     

  var del = new Element("img", {"src": "/images/user_delete.png",    
    "class": "user_del",
    "events": {
      click: function(){
        this.getPrevious().remove();
        this.remove();
      }
    }
  });                                
  del.injectBefore($("user_add")); 
  
  // Remove key handler for the textfield before del
  del.getPrevious().removeEvents("keydown");

  var text = new Element("input", {
     type: "text",
     name: "user[]"
  });
  text.injectBefore($("user_add"));     
  
  // add handler for text
  text.addEvent("keydown", tabHandler);     
  text.focus();
 
}
                           
// Parses the result and is happy
function doTheDiceDance(e)
{        
   $("story").remove();
   $("result").setHTML(e);
} 

// Initializer for the site
function init(){   

  // Add event listner for submit
  $("story").addEvent("submit", function(e){
    
     new Event(e).stop();
     this.send({
       onComplete: doTheDiceDance
     });
  });                  
  
  $("user_add").addEvent("click", addUser); 
  $("user_add").getPrevious().addEvent("keydown", tabHandler);
            
}

window.addEvent("domready", init); 
