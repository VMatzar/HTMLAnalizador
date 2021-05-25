SET JAVA_HOME="D:\Program Files\Java\jdk1.8.0_271\bin"
SET PATH=%JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%;
cd C:\Users\elmat\OneDrive\Documentos\NetBeansProjects\ProyectoHTMLFINAL\src\analizadores
java -jar C:\Users\elmat\OneDrive\Documentos\NetBeansProjects\java-cup-11b.jar -parser sintactico -symbols Simbolos sintactico.cup
