Template.hello.events
  "click button": ->
    form={}
    form.name=$('#txt1').val()
    
    Meteor.call 'saveTeam', form.name,  (error, result) ->
      if error.error == "team-exists"
        alert "A Team with this name already exists."
      else
        console.log form.name
