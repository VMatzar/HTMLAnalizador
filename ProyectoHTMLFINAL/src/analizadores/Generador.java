/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package analizadores;
import java.io.File;
import jflex.Main;
/**
 *
 * @author eesteban
 */
public class Generador {
    
    public static void main (String [] args){
        String ruta = "C:\\Users\\elmat\\OneDrive\\Documentos\\NetBeansProjects\\ProyectoHTMLFINAL\\src\\analizadores\\lexico.flex";
        generarLexer(ruta);
        
    }
    
    public static void generarLexer(String ruta){
        File archivo = new File(ruta);
        jflex.Main.generate(archivo);
    }
    
}
