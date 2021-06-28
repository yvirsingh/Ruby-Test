class Francis
  def yo(message)
  	if is_empty?(message)
  		'See if I care!'
  	elsif is_chill?(message)
  		'Chill!'
		elsif is_question?(message)
			"Sure."
		else
			'Whatevs.'
		end		
  end

  def is_empty?(message)
  	message.delete(' ').length < 1
  end

  def is_question?(message)
  	message[-1] == "?"
  end

  def is_chill?(message)
  	message.match(/^(?=[^a-z]*$)(?:.*[A-Z])|(?=.*[?])$/) == nil ? false : true
  end
end