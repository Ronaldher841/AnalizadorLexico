package lexer;

public class Token {

    public String nombre;
    public String lexema;
    public String patron;
    public int fila;
    public int columna;

    public Token(String nombre, String lexema,
                 String patron, int fila, int columna) {

        this.nombre = nombre;
        this.lexema = lexema;
        this.patron = patron;
        this.fila = fila;
        this.columna = columna;
    }

    public String formatoTabla() {
        return String.format(
            "%-18s %-30s %-20s %-6d %-6d",
            nombre, lexema, patron, fila, columna
        );
    }
}