object registroProduccion {
	var produccionPorDia = [53,18,49,62,33]	
	
	method cambiarProduccionPorDia(nuevaLista) {
		produccionPorDia = nuevaLista
	}
	method algunDiaSeProdujo(cantidad){
		return produccionPorDia.contains(cantidad)
	}
	method maximoValorDeProduccion(){
		return produccionPorDia.max()
	}
	method valoresDeProduccionPares(){
		return produccionPorDia.filter({unNumero => unNumero%2 == 0})
	}
	method produccionEsAcotada(n1,n2){
		return (produccionPorDia.all({unNumero => unNumero.between(n1,n2)}))		
	}
	method produccionesSuperioresA(cuanto){
		return produccionPorDia.filter({unNumero => unNumero>cuanto})
	}
	method produccionesSumando(n){
		return produccionPorDia.map({unNumero => unNumero+n})
	}
	method totalProducido(){
		return produccionPorDia.sum()
	}
	method ultimoValorDeProduccion(){
		return produccionPorDia.last()
	}
	method cantidadProduccionesMayorALaPrimera(){
		return produccionPorDia.count({unNumero => unNumero>(produccionPorDia.first())})
	}
}
 /* algunDiaSeProdujo(cantidad)`: indica si el registro incluye al menos un día en el que se produjo, exactamente, la cantidad indicada de piezas.
- `maximoValorDeProduccion()`: el valor más alto de producción diaria incluido en el registro.
- `valoresDeProduccionPares()`: los valores pares incluidos, en el mismo orden en que aparecen en el registro.
- `produccionEsAcotada(n1,n2)`: indica si en cada día de que se tiene registro, la producción se encuentra entre los valores indicados.   
- `produccionesSuperioresA(cuanto)`: los valores de producción que superan el valor indicado, en el mismo orden en que aparecen en el registro.
- `produccionesSumando(n)`: la serie que resulta de sumar el valor indicado a cada valor de producción diaria incluido en el registro. 
- `totalProducido()`: el total de piezas producidas por la máquina, de acuerdo a la información incluida en el registro.
- `ultimoValorDeProduccion()`: el último valor registrado. 
- `cantidadProduccionesMayorALaPrimera()`: la cantidad de valores de producción diaria que superan a la producción indicada para el primer día de operación. */