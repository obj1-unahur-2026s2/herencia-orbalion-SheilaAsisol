class Entrenadores{
    const cantExperiencia
    const estaEnSintonia
    var nivelPrecision
    var rol = "Estratega Cuántico"
    method cantExperiencia() = cantExperiencia
    method estaEnSintonia() = estaEnSintonia

    method cambiarNivelPrecision(unValor){if(unValor <= 0) nivelPrecision = 0 else if (unValor >= 100) nivelPrecision = 100 else nivelPrecision = unValor}//
    method cambiarRol(unRol){if(unRol == "Estratega Cuántico" || unRol == "Arquitecto de Energía" || unRol == "Guía Mental")rol = unRol}
    method cumpleElRol() = rol ==  "Estratega Cuántico" and nivelPrecision > 80 || rol == "Arquitecto de Energía" and estaEnSintonia || rol ==  "Guía Mental"
    method esElite() = cantExperiencia > 10 and self.cumpleElRol()
}