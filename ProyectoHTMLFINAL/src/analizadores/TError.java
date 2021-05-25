/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package analizadores;

/**
 *
 * @author eesteban
 */
public class TError {
    String  lexema, tipo, descripcion;
    int linea, columna;
        
    public TError(String lexemas, int lineas, int columnas, String Tipos, String DescError){
    this.lexema = lexemas;
    this.linea= lineas;
    this.columna=columnas;
    this.tipo = Tipos;
    this.descripcion=DescError;
    
    }
    
}
