/*  Codigo de Usuario*/
package analizadores;
import java_cup.runtime.*;
import java.util.LinkedList;

%%
%public 
%class Lexer
%cupsym Simbolos
%cup
%char
%column
%line
%full
%ignorecase
%unicode
/*Seccion de Expresiones Regulares*/
L=[a-zA-Z_]+
SimbolosLetras=[a-zA-Z_@./*-+!¿'?()%]+
D=[0-9]+
Punto=[.]
espacio=[ ,\t,\r,\n]+

%{
    public String lexema;
    public static LinkedList <TError> TablaEL= new LinkedList <TError>();

    //Estructura que almacene todos los tokens
    public static LinkedList <TablaLexica> TL = new LinkedList <TablaLexica>();

    public LinkedList getListado(){
    return TL;
    }

    public String getListados(){
    String resultado="";
    for (TablaLexica data: TL)
        resultado = resultado + data.getLexema()+"\n";
    return resultado;
    }
%}

%%
/* Tipos de datos de apertura y Cierre de HTML*/
("INI_HTML") {System.out.println("Reconocio token: "+yytext()+" HTML_Apertura"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Dato de Apertura HTML");
        TL.add(data);
        return new Symbol(Simbolos.HTML_Apertura, yycolumn, yyline, yytext());}
("FIN_HTML") {System.out.println("Reconocio token: "+yytext()+" HTML_Cierre"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Dato de Cierre HTML");
        TL.add(data);
        return new Symbol(Simbolos.HTML_Cierre, yycolumn, yyline, yytext());}

/* Tipos de datos de apertura y Cierre*/
("ENCABEZADO_INI") {System.out.println("Reconocio token: "+yytext()+" Encabezado_Apertura"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Apertura de Encabezado");
        TL.add(data);
        return new Symbol(Simbolos.Encabezado_Apertura, yycolumn, yyline, yytext());}
("ENCABEZADO_FIN") {System.out.println("Reconocio token: "+yytext()+" Encabezado_Cierre"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Cierre de Encabezado");
        TL.add(data);
        return new Symbol(Simbolos.Encabezado_Cierre, yycolumn, yyline, yytext());}

/* Tipo de datos de apertura y cierre de Tabla*/
("TABLA_IN") {System.out.println("Reconocio token: "+yytext()+" Tabla_Apertura"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Apertura de Tabla");
        TL.add(data);
        return new Symbol(Simbolos.Tabla_Apertura, yycolumn, yyline, yytext());}
("TABLA_FIN") {System.out.println("Reconocio token: "+yytext()+" Tabla_Cierre"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Cierre de Tabla");
        TL.add(data);
        return new Symbol(Simbolos.Tabla_Cierre, yycolumn, yyline, yytext());}

/* Tipo de datos de apertura y cierre de Cuerpo*/
("CUERPO_INI") {System.out.println("Reconocio token: "+yytext()+" Cuerpo_Apertura"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Apertura de Cuerpo");
        TL.add(data);
        return new Symbol(Simbolos.Cuerpo_Apertura, yycolumn, yyline, yytext());}
("CUERPO_FIN") {System.out.println("Reconocio token: "+yytext()+" Cuerpo_Cierre"); 
        lexema=yytext();
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Cierre de Cuerpo");
        TL.add(data);
        return new Symbol(Simbolos.Cuerpo_Cierre, yycolumn, yyline, yytext());}

/* Tipo de datos de apertura y cierre de Fila*/
("FILA") {System.out.println("Reconocio token: "+yytext()+" Fila_Apertura"); 
        lexema=yytext();
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Apertura de Fila");
        TL.add(data);
        return new Symbol(Simbolos.Fila_Apertura, yycolumn, yyline, yytext());}
("FILA_FIN") {System.out.println("Reconocio token: "+yytext()+" Fila_Cierre"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Cierre de Fila");
        TL.add(data);
        return new Symbol(Simbolos.Fila_Cierre, yycolumn, yyline, yytext());}

/* Tipo de datos de apertura y cierre de Lista*/
("LISTA_IN") {System.out.println("Reconocio token: "+yytext()+" Lista_Apertura"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Apertura de Lista");
        TL.add(data);
        return new Symbol(Simbolos.Lista_Apertura, yycolumn, yyline, yytext());}
("LISTA_FIN") {System.out.println("Reconocio token: "+yytext()+" Lista_Cierre"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Cierre de Lista");
        TL.add(data);
        return new Symbol(Simbolos.Lista_Cierre, yycolumn, yyline, yytext());}

/* Tipo de datos de apertura y cierre de Imagen*/
("IMAGEN_IN") {System.out.println("Reconocio token: "+yytext()+" Imagen_Apertura"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Apertura de Imagen");
        TL.add(data);
        return new Symbol(Simbolos.Imagen_Apertura, yycolumn, yyline, yytext());}
("IMAGEN_FIN") {System.out.println("Reconocio token: "+yytext()+" Imagen_Cierre"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Cierre de Imagen");
        TL.add(data);
        return new Symbol(Simbolos.Imagen_Cierre, yycolumn, yyline, yytext());}

/* Reservadas */
("TIT") {System.out.println("Reconocio token: "+yytext()+" Titulo"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Titulo");
        TL.add(data);
        return new Symbol(Simbolos.Titulo, yycolumn, yyline, yytext());}
("COLUMNA") {System.out.println("Reconocio token: "+yytext()+" Columna"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Columna");
        TL.add(data);
        return new Symbol(Simbolos.Columna, yycolumn, yyline, yytext());}
("PRUEBA") {System.out.println("Reconocio token: "+yytext()+" Prueba"); 
        lexema=yytext();
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Prueba");
        TL.add(data); 
        return new Symbol(Simbolos.Prueba, yycolumn, yyline, yytext());}
("NEGRITA") {System.out.println("Reconocio token: "+yytext()+" Negrita"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Negrita");
        TL.add(data);
        return new Symbol(Simbolos.Negrita, yycolumn, yyline, yytext());}
("IMPRIMIR") {System.out.println("Reconocio token: "+yytext()+" Imprimir"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Imprimir");
        TL.add(data);
        return new Symbol(Simbolos.Imprimir, yycolumn, yyline, yytext());}
("ANCHO"|"ALTURA"|"NOMBRE"|"BORDE") {System.out.println("Reconocio token: "+yytext()+" Atributo"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Atributo");
        TL.add(data);
        return new Symbol(Simbolos.Atributo, yycolumn, yyline, yytext());}

/* Email */
({L}|{D})+("@")({L}|{Punto}){1,5} {System.out.println("Reconocio token: "+yytext()+" Email"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Correo Electronico");
        TL.add(data);
        return new Symbol(Simbolos.Email, yycolumn, yyline, yytext());}

/* Enlace */
("ENLACE") {System.out.println("Reconocio token: "+yytext()+" Enlace"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Enlace");
        TL.add(data);
        return new Symbol(Simbolos.Enlace, yycolumn, yyline, yytext());}

/* Comentarios */
( "<!--"(.)* ) {/*Ignore*/}
( "-->" ) {/*Ignore*/}

( "/*"(.)* ) {/*Ignore*/}
( "*/" ) {/*Ignore*/}

{espacio} {/*Ignore*/}

"=" {System.out.println("Reconocio token: "+yytext()+" Igual"); 
        lexema=yytext();
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Signo de Igual");
        TL.add(data); 
        return new Symbol(Simbolos.Igual, yycolumn, yyline, yytext());}
"+" {System.out.println("Reconocio token: "+yytext()+" Suma"); 
        lexema=yytext();
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Signo de suma");
        TL.add(data); 
        return new Symbol(Simbolos.Suma, yycolumn, yyline, yytext());}
"-" {System.out.println("Reconocio token: "+yytext()+" Resta"); 
        lexema=yytext();
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Signo de Resta");
        TL.add(data); 
        return new Symbol(Simbolos.Resta, yycolumn, yyline, yytext());}
"*" {System.out.println("Reconocio token: "+yytext()+" Multiplicacion"); 
        lexema=yytext();
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Signo de Multiplicacion");
        TL.add(data); 
        return new Symbol(Simbolos.Multiplicacion, yycolumn, yyline, yytext());}
"/" {System.out.println("Reconocio token: "+yytext()+" Division"); 
        lexema=yytext();
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Signo de Division");
        TL.add(data); 
        return new Symbol(Simbolos.Division, yycolumn, yyline, yytext());}
"(" {System.out.println("Reconocio token: "+yytext()+" Parentesis_Apertura"); 
        lexema=yytext();
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Parentesis de Apertura");
        TL.add(data); 
        return new Symbol(Simbolos.Parentesis_Apertura, yycolumn, yyline, yytext());}
")" {System.out.println("Reconocio token: "+yytext()+" Parentesis_Cierre"); 
        lexema=yytext();
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Parentesis de Cierre");
        TL.add(data); 
        return new Symbol(Simbolos.Parentesis_Cierre, yycolumn, yyline, yytext());}
"<" {System.out.println("Reconocio token: "+yytext()+" Sim_Apertura"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Simbolo Menor que");
        TL.add(data);
        return new Symbol(Simbolos.Sim_Apertura, yycolumn, yyline, yytext());}
">" {System.out.println("Reconocio token: "+yytext()+" Sim_Cierre"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Simbolo Mayor que");
        TL.add(data);
        return new Symbol(Simbolos.Sim_Cierre, yycolumn, yyline, yytext());}
";" {System.out.println("Reconocio token: "+yytext()+" Punto_Coma"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Punto y Coma");
        TL.add(data);
        return new Symbol(Simbolos.Punto_Coma, yycolumn, yyline, yytext());}
":" {System.out.println("Reconocio token: "+yytext()+" Dos_Puntos"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Dos Puntos");
        TL.add(data);
        return new Symbol(Simbolos.Dos_Puntos, yycolumn, yyline, yytext());}


/* Comillas */
( "\"" ) {System.out.println("Reconocio token: "+yytext()+" Comillas"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Comillas");
        TL.add(data);
        return new Symbol(Simbolos.Comillas, yycolumn, yyline, yytext());}

/* Informacion */
/*{D} {System.out.println("Reconocio token: "+yytext()+" Numero"); 
        lexema=yytext();
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Numero");
        TL.add(data); 
        return new Symbol(Simbolos.Numero, yycolumn, yyline, yytext());}*/
\""www."({SimbolosLetras}|{D})+\" {System.out.println("Reconocio token: "+yytext()+" Link_Enlace"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Link del Enlace");
        TL.add(data);
        return new Symbol(Simbolos.Link_Enlace, yycolumn, yyline, yytext());}

{D} {System.out.println("Reconocio token: "+yytext()+" Numeros"); 
        lexema=yytext();
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Numeros");
        TL.add(data); 
        return new Symbol(Simbolos.Numeros, yycolumn, yyline, yytext());}
{D} {Punto}{D} {System.out.println("Reconocio token: "+yytext()+" Decimal"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Decimal");
        TL.add(data);
        return new Symbol(Simbolos.Decimal, yycolumn, yyline, yytext());}

\"({SimbolosLetras}({espacio}|{SimbolosLetras})*)+\" {System.out.println("Reconocio token: "+yytext()+" Informacion_O_Identificador"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Informacion o identificador");
        TL.add(data);
        return new Symbol(Simbolos.Informacion_O_Identificador, yycolumn, yyline, yytext());}
{L} {System.out.println("Reconocio token: "+yytext()+" Dato O Informacion Desconocida"); 
        lexema=yytext(); 
        TablaLexica data = new TablaLexica(yytext(),yyline,yycolumn,"Dato o Informacion Desconocida");
        TL.add(data);
        return new Symbol(Simbolos.Dato_O_InformacionDesconocida, yycolumn, yyline, yytext());}
. {System.out.println("Error Lexico: "+yytext()+" Linea "+yyline+" Columna "+yycolumn);
    TError datos= new TError(yytext(),yyline,yycolumn,"ErrorLexico","Simbolo no existe en el lenguaje");  
    TablaEL.add(datos);
    }