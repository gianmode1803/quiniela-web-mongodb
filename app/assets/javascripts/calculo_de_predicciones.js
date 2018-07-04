$(document).ready(function(){
	$("#test").val(10);

	$("#test2").val(9);

	var pais1 = $("#test");
	var pais2 = $("#test2");

	// if (parseInt(pais1.val()) > parseInt(pais2.val())) {
	// 	alert("pais1 es mayor que pais2!");
	// }

	// alert($("#imagen").attr("src"));
	$("#imagen2").attr("src", $("#imagen").attr("src"));

	$("#calculo").click(function(){
		alert("Funciona!");
	});

	$("#calcular_octavos").click(function(){
		var i;
		var j;
	  var array_paises =  [];
		for (i = 1; i < 12; i++){
			var pais = $("#A"+i).val();
			if (array_paises.length == 0)
				array_paises.push(pais)
			else
			{
				var j;
				var len = array_paises.length;
				var exite = 0;
				for (j=0; j<len; j++){
					if (array_paises[j].localeCompare(pais) == 0)
						exite = 1;
				};
				if (existe == 0)
					array_paises.push(pais);
			}
		};

		// for (i = 1; i < 7; i++) {
		// 	var pais1 = $("#A"+i.toString());
		// 	var pais2 = $("#A"+i.toString());
		// 	var golesp1 = $("#GA"+i.toString());
		// 	var golesp2 = $("#GA"+(i+1).toString());
		// 	if (parseInt(golesp1.val()) > parseInt(golesp2.val())
		//
		// 	else if (parseInt(golesp1.val()) = parseInt(golesp2.val()))
		//
		//
		// 	for (j = 1)
		//
		// 	fila 1 = id_pais, id pais
		// 	fila 2 = puntos; puntos
		//
		// };
		alert(array_paises.length);
	});

});
