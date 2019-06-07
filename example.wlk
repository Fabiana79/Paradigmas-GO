/*Ejercicio tipo parcial Dr.Casa 2019 */
class Persona{
	
	var enfermedades=[]
	var temp=36
	var celulasDelCuerpo=20000
	
	method contraerEnfermedad(enfer){
	    return enfermedades.add(enfer)
	}
	method cantEnfermedad(){
		return enfermedades.size()<5
	}
	method estaEncoma(){
	    return temp>45
	}
	method incrementarTemp(cambioDeTemp){
		temp=temp +cambioDeTemp
	}
	method temperatura(){
		return temp
	}
	method vivirUnDia(){
		enfermedades.forEach({enfermedad=>enfermedad.causarEfecto(self)})
	}
	method celulas(celulasAfectadas){
	    return celulasAfectadas
	}
	method celulasTotalesDelCuerpo(celulasAfectadas){
		celulasDelCuerpo=celulasDelCuerpo - self.celulas(celulasAfectadas)
	}
}

class EnfermedadInfecciosa{ //malaria, otitis

	var celulas
	
	method causarEfecto(persona){
		persona.incrementarTemp(celulas/1000)	
	}
	method proliferacionDeCelulas(reproducirCelulas){
		celulas=2*reproducirCelulas
	}
	method agresiva(persona){
		return celulas >(0.1)*persona.celulasTotalesDelCuerpo()		
      }
		
}

class EnfermedadAutoinmune{ //lupus
	
	//var celulas=10000
	
	//method causarEfecto(persona){
		//persona.incrementarTemp(2000)
	//}
	
	 method causarEfecto(persona){
	 	persona.celulas(0)
	 }
	 
	 method agresiva(persona){
	    return 30*(self.causarEfecto(persona))	
      }
}



















