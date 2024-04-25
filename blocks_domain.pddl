(define (domain blocks)

; :negative-preconditions ( YOU CAN ADD IT TOO)

  (:requirements :strips )
  (:predicates 
  	(clear ?b)
  	(on ?a ?b) ; a is on b
  	(on-table ?b)
  	(holding ?a)
  	(handempty)
  )

; picking from the table
;  not 
; stack bcz unstack (x,y) = and we have only x param below 
;  DONT ADD NEGATIVE CONDITION IN the PRE-CONDITION (DONT ADD not) - for this planner

  (:action pick-up
	     :parameters (?x)
	     :precondition (and (clear  ?x)(handempty) (on-table ?x))
	     :effect
	     (and 
		 (not (on-table ?x))
		 (not (handempty))
		 (holding ?x)
		 (not (clear ?x))
		 )
)


  (:action put-down
	     :parameters (?x)
	     :precondition (and 
		 (holding ?x) 
		 )
	     :effect
	     (and 
		 (handempty)
		 (on-table ?x)
		 (clear ?x)
		 (not (holding ?x))
		 )
)

 (:action stack
	     :parameters (?x  ?y)
	     :precondition (and 
		 (clear ?y) 
		 (holding ?x)
		 )
	     :effect
	     (and 
		 (not (clear ?y))
		 (handempty)
		 (not (holding ?x))
		 (clear ?x)
		 (on ?x ?y)
		 )
)



 (:action unstack
	     :parameters (?x  ?y)
	     :precondition (and 
		 (handempty)
		 (clear ?x)
		 (on  ?x ?y)
		 )
	     :effect
	     (and 

		 (clear ?y)
		 (not (on ?x ?y))
		 (not (handempty))
		 (holding ?x)
		 (not (clear ?x))
 )
 )
)

