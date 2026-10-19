import tecnologias.*
class Equipos {
    const nombre
    const nivelDeEnergia
    const entrenador
    const tecnologias = [] //lista de tecnologías con nombre, valor energético y estado activo/inactivo
    method nombre() = nombre
    method nivelDeEnegia() = nivelDeEnergia
    method entrenador() = entrenador
    method tecnologias() = tecnologias

    method energiaTotal()
}

class Luminicos inherits Equipos{
    const nivelDeRadiacion
    const nombresDeCristales = []//lista de strings
    method nivelDeRadiacion() = nivelDeRadiacion
    method nombresDeCristales() = nombresDeCristales

    override method energiaTotal() { 
        return if(nivelDeRadiacion <= 5000) {
            tecnologias.filter({t =>t.activas()}).sum({t => t.valorEnergetico()}) + nivelDeEnergia * 1.01
        } else {
            tecnologias.filter({t =>t.activas()}).sum({t => t.valorEnergetico()}) + nivelDeEnergia 
        }
    }
}

class Sinteticos inherits Equipos{
    const nivelDeProcesamiento
    const cantDeModulos 
    const estanCertificados
    method nivelDeProcesamiento() = nivelDeProcesamiento
    method cantDeModulos() = cantDeModulos
    method estanCertificados() = estanCertificados

    override method energiaTotal() { 
        return if(cantDeModulos > 5) {
            tecnologias.filter({t =>t.activas()}).sum({t => t.valorEnergetico()}) + nivelDeEnergia * 0.80
        } else {
            tecnologias.filter({t =>t.activas()}).sum({t => t.valorEnergetico()}) + nivelDeEnergia 
        }
    }
}
class Etericos inherits Equipos{
    const nivelDeFluctuacion
    const cantPortales
    method nivelDeFluctuacion() = nivelDeFluctuacion
    method cantPortales() = cantPortales

    override method energiaTotal() = tecnologias.filter({t =>t.activas()}).sum({t => t.valorEnergetico()}) +  nivelDeEnergia 
}