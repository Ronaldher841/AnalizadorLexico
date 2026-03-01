package lexer;

import java.io.FileReader;

public class Main {

    public static void main(String[] args) {

        try {

            Lexer lexer =
                new Lexer(new FileReader("input/test.json"));

            Token token;

            /* ===== ENCABEZADO ===== */

            System.out.printf(
                "%-18s %-30s %-20s %-6s %-6s\n",
                "NombreToken",
                "Lexema",
                "ExpresionRegular",
                "Fila",
                "Col"
            );

            System.out.println(
                "--------------------------------------------------------------------------" +
                "------------------------"
            );

            /* ===== LEER TOKENS ===== */

            while ((token = lexer.yylex()) != null) {
                System.out.println(token.formatoTabla());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}