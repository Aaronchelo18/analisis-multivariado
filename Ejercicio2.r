#Ejercicio 2 - Definir los puntajes de satisfacción antes y después de la terapia
antes_terapia <- c(7, 6, 5, 6, 7)
despues_terapia <- c(8, 7, 8, 8, 9)

# Hacer la prueba T para muestras relacionadas
t_test_result <- t.test(antes_terapia, despues_terapia, paired = TRUE)

print(t_test_result)


#RESULTADOS:

#Estadístico t: -4.81
#Valor p: 0.0086



#Conclusión: Como el valor p es menor que 0.05 (p < 0.05), hay una 
#diferencia significativa en la satisfacción después de la terapia, 
#lo que sugiere que la terapia tuvo un impacto positivo.