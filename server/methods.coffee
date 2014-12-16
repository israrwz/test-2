Teams = new Mongo.Collection('teams');

Meteor.methods  
	saveTeam: (name) ->  
		if Teams.findOne({name: name})
			throw new Meteor.Error("team-exists", "A team with this name already exists.")
		else
			Teams.insert
				createdBy: 'abc',
				name: name
			console.log 'saved'