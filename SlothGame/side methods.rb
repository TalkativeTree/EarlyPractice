	#fighting
		@strength		#tied 
		@speed			#two_toed are faster than three toed
		@dexterity 	#dexterity tied to vertebrae
		@awareness
		@abilities
			@evade
				@camouflage
				@stay_the_math_still
			@attack
				@swipe
				@bite
				@kick
				@bear_hug
			@cuddle
			@charm		
	#Environment	
		@habitat
			@trees
			@water
			@ground
					@stage 			= "baby"
		@sloth_stages =	["baby", "adolescent", "teen", 
									 "adult", "MegaSloth", "Slothra"]
		@size
			@claws 		= 2 || 3
			@height		= 
			@weight
	#Diet
		@food = [@vegetation, @insects, @small_reptiles, @small_bird]
		#two_toed only	
			@vegetation = {leaves => "Eucalyptus", Cer}
			@insects
			@small_reptiles
			@small_birds
	#status	
		@stomach = 10
		@lower_intestines = 0
		@awake = false
		@asleep = true
end
