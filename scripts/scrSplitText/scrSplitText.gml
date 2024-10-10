/*
 * Esta función divide un texto utilizando un delimitador, por ejemplo,
 * si le pasamos el texto "hola mundo" y decimos que el delimitador es un espacio vacio " "
 * entonces nos retornará un array con dos palabras ["hola", "mundo"]
 * 
 * El delimitador puede ser cualquier caracter, no solamente espacios vacios, por ejemplo
 * si tenemos el texto "A:B:C:D:E:F:G y utilizamos el delimitador ":" la respuesta será
 * ["A", "B", "C", "D", "E", "F", "G"]
 * 
 * @param text: El texto que queremos dividir
 * @param delimiter: Caracter que queremos utilizar como delimitador
 */
function scrSplitText(text, delimiter) {
	var words = []; // Todas las palabras a retornar
	
	// Estas dos variables nos ayudarán a buscar las palabras utilizando indices de busqueda
	var i1 = 1;
	var i2 = string_pos_ext(delimiter, text, i1);
	
	// Si i2 no es igual a 0 es porque encontramos un delimitador 
	while (i2 != 0) {
		// Si es así entonces copiamos la palabra utilizando los indices i1 y i2 y borramos cualquier rastro
		// del delimitador que haya quedado
		var word = string_replace(string_copy(text, i1, i2 - i1), delimiter, "");
		// Añadimos la palabra a la lista de palabras
		words[array_length(words)] = word;
		// El i1 se comvierte en i2 y buscamos un nuevo i2
		i1 = i2 + 1;
		i2 = string_pos_ext(delimiter, text, i1);
	}
	
	// Si nos sobró una palabra al final lo añadimos al array de palabras
	if (i1 + 1 < string_length(text)) {
		var lastWord = string_replace(string_copy(text, i1 + 1, string_length(text)), delimiter, "");
		words[array_length(words)] = lastWord;
	}
	
	// Regresamos la lista de palabras
	return words;
}