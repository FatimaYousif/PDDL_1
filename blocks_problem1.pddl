(define (problem blocks-1)
(:domain blocks)
(:objects A B C D)

;  PROBLEM 1
; (:init 
; 	(on C A)
;        (clear C)
;        (on-table A)
;        (clear B)
;        (on-table B)
;        (handempty)
; )

;  NOT CONFIRMED ???
; (:goal (and 
;        ( on A C)
;        ( on C D)
;        ( on B)       
;        )
; )

;  PROBLEM 2


; (:init 
; 	  (on A C)
;        (on B A)
;        (on-table C)
;       (handempty)
;       (clear B)
;      (not (clear C))
; )


; (:goal (and 
;        ( on A B)
;        ( on C A)
;        ( on-table B )
;        ( clear C)       
;        )
; )

;  PROBLEM 3

(:init 
       (on-table C)
       (not (clear C))
       (on A C)
       (on B A)
       ( clear B)
       (holding D)
       (not(handempty))
)
 
;  picture = vania
(:goal (and 
       ( on A C)
       ( on C D)
       ( on D B)
       (on-table B)
       ( clear A)      
       )
)
)

;  ------------- RUNNN ------------------
; for permissions
;  sudo chmod +x popf

; ./popf blocks_domain.pddl blocks_problem1.pddl

;  FOR checking if OPTIMIZED
; ./popf -n blocks_domain.pddl blocks_problem1.pddl



