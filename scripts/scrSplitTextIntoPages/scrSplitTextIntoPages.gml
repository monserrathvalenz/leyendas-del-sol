/*
 * Esta función dividirá un texto en un array utilizando un ancho y una
 * altura como parametros. Puede ser utilizado para dividir un texto en 
 * multiples páginas en una caja de texto en un juego.
 *
 * @param text: El texto que queremos dividir
 * @param font: que fuente queremos utilizar
 * @param separation: la separación vertical entre linea y linea
 * @param width: Ancho máximo del texto
 * @param height: Alto máximo del texto
 */
function scrSplitTextIntoPages(text, font, separation, width, height) {
	var pages = []; // Todas las paginas disponibles
	var page = ""; // Pagina actual
	
	// Primero dividimos el texto en palabras, así que un texto como "hola mundo" se convierte en un array ["hola", "mundo"]
	var words = scrSplitText(text, " ");
	var length = array_length(words);

	// Colocamos la fuente con la que queremos medir el texto
	draw_set_font(font);
	
	// Iteramos por cada una de las palabras
	for (var i=0;i<length;i++) {
		var word = words[i];
		
		// Si el tamaño vertical de la pagina actual (page) + la palabra (word) es mayor o igual que la altura
		// que le pasamos como parametro a esta función (height)
		if (string_height_ext(page + " " + word, separation, width) >= height) {
			// Entonces cerramos la página actual
			pages[array_length(pages)] = page;
			// E iniciamos una nueva pagina con solo la palabra de esta iteración
			page = word;
		} else {
			// Si el tamaño vertical es menor entonces añadimos la palabra a la pagina actual
			if (i > 0) { page += " "; }
			page += word;
		}
	}
	
	// Luego de iterar por todas las palabras igual nos sobra una pagina, así que la añadimos a el total de paginas
	pages[array_length(pages)] = page;
	
	// Retornamos todas las paginas
	return pages;
}


