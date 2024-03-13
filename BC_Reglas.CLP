(deftemplate preferencias
	0 10
	(	(baja (0 1) (3 1) (5 0))
        	(media (3 0) (5 1) (7 0))
        	(alta (5 0) (7 1) (10 1))
	)
)

(deftemplate valoraciones
	0 5
	(	(baja (0 1) (2 1) (3 0))
        	(media (2 0) (3 1) (4 0))
        	(alta (3 0) (4 1) (5 1))
	)
)

(deftemplate reputaciones
	0 10
	(	(baja (0 1) (4 1) (7 0))
        	(media (4 0) (7 1) (9 0))
        	(alta (7 0) (9 1) (10 1))
	)
)

(deftemplate visualizar
	0 10
	(	(baja (0 1) (3 1) (6 0))
        	(media (4 0) (6 1) (8 0))
        	(alta (6 0) (9 1) (10 1))
	)
)

(defrule regla_1
	(preferencias alta)
	(valoraciones media)
	(reputaciones media)
=>
	(assert (visualizar media))
)

(defrule regla_2
	(preferencias alta)
	(valoraciones baja)
	(reputaciones baja)
=>
	(assert (visualizar baja))
)

(defrule regla_3
	(preferencias media)
	(valoraciones media)
	(reputaciones baja)
=>
	(assert (visualizar media))
)

(defrule regla_4
	(preferencias baja)
	(valoraciones media)
	(reputaciones baja)
=>
	(assert (visualizar baja))
)

(defrule regla_5
	(preferencias baja)
	(valoraciones alta)
	(reputaciones alta)
=>
	(assert (visualizar alta))
)