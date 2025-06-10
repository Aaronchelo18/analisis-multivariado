#Ejercicio 1 - Definir los goles de cada equipo
equipo_A <- c(2, 3, 1, 4, 2, 3, 2, 1, 3, 2)
equipo_B <- c(3, 2, 1, 3, 2, 2, 4, 2, 3, 1)

# Hacer la prueba T para comparar los promedios
t_test_result <- t.test(equipo_A, equipo_B, var.equal = TRUE)

print(t_test_result)


#RESULTADOS:

#Estadístico t: 0.0
#Valor p: 1.0



#Conclusión: Dado que el valor p es 1.0 (mayor que 0.05), no hay una 
#diferencia significativa en el promedio de goles entre los dos equipos.



