/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package analizadores;

/**
 *
 * @author elmat
 */
public class TablaLexica {
    String  lexema, tipo;
    int linea, columna;
 
    public TablaLexica(String lexemas, int lineas, int columnas, String Tipos){
    this.lexema = lexemas;
    this.linea= lineas;
    this.columna=columnas;
    this.tipo = Tipos;    
    }
    
    public String getLexema(){
    return "Lexema: "   +  this.lexema  +   ", Linea: "+    this.linea+ ", Columna: "+this. columna + ", Token: "+ this.tipo;
    }
}
