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
public class GeneradorSintactico {
    public static void main(String[] args)
    {
        String opciones[] = new String[7];

        opciones[0] = "-destdir";

        opciones[1] = "src/analizadores";

        opciones[2] = "-symbols";

        opciones[3] = "Simbolos";

        opciones[4] = "-parser";

        opciones[5] = "sintactico";

        opciones[6] = "src/analizadores/sintactico.cup";

        try {
            java_cup.Main.main(opciones);
        } catch (Exception ex) {
            System.out.print(ex);
        }
    }
}
