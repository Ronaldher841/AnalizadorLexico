# 🧾 Analizador Léxico JSON con JFlex y Java

![Java](https://img.shields.io/badge/Java-17+-orange)
![JFlex](https://img.shields.io/badge/JFlex-1.9.1-blue)
![Status](https://img.shields.io/badge/Status-Completed-success)

---

## 📌 Descripción

Este proyecto implementa un **Analizador Léxico** desarrollado en **Java** utilizando la herramienta **JFlex**, capaz de analizar archivos en formato **JSON** e identificar los tokens que conforman su estructura.

El sistema procesa un archivo JSON y genera una tabla que muestra:

- Nombre del Token
- Lexema
- Expresión Regular
- Fila
- Columna

Este proyecto representa la fase de **Análisis Léxico** dentro del diseño de compiladores.

---

## 🎯 Objetivos

- Implementar un analizador léxico usando JFlex.
- Aplicar expresiones regulares.
- Reconocer tokens del lenguaje JSON.
- Mostrar información detallada de cada token.
- Aplicar buenas prácticas de programación.

---

## 🧰 Tecnologías Utilizadas

- ☕ Java JDK 17+
- 🤖 JFlex 1.9.1
- 🧑‍💻 Visual Studio Code
- Extension Pack for Java

---

## 📋 Requisitos

Verificar instalación de Java:

```bash
java -version
javac -version

---

📁 Estructura del Proyecto
AnalizadorLexico
│
├── input/
│   └── test.json
│
├── lib/
│   └── jflex-full-1.9.1.jar
│
└── src/
    └── lexer/
        ├── Lexer.flex
        ├── Lexer.java
        ├── Token.java
        └── Main.java
---

📄 Descripción de Archivos

Archivo	Descripción
Lexer.flex	Definición de reglas léxicas
Lexer.java	Código generado automáticamente
Token.java	Representación de tokens
Main.java	Programa principal
test.json	Archivo JSON de entrada

---

▶️ Ejecución del Proyecto

1️⃣ Generar el Analizador Léxico
java -jar lib/jflex-full-1.9.1.jar src/lexer/Lexer.flex
2️⃣ Compilar
javac src/lexer/*.java
3️⃣ Ejecutar
java -cp src lexer.Main

---

📥 Archivo de Entrada

El programa analiza:

input/test.json

Ejemplo:

{
  "nombre": "PC Gamer",
  "activo": true,
  "precio": 2500
}

---

📤 Salida del Programa

NombreToken        Lexema                     ExpresionRegular   Fila  Col
--------------------------------------------------------------------------------
LLAVE_ABRE         {                          {                  1     1
STRING             "nombre"                   CADENA_JSON        2     3
DOS_PUNTOS         :                          :                  2     11
STRING             "PC Gamer"                 CADENA_JSON        2     13
