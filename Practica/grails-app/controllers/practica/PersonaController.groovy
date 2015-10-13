package practica

class PersonaController
{
    def personaService
    def index()
    {
        List<Persona> persona=personaService.listarPersona(params)
        println "persona "+persona
        render(view: "/persona/index",model: [personas: persona])
    }

    def guardar()
    {
        List<Persona> persona=personaService.listarPersona(params)
        println "persona "+persona
        render(view: "/persona/index", model: [personas: persona])
    }

    def crear(){

        render(view: "/persona/create")
    }

    def buscar() {
        println params
        //List<Persona> listaPersonas = Persona.findAllByNombreIlike("%${params.nombre}%")
        List<Persona> listaPersonas = Persona.findAll("from Persona as p where p.nombre=:nom OR p.apellidoPaterno=:apellidoPat OR p.apellidoMaterno=:apellidoMat",
        [nom: params.nombre, apellidoPat: params.apellidoP, apellidoMat: params.apellidoM])
        println listaPersonas

        render(view: "/persona/index", model: [personas: listaPersonas])
    }
    def select() {
        List<Persona> persona=personaService.listarPersona(params)
        println "persona "+persona
        render(view: "/persona/index",model: [personas: persona, param: params.filtro ])
    }
}
