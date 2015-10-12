package practica

class Persona
{
    String nombre
    String apellidoPaterno
    String apellidoMaterno
    Date fechaNacimiento
    Integer edad

    static constraints = {
        nombre nullable: true, blank: false
        apellidoPaterno nullable: true, blank: false
        apellidoMaterno nullable: true
        fechaNacimiento nullable: true
        edad nullable: true
    }
}
