#Librerías:
library(nnet)  # Para la red neuronal

#Escalamiento de variables:
diabetes$Pregnancies = scale(diabetes$Pregnancies)
diabetes$Glucose = scale(diabetes$Glucose)
diabetes$BloodPressure = scale(diabetes$BloodPressure)
diabetes$SkinThickness = scale(diabetes$SkinThickness)
diabetes$Insulin = scale(diabetes$Insulin)
diabetes$BMI = scale(diabetes$BMI)
diabetes$DiabetesPedigreeFunction = scale(diabetes$DiabetesPedigreeFunction)
diabetes$Age = scale(diabetes$Age)

#Entrenamiento del modelo:
modelo = nnet(Outcome ~ Pregnancies + Glucose + BloodPressure + SkinThickness + Insulin + BMI + DiabetesPedigreeFunction + Age, 
              data = diabetes, size = 9, maxit = 500, decay = 0.01, linout = FALSE)

#Mostrar resumen del modelo:
print(modelo)

#Generar predicciones:
predicciones = predict(modelo, diabetes, type = "raw")
print(predicciones)

#Redondear predicciones para clasificar (0 o 1):
pred_binarias = ifelse(predicciones > 0.5, 1, 0)

#Crear tabla de confusión:
tabla = table(Predicho = pred_binarias, Real = diabetes$Outcome)
print(tabla)

#Calcular precisión:
Precision = sum(diag(tabla)) / sum(tabla)
cat("Precisión del modelo:", round(Precision * 100, 2), "%\n")
