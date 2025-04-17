object luke{
    var cantidadLugares = 0
    var ultimoRecuerdo = null
    var vehiculo = alambiqueVeloz
    method cantidadLugares() {return cantidadLugares}
    method ultimoRecuerdo() {return ultimoRecuerdo}
    method vehiculo() {return vehiculo}
    method viajar(lugarAViajar){
        if(vehiculo.puedeViajar(lugarAViajar)){
            cantidadLugares = cantidadLugares + 1
            ultimoRecuerdo = lugarAViajar.recuerdo()
            vehiculo.reducirCombustible()
        }
        else{
         null.Exception("El vehiculo no cumple con los requerimientos para viajar")
        }
    }
}

object alambiqueVeloz{
    var combustible = 100
    var rapido = true
    method combustible() {return combustible}
    method rapido() {return rapido}
    method esRapido(){
        if(combustible > 25){
            return rapido
        }
        else{
            rapido = false
            return rapido
        }
    }
    method puedeViajar(lugarAViajar){
        var booleano = false
        if(lugarAViajar.requerimientos()){
            booleano = true
            return(booleano)
        }
        else{
            return(booleano)
        }
    }
    method reducirCombustible(){
        combustible = combustible - 25
    }
}
object paris{
    method recuerdo() {return "llavero de la Torre Eifel"}
    method requerimientos(){
        var booleano = false
        if(luke.vehiculo().combustible() >= 25){
            booleano = true
            return booleano
        }
        else{
            return booleano
        }
    }
}

object buenos_aires{
    var presidente = "flavio"
    var hayYerba = true
    method presidente() {return presidente}
    method hayYerba() {return hayYerba}
    method recuerdo() {
        if(self.yerbaSi(presidente)){
            return("mate (con yerba)")
        }
        else{
            return("mate (sin yerba)")
        }
    }
    method yerbaSi(presidenteAConsiderar) {
        if(presidenteAConsiderar == "flavio" || presidenteAConsiderar == "lucia" || presidenteAConsiderar == "marcos"){
            return hayYerba
        }
        else{
            hayYerba = false
            return hayYerba
        }
    }
    method cambiarPresidente(nombreDelPresi){
        presidente = nombreDelPresi
    }
    method requerimientos(vehiculoAConsiderar){
        var booleano = false
        if(luke.vehiculo().esRapido()){
            booleano = true
            return booleano
        }
        else{
            return booleano
        }
    }
}