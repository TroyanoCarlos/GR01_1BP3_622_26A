# Imagen base con Java
FROM eclipse-temurin:11-jre-jammy

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el JAR generado por Maven
COPY target/sample-calculator-git-1.0-SNAPSHOT.jar app.jar

# Comando que se ejecuta al arrancar el contenedor
ENTRYPOINT ["java", "-cp", "app.jar", "ec.edu.epn.calculator.CalculatorExecute"]
