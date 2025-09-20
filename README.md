# 🥋 Karate QA - Proyecto de Automatización

Este proyecto contiene pruebas automatizadas utilizando **[Karate DSL](https://github.com/karatelabs/karate)**, orientadas a validar los servicios web (Web Services - WS) de la página [https://api.demoblaze.com/](https://api.demoblaze.com/), específicamente los endpoints relacionados con autenticación (registro y login).

## 📦 Estructura del Proyecto

karate_qa_Bryan_navarrete/
├── pom.xml
├── src/
│ └── test/
│ └── java/
│ └── bdd/
│ └── auth/
│ ├── signup.feature
│ └── login.feature
│ └── resources/
│ └── csv/
│ └── auth/
│ ├── dataLogin.csv
│ ├── dataLogin2.csv
│ └── dataregistro.csv
│ └── json/
│ └── auth/
│ └── bodyLogin.json



---

## 📑 Descripción de Features

### 🔐 Signup.feature

Se validan los siguientes escenarios del endpoint `/signup`:

- ✅ Registro exitoso de un nuevo usuario (`dataregistro.csv`)
- ❌ Intento de registro con un usuario ya existente (`dataLogin2.csv`)

### 🔑 Login.feature

Se validan los siguientes escenarios del endpoint `/login`:

- ✅ Login exitoso (`dataLogin.csv`)
- ❌ Login fallido con contraseña incorrecta (`dataLogin2.csv`)

---

## 🔄 Data Driven Testing

Se utiliza la técnica **Data-Driven** mediante archivos `.csv`:

```karate
Examples:
| read('classpath:resources/csv/auth/dataLogin.csv') |



Esto permite ejecutar cada escenario múltiples veces con distintos datos de entrada.


🧾 Dependencias (pom.xml)
⚙️ Maven

El proyecto está configurado con:

Java: 21

Karate: 1.3.1

Plugin para ejecución de pruebas: maven-surefire-plugin

📚 Librerías Principales
<dependency>
  <groupId>com.intuit.karate</groupId>
  <artifactId>karate-junit5</artifactId>
  <version>${karate.version}</version>
  <scope>test</scope>
</dependency>

<dependency>
  <groupId>net.masterthought</groupId>
  <artifactId>cucumber-reporting</artifactId>
  <version>5.7.7</version>
</dependency>

<dependency>
  <groupId>commons-io</groupId>
  <artifactId>commons-io</artifactId>
  <version>2.14.0</version>
</dependency>

▶️ Ejecución de Pruebas

Puedes ejecutar las pruebas usando Maven desde la raíz del proyecto:

mvn clean test


Esto ejecutará todos los archivos .feature bajo src/test/java.

📊 Reportes

Al ejecutar las pruebas, se generan reportes de salida de forma automática. Si deseas integrar con cucumber-reporting para reportes más visuales, asegúrate de configurar el plugin correspondiente.

📌 Notas

Todos los escenarios están preparados para leer entradas desde archivos .csv y cuerpos desde archivos .json, lo cual asegura flexibilidad y reutilización.

Se recomienda validar que la URL base (urlBase) esté correctamente configurada en un archivo karate-config.js o definido en el Background.

👤 Autor

Bryan Navarrete
Proyecto QA con Karate DSL