package practica

class PersonaController
{
    def personaService
    def index()
    {
        List<Persona> persona=personaService.listarPersona(params)
        println "persona "+persona
        render(view: '/persona/index',model: [personas: persona])
    }

    def guardar()
    {
        List<Persona> persona=personaService.listarPersona(params)
        println "persona "+persona
        render(view: '/persona/index',model: [personas: persona])
    }

    def crear(){

        render(view: "/persona/create")
    }

    def buscar() {
        println params
        List<Persona> listaPersonas = Persona.findAllByNombreIlike("%${params.nombre}%")

        render(template: 'lista', model: [personas: listaPersonas])
    }
}
