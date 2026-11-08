if not VoiceOver or not VoiceOver.DataModules then return end
if not VoiceOver.Language or VoiceOver.Language:GetClientLanguage() ~= "esES" then return end
SpokenQuestsAudio_esES.ClientLocaleLookups = SpokenQuestsAudio_esES.ClientLocaleLookups or {}
SpokenQuestsAudio_esES.ClientLocaleLookups.GossipLookupByObjectID = {
	[6751] = {
		["Esta planta destaca entre la flora normal de Teldrassil y emite un extraño brillo violáceo."] = "0f706fc37d41cf3594fe06a341572d78"
	},
	[6752] = {
		["He aquí un ejemplar exótico de nuestra flora, desconocido en otros lugares de Teldrassil."] = "4bad0d72daceaeaabe7296045b09c363"
	},
	[20923] = {
		["Este monumento está dedicado a todos los que dieron su vida por proteger Ventormenta. Nuestro pueblo ha tenido que sufrir increíbles dificultades para mantener su libertad y para poder controlar su propio destino. Aquí es donde recordamos los sacrificios que nuestros ciudadanos hicieron durante la primera guerra que destrozó a nuestro pueblo."] = "18d65bf52e8854e76efbc0c79572690b"
	},
	[142345] = {
		["¡Brzzzzt!$B$BTe doy la bienvenida al Perforágrafo Matriz 3005 de ataque A, un terminal de seguridad de nivel alfa.$B$BNecesitas una tarjeta perforada blanca para acceder a las funciones del terminal.  01000100 01101111 01110111 01101110 00100000 01110111 01101001 01110100 01101000 00100000 01110100 01101000 01100101 00100000 01101000 01101111 01110010 01100100 01100101 00100001"] = "76aaa54e5e30fd41bd34c2fe44645123",
		["¡Brzzzzt!$B$BTe doy la bienvenida al Perforágrafo Matriz 3005 de ataque A, un terminal con nivel de seguridad alfa.$B$BDetectada tarjeta perforada blanca. Acceso concedido.  01010100 01100101 01101100 01101100 00100000 01111001 01101111 01110101 01110010 00100000 01100110 01110010 01101001 01100101 01101110 01100100 01110011 00100000 01110100 01101111 00100000 01110000 01101100 01100001 01111001 00100000 01010111 01101111 01010111"] = "5899e16466b0cfc8aa73b7cd3df8170b",
		["Tarjeta blanca de seguridad introducida correctamente... $B$BPreparando unidad con nivel de seguridad beta.  01010000 01101100 01100001 01111001 00100000 01110100 01101000 01100101 00100000 01010111 01100001 01110010 01100011 01100001 01110010 01100110 01110100 00100000 01110010 01101111 01101100 01100101 01110000 01101100 01100001 01111001 01101001 01101110 01100111 00100000 01100111 01100001 01101101 01100101"] = "6aeeb85288821aec717d313e06a57c8a"
	},
	[142475] = {
		["¡Brzzzzt!$B$BTe doy la bienvenida al Perforágrafo Matriz 3005 de ataque B, un terminal de nivel de seguridad beta.$B$BNecesitas una tarjeta perforada amarilla para acceder a las funciones del terminal.  01000111 01101110 01101111 01101101 01100101 01110010 01100011 01111001 00100001"] = "f965fd5462e15845678ce52c9a61aa55",
		["¡Brzzzzt!$B$BTe doy la bienvenida al Perforágrafo Matriz 3005 de ataque B, un terminal con nivel de seguridad beta.$B$BDetectada tarjeta perforada amarilla. Acceso concedido.  01001011 01101001 01110011 01110011 00100000 01101101 01100101 00101100 00100000 01001001 00100111 01101101 00100000 01100111 01101110 01101111 01101101 01101001 01110011 01101000 00100001"] = "411534682daaf09511478caf8c28d14f",
		["Tarjeta de seguridad amarilla introducida correctamente. Preparando unidad con nivel de seguridad chi.  01010100 01101000 01100101 00100000 01001100 01101001 01100011 01101000 00100000 01001011 01101001 01101110 01100111 00100000 01101100 01101001 01110110 01100101 01110011 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001 00100001"] = "2aee0781189cd0b6e9f66a34a29aad6b",
		["El Tonómetro Tecnológico del Perforágrafo Matriz ha detectado tus habilidades en ingeniería. Ahora puedes elegir entre una de las siguientes opciones:  01000111 01101111 00100000 01100111 01101111 00100000 01100111 01101111 00100001 00100001"] = "2b848ce2c7406be289254849c2fcae75",
		["Accediendo a...  Void -- ingeniería <#nivel_aptitud == n3wb>   01000111 01100001 01101101 01100101 00100000 01001111 01110110 01100101 01110010  ¡ACCESO DENEGADO!"] = "c0b813d22da57212ba256d026ec015ec",
		["Concedido el acceso a los datos. ¡Que tengas un buen día!  01001110 01100001 01110100 01100001 01101100 01101001 01100101 00100000 01010000 01101111 01110010 01110100 01101101 01100001 01101110 00100000 01010010 01101111 01100011 01101011 01110011"] = "fc3083d846e2925d50011736f2c91202"
	},
	[142476] = {
		["¡Brzzzzt!$B$BTe doy la bienvenida al Perforágrafo Matriz 3005 de ataque C, un terminal de seguridad de nivel chi.$B$BNecesitas una tarjeta perforada azul para acceder a las funciones del terminal.  01010010 01100101 01100011 01101001 01110000 01100101 00111010 00100000 01001101 01100101 01100011 01101000 01100001 01101110 01101001 01100011 01100001 01101100 00100000 01000011 01101000 01101001 01100011 01101011 01100101 01101110 00100000 01010011 01101111 01110101 01110000"] = "f9dff1eba81b73fd231bd745abd765c7",
		["¡Brzzzzt!$B$BTe doy la bienvenida al Perforágrafo Matriz 3005 de ataque C, un terminal con nivel de seguridad chi.$B$BDetectada tarjeta perforada azul. Acceso concedido.  01000111 01101110 01101111 01101101 01100101 01110010 01100101 01100111 01100001 01101110 00100000 01100110 01101111 01110010 01100101 01110110 01100101 01110010 00100001"] = "69ec3f694a4c97690ecb6baed8808681",
		["Tarjeta de seguridad azul introducida correctamente. Preparando unidad con nivel de seguridad delta.  01010000 01101100 01100001 01111001 00100000 01001101 01101111 01110010 01100101 00100000 01010111 01101111 01010111"] = "beeebc97327918e5cefc7e3a0d2dd137"
	},
	[142696] = {
		["¡Brzzzzt!$B$BTe doy la bienvenida al Perforágrafo Matriz 3005 barra D, un terminal con nivel de seguridad delta.$B$BNecesitas una tarjeta perforada roja para acceder a las funciones del terminal.  01010011 01101000 01101111 01110010 01110100 00100000 01100001 01101110 01100100 00100000 01110011 01110111 01100101 01100101 01110100"] = "b049659712ff4a6dae12ce1519d7470a",
		["¡Brzzzzt!$B$BTe doy la bienvenida al Perforágrafo Matriz 3005 de ataque D, un terminal con nivel de seguridad delta.$B$BTarjeta perforada roja detectada. Acceso Concedido.  01001000 01101111 01110111 00100000 01100001 01101101 00100000 01001001 00100000 01100100 01110010 01101001 01110110 01101001 01101110 01100111 00111111"] = "a12254ed4eafe35d7fbe02ee0a46d1b5",
		["Tarjeta de seguridad roja introducida correctamente. Preparando tarjeta de datos con nivel de seguridad delta.  00111100 01101001 01101110 01110011 01100101 01110010 01110100 00100000 01100110 01110101 01101110 01101110 01111001 00100000 01101101 01100101 01110011 01110011 01100001 01100111 01100101 00100000 01101000 01100101 01110010 01100101 00111110"] = "429864f19e4aae8eeb214e94d86bc2a8",
		["El Tonómetro Tecnológico del Perforágrafo Matriz ha detectado tus habilidades en ingeniería. Ahora puedes elegir entre una de las siguientes opciones:  01000111 01101111 00100000 01100111 01101111 00100000 01100111 01101111 00100001 00100001"] = "2b848ce2c7406be289254849c2fcae75",
		["Accediendo a...  Void -- ingeniería <#nivel_aptitud == n3wb>   01000111 01100001 01101101 01100101 00100000 01001111 01110110 01100101 01110010  ¡ACCESO DENEGADO!"] = "c0b813d22da57212ba256d026ec015ec",
		["Concedido el acceso a los datos. ¡Que tengas un buen día!  01001110 01100001 01110100 01100001 01101100 01101001 01100101 00100000 01010000 01101111 01110010 01110100 01101101 01100001 01101110 00100000 01010010 01101111 01100011 01101011 01110011"] = "fc3083d846e2925d50011736f2c91202"
	},
	[142715] = {
		["Eraka no Kimbul$BDios de los tigres, Señor de las bestias, Rey de los gatos, Condena de la presa$B$BUeetay no Mueh'zala$BDios de la muerte, Padre del sueño, Hijo del tiempo, el Amigo de la noche."] = "23565b681fd0e1e4b4d5ee631293f067"
	},
	[144063] = {
		["El gran santuario fue construido hace muchos años por los elfos de la noche que antaño vivían en esta tierra.$B$B¿Qué secretos podría guardar ahora?"] = "bdffb7bd4c1a549ca21fce4994c04b2e"
	},
	[148498] = {
		["El altar parece hacerte señas como si estuviera vivo."] = "547f7a85e9b61fb09fdce63531b6446c"
	},
	[148836] = {
		["El antiguo altar de Hakkar permanece en silencio junto a la entrada del recinto.$B$BSi observas los balcones que están encima, advertirás que una gran estatua con forma de serpiente descansa en cada uno de ellos. Las estatuas son muy similares a las que están en el altar que tienes delante. Guardan algún tipo de relación..."] = "91b59c0582fdc11756948115c740b617"
	},
	[160445] = {
		["Los restos están cubiertos de moscas y gusanos."] = "2f784284d20f290e01140cc7e43f3bbc"
	},
	[164955] = {
		["La Torre de cristal de Un'Goro es un misterio para todos. Para sus escasos habitantes, se trata de una suerte de leyenda, especulándose mucho acerca de su origen."] = "9658dbe477ee985df565821f1fefa775",
		["Los secretos ocultos en las torres del cráter de Un’Goro ahora te pertenecen. Visita las torres cada vez que necesites para utilizar su poder y obtener recursos útiles."] = "d639df313298d68d7a237f950f24a630",
		["Un examen detallado de la torre te permitirá encontrar una pequeña mesa con cristales amarillos, rojos y verdes, dispuestos en una formación específica.$B$BUn gran círculo de cristales amarillos está flanqueado a cada lado por un círculo más pequeño de cristales rojos y otro de cristales verdes.$B$BToma nota cuidadosamente de los colores de los cristales, teniendo en cuenta que J.D. estará muy interesado en escuchar lo que has descubierto."] = "a9edab8eb63991a1d8f002b277b1332a"
	},
	[164956] = {
		["La Torre de cristal de Un'Goro es un misterio para todos. Para sus escasos habitantes, se trata de una suerte de leyenda, especulándose mucho acerca de su origen."] = "9658dbe477ee985df565821f1fefa775",
		["Los secretos ocultos en las torres del cráter de Un’Goro ahora te pertenecen. Visita las torres cada vez que necesites para utilizar su poder y obtener recursos útiles."] = "d639df313298d68d7a237f950f24a630",
		["Un examen detallado de la torre te permitirá encontrar una pequeña mesa con cristales rojos, azules y verdes, dispuestos en una formación específica.$B$BUn gran círculo de cristales azules está flanqueado a cada lado por un círculo más pequeño de cristales azules y otro de cristales verdes.$B$BToma nota cuidadosamente de los colores de los cristales, teniendo en cuenta que J.D. estará muy interesado en escuchar lo que has descubierto."] = "5c6602e9f23f886ebab0f831c71cbfba"
	},
	[164957] = {
		["La Torre de cristal de Un'Goro es un misterio para todos. Para sus escasos habitantes, se trata de una suerte de leyenda, especulándose mucho acerca de su origen."] = "9658dbe477ee985df565821f1fefa775",
		["Los secretos ocultos en las torres del cráter de Un’Goro ahora te pertenecen. Visita las torres cada vez que necesites para utilizar su poder y obtener recursos útiles."] = "d639df313298d68d7a237f950f24a630",
		["Un examen detallado de la torre te permitirá encontrar una pequeña mesa con cristales azules, amarillos y verdes, dispuestos en una formación específica.$B$BUn gran círculo de cristales azules está flanqueado a cada lado por un círculo más pequeño de cristales amarillos y otro de cristales verdes.$B$BToma nota cuidadosamente de los colores de los cristales, teniendo en cuenta que J.D. estará muy interesado en escuchar lo que has descubierto."] = "5c358003a14e69ee6ddd9c6f08651f68"
	},
	[169294] = {
		["Estepas Ardientes - Tablilla de los Siete"] = "d53d78383a00e34fee253b35f4822f53",
		["Los símbolos de la tablilla se han transcrito cuidadosamente..."] = "1441f593f536c438e86c832a3994399f"
	},
	[173265] = {
		["¿Hola?"] = "f1066af8c8e6467a6ae99ec3559a06c9",
		["¡Sí, claro, $n! Lo siento... creí que ya habías terminado."] = "927e8ff519d8ba1f7268782502991891"
	},
	[174848] = {
		["Los líquidos y las mezclas burbujean y se contraen a medida que te acercas a ellos. Cerca del equipo hay un par de tenazas que parecen servir para coger un par de muestras de moco.$B$BTenemos equipo de seguridad, pero parece polvoriento y abandonado.$B$BNo creo que sea buena idea tocar nada."] = "4443edbe9f8e5b3bb25037cef6a76549"
	},
	[175265] = {
		["Los líquidos y las mezclas burbujean y se contraen a medida que te acercas a ellos. Cerca del equipo hay un par de tenazas que parecen servir para coger un par de muestras de moco.$B$BTenemos equipo de seguridad, pero parece polvoriento y abandonado.$B$BNo creo que sea buena idea tocar nada."] = "4443edbe9f8e5b3bb25037cef6a76549"
	},
	[175926] = {
		["El título de este libro muestra una rúbrica escrita a mano: Diario de Maureen Dalson."] = "7ee3700cb7019901b220464a5ab94655",
		["Un diario con páginas que comienzan a amarillear descansa abierto por la última entrada:$B$B'No sé lo que va a ocurrir ahora que Harold se ha transformado. Gasté todas mis fuerzas en arrastrarlo hasta el único lugar que pude encontrar y en el que pudiera quedar encerrado. Escondí en mí la llave y ruego porque funcione...$B$BEspero poder salir de aquí, pero necesito dinero para hacerlo. Creo que todas nuestras cosas están en el armario... y ahora que lo pienso, ¿no tiene Harold la llave con él?$B$BDescansaré, estoy terriblemente cansada.'"] = "717e4452946d86f15f58fb9bae10c1b8"
	},
	[175927] = {
		["Catálogo de otoño de la Hermandad del Torio:$B$B¡En su interior encontrarás las mejores ofertas para todas las necesidades de un aventurero! Incluso se indica dónde recoger los componentes y suministros más difíciles de encontrar."] = "76853600f17808d27848257e7a687168",
		["Si las costuras desgarradas de abominación son tu deseo, Stratholme es tu destino.$B$BLa antigua ciudad del Iluminado, invadida ahora por los esbirros de Kel' Thuzad.$B$B¡Desafía los peligros de la ciudad en llamas y derrota a las carnosas abominaciones! Toma de ellas tu premio: ¡costuras desgarradas de abominación!"] = "3f424f4d79a0f2e7f08530b667b2e442",
		["El último santuario de los integristas. ¡Allí crean sus uniformes escarlata, imbuidos de magia por el hilo escarlata encantado!$B$B¡A Stratholme, aventurero!"] = "a1ab5bb20b1a4b85596ee4b43ec71cb8",
		["El mejor conservante de carne que conoce el hombre y la Plaga: el líquido de embalsamar de Levescarcha. Solo hay un lugar en el que podría encontrarlo un aventurero y hay que pensar que el exánime que da nombre al líquido no será demasiado amable con los que vayan allí.$B$BPero... si es el líquido que deseas, a Scholomance has de ir..."] = "bc097c6ccf37ea8c37e08bf804253ff4",
		["Un producto de primera necesidad de la Hermandad del torio.$B$BLos cristales de arcanita se extraen de las vetas ricas de torio. Gracias a la destreza de poderosos alquimistas nacen los lingotes de arcanita.$B$BBusca a un minero, si tú no lo eres... ¡y encuentra a un buen alquimista! Necesitarás a los dos."] = "d46d54093f1260912aed6c305f8d3ca6",
		["El suelo sobre el que Scholomance fue construida fue entregado a Kel' Thuzad por la familia Barov. A cambio de esta tierra (un lugar donde el Culto de los Malditos podía aprender la vil magia de la Plaga), Kel' Thuzad garantizó a los Barov la inmortalidad a través de la no-muerte.$B$BEs en la Cámara de las Sombras donde encontrarás la piel de sombra, junto a su dueña, Lady Illucia Barov.$B$BNunca existió mejor espejo para los vanidosos y los muertos."] = "33f4d18ce0ab409c37b0395f421b1056"
	},
	[176192] = {
		["El libro habla la unión de los dragones para hacer frente a otro dragón más poderoso llamado Alamuerte. De ello se deduce que el Vuelo Cromático casi había sido desatado sobre el mundo. Los Aspectos estaban preparados."] = "a39f45feb88e61fcb589760afd9818ef"
	},
	[177490] = {
		["La sólida caja está en el centro de la serrería, rodeada de escombros y muchos seguidores fervientes de la Cruzada Escarlata."] = "c6e0746701f75c4143389544cdc0709b"
	},
	[177787] = {
		["Soy Ulysses Masatormento, capitán de El galante. Y este es el cuaderno de bitácora de los últimos días de mi barco y de su perdición.$B$BNos encontrábamos rumbo al Bastión Plumaluna con un cargamento de suministros, cuando los nagas lo tomaron al asalto. Logramos echarlos atrás pero sabíamos que regresarían. Temiendo la pérdida de mis valiosas posesiones, puse rumbo a una isla de la costa de Desolace, una isla con antiguas ruinas de los elfos de la noche. Y allí dejé mi cofre del tesoro."] = "c59de48f730da3b5d7c895e1e6639450",
		["Mi cofre tiene un diseño muy ingenioso y necesita abrirse con dos llaves, una dorada y una de plata. La primera llave, la de plata, se la di al primero de a bordo, yo mismo guardé la de oro.$B$BPero estábamos condenados a perderlas. Mi llave se perdió en el segundo ataque de los nagas y la del primero de a bordo un día después, cuando los makrura Golpeseco nos asaltaron y lo arrastraron a las profundidades.$B$BEstoy seguro de que los naga y los makrura tienen las llaves. Me consuela pensar que ambos son enemigos y no las compartirán."] = "4737220be29ed0b0905a27df23942c8f",
		["Tras el ataque de los makrura, estaba claro que El galante no sobreviviría un nuevo ataque. Así que yo y los pocos supervivientes abandonamos el barco.$B$BAhora estamos en tierra y pronto partiremos hacia la ciudad de Punta de Nijel, pero aún nos separan del santuario muchos peligros, temo que Desolace acabe con nosotros.$B$BEscribo estas palabras esperando que alguien sepa de nuestra situación apremiante y que algún día nos vengue de los enemigos acuáticos que nos causaron la ruina."] = "b7584554dd225ef7e529ef1bd508f29b"
	},
	[178526] = {
		["Las páginas del diario parecen contener información sobre comercios, compradores y otras cosas relacionadas con los negocios."] = "b452639355066c08bc2c04d51231d65d"
	},
	[179544] = {
		["Un examen superficial del esqueleto indica que la carne fue quemada. Una visión espeluznante."] = "555ade875b44d8dec7f9becc88523688"
	},
	[179552] = {
		["<No puedes comprender nada de la jerga técnica que aparece en el pergamino.>"] = "2ed5f0736f5294f29dc1aa5ff45f2e1e",
		["<En el pergamino hay un dibujo esquemático de un robot de reparación de campo.>"] = "b4e9ed9a4e8de9979239fe2638d5d48a",
		["<El dibujo esquemático es demasiado complicado para tu escaso conocimiento de ingeniería.>"] = "b489dbbcf2f13d9af3fc5054c2777e4e",
		["<Entiendes a la perfección la creación y el funcionamiento de este robot.>"] = "0b2909b5910f8e6d10745fafc1b09916"
	},
	[179879] = {
		["Una gran huella de una mano humanoide está incrustada en la superficie del orbe. A pesar de lo que parece ser una manipulación constante, el orbe permanece en perfectas condiciones."] = "0f22270c02f48a29cf9c86a0b391518f",
		["Las marcas del orbe son iguales que el estigma de tu mano."] = "bac94d7200b614200b87cee2f536db9b"
	},
	[179888] = {
		["Los papeles están protegidos. Habla con Zamek para crear una distracción."] = "041b549b37d0c103ea25eda0b9a0c1e5"
	},
	[179913] = {
		["Ofertas de trabajo/Perdido y encontrado/Se busca:"] = "324d50e454c68ca640804647cebfd92d"
	},
	[180358] = {
		["Gri'lek, de la Sangre Férrea$B$BEl vagabundo. Que su fuerza y ansia de batalla sobreviva a las edades del mundo. $B$BAhora, Gri'lek vive lejos de aquí. Pero, algún día, podría regresar..."] = "a47f419d74ea68766f08c590896888da",
		["Gri'lek, de la Sangre Férrea$B$BEl vagabundo. Que su fuerza y ansia de batalla sobreviva a las edades del mundo.$B$BAhora Gri'lek sobrevive cerca del borde de la locura..."] = "e8ceceb2614bd5b20024f97ca673b98c"
	},
	[180364] = {
		["Hazza'rah, el Tejesueños.$B$BEl suyo es el poder de las pesadillas y que sus enemigos duerman eternamente. $B$BAhora, Hazza'rah vive lejos de aquí. Pero, algún día, podría regresar..."] = "674ae3471ba629f3a738a26fb9efb99b",
		["Hazza'rah, el Tejesueños.$B$BEl suyo es el poder de las pesadillas y que sus enemigos duerman eternamente.$B$BAhora, Hazza'rah sueña cerca del borde de la locura."] = "184e2a9ef3e40c00c4f957b06b1b1381"
	},
	[180365] = {
		["Renataki, el de las Mil Espadas.$B$BEl dolor es el motor de su vida. El miedo, su aliado. Ojalá vuelva algún día y traiga con él el júbilo del derramamiento de sangre. $B$BAhora, Renataki vive lejos de aquí. Pero, algún día, podría regresar..."] = "d011f7371a90d80de8147a5eb12cbdce",
		["Renataki, el de las Mil Espadas.$B$BEl dolor es el motor de su vida. El miedo, su aliado. Ojalá vuelva algún día y traiga con él el júbilo del derramamiento de sangre.$B$BAhora, Renataki vive cerca del límite de la locura."] = "0cf89a4da6119ad19ecb69a3a0f5adc1"
	},
	[180437] = {
		["Las cenizas del Hombre de Mimbre en llamas irradian poder mágico."] = "28dd5a31538999b63e73fb2d316c92e0",
		["Las cenizas del Hombre de Mimbre en llamas irradian poder mágico. Ya te has embadurnado la cara con las cenizas."] = "9fde842505ae51e2e9603bb246e83c36"
	},
	[180529] = {
		["¡Márchate, infiel! ¡Que el poder del Abismo te golpee con su fuerza!"] = "01594454427de3b4452e20be980b7818",
		["Se oye un susurro que proviene del interior de la piedra... $B$BSaludos, $gpequeñajo:pequeñaja;. ¿Tienes noticias para el templario?"] = "66471c117f9a9c8fb2c8bcbff27683fb"
	},
	[180534] = {
		["¡Cómo osas estar en comunión con un Duque del Consejo, sabandija!"] = "d39f90b279f06892c664f53d9d8191a0",
		["Se oye con claridad una voz que proviene del interior de la piedra... $B$B¿Dónde está tu medallón de estatus, $gpequeñajo:pequeñaja;? No debes hablar con un duque sin mostrar una prueba de tu título..."] = "ed63d78e311e71ef7884338ead2cb4d4",
		["Se oye con claridad una voz que proviene del interior de la piedra... $B$BYa que posees un título te escucharemos, pero no pongas a prueba nuestra paciencia, $c. El consejo no tiene tiempo para escuchar chismorreos de alguien como tú."] = "37d313298adafe97bca139d3d41d6c87"
	},
	[180665] = {
		["Tu intento de aprender dracónico es inútil, mortal. ¿Y por qué ibas a querer hablar esta lengua antigua? Es realmente desconcertante..."] = "26d2095bf010d5921e9b8e83bc514a84"
	},
	[180666] = {
		["Tu intento de aprender dracónico es inútil, mortal. ¿Y por qué ibas a querer hablar esta lengua antigua? Es realmente desconcertante..."] = "26d2095bf010d5921e9b8e83bc514a84"
	},
	[180667] = {
		["Tu intento de aprender dracónico es inútil, mortal. ¿Y por qué ibas a querer hablar esta lengua antigua? Es realmente desconcertante..."] = "26d2095bf010d5921e9b8e83bc514a84"
	},
	[180393] = {
		["Wushoolay, la Bruja de la Tormenta.$B$BSu poder es el poder del cielo, la lluvia y la tierra destrozada. Ojalá reine algún día de nuevo, como madre de los Gurubashi. $B$BAhora, Wushoolay vive lejos de aquí. Pero, algún día, podría regresar..."] = "0bea24698238b8561be4f42242f8c814",
		["Wushoolay, la Bruja de la Tormenta.$B$BSu poder es el poder del cielo, la lluvia y la tierra destrozada. Ojalá reine algún día de nuevo, como madre de los Gurubashi.$B$BAhora, Wushoolay ruge al bode de la locura."] = "e1e922023f045ea617c334f2fea747ba"
	},
	[180368] = {
		["Las marcas de esta tablilla muestran diagramas ancestrales e inscripciones de funestas palabras de poder, pero no puedes comprender el significado."] = "0f473871a39a8811c5b5a7214b981765",
		["Las marcas de esta tablilla muestran diagramas ancestrales e inscripciones de funestas palabras de poder, utilizadas para crear Locura Mojo de Gurubashi..."] = "8fd8195d0c975f6f3c51d73be763553f"
	},
	[180453] = {
		["El cristal está cubierto de complejos jeroglíficos y runas. No se entiende nada."] = "580ccf1ef42fead3e20032eee01f307c"
	},
	[180454] = {
		["El cristal está cubierto de complejos jeroglíficos y runas. No se entiende nada."] = "580ccf1ef42fead3e20032eee01f307c"
	},
	[180455] = {
		["El cristal está cubierto de complejos jeroglíficos y runas. No se entiende nada."] = "580ccf1ef42fead3e20032eee01f307c"
	},
	[180456] = {
		["¡Márchate, infiel! ¡Que el poder del Abismo te golpee con su fuerza!"] = "01594454427de3b4452e20be980b7818",
		["Se oye un susurro que proviene del interior de la piedra... $B$BSaludos, $gpequeñajo:pequeñaja;. ¿Tienes noticias para el templario?"] = "66471c117f9a9c8fb2c8bcbff27683fb"
	},
	[180461] = {
		["¡Cómo osas estar en comunión con un Duque del Consejo, sabandija!"] = "d39f90b279f06892c664f53d9d8191a0",
		["Se oye con claridad una voz que proviene del interior de la piedra... $B$B¿Dónde está tu medallón de estatus, $gpequeñajo:pequeñaja;? No debes hablar con un duque sin mostrar una prueba de tu título..."] = "ed63d78e311e71ef7884338ead2cb4d4",
		["Se oye con claridad una voz que proviene del interior de la piedra... $B$BYa que posees un título te escucharemos, pero no pongas a prueba nuestra paciencia, $c. El consejo no tiene tiempo para escuchar chismorreos de alguien como tú."] = "37d313298adafe97bca139d3d41d6c87"
	},
	[180466] = {
		["¿Qué bicho se presenta antes los Señores del Consejo? ¡Sin duda, uno que quiere morir aplastado!"] = "9f2e8057a4162af2cc00fd83ab0ece74",
		["Se oye una voz atronadora que proviene de la piedra... $B$BSaludos, Comandante. ¿Qué noticias de Silithus traes a los Señores del Consejo?"] = "9e096eb8c378bcc66b01591b1b44e830",
		["Se oye una voz atronadora que proviene de la piedra... $B$BPuedo ver tu medallón de estatus pero no tienes un anillo de nobleza. ¿De verdad eres $gun auténtico:una auténtica; comandante del Azote del Ocaso o simplemente eres $gel recadero:la recadera; de tus superiores?"] = "e9af3f58bfcd009f6ff72f930ea3882f",
		["Se oye una voz atronadora que proviene de la piedra... $B$B¿Qué es esto? ¡Hay un pequeño sectario correteando por ahí! ¡Vete, alimaña o enfréntate a la cólera de los Señores del Consejo!"] = "5fb610919b3f9ee9e77b9a37bbabaaea"
	},
	[180518] = {
		["¡Márchate, infiel! ¡Que el poder del Abismo te golpee con su fuerza!"] = "01594454427de3b4452e20be980b7818",
		["Se oye un susurro que proviene del interior de la piedra... $B$BSaludos, $gpequeñajo:pequeñaja;. ¿Tienes noticias para el templario?"] = "66471c117f9a9c8fb2c8bcbff27683fb"
	},
	[180539] = {
		["¿Qué bicho se presenta antes los Señores del Consejo? ¡Sin duda, uno que quiere morir aplastado!"] = "9f2e8057a4162af2cc00fd83ab0ece74",
		["Se oye una voz atronadora que proviene de la piedra... $B$BSaludos, Comandante. ¿Qué noticias de Silithus traes a los Señores del Consejo?"] = "9e096eb8c378bcc66b01591b1b44e830",
		["Se oye una voz atronadora que proviene de la piedra... $B$BPuedo ver tu medallón de estatus pero no tienes un anillo de nobleza. ¿De verdad eres $gun auténtico:una auténtica; comandante del Azote del Ocaso o simplemente eres $gel recadero:la recadera; de tus superiores?"] = "e9af3f58bfcd009f6ff72f930ea3882f",
		["Se oye una voz atronadora que proviene de la piedra... $B$B¿Qué es esto? ¡Hay un pequeño sectario correteando por ahí! ¡Vete, alimaña o enfréntate a la cólera de los Señores del Consejo!"] = "5fb610919b3f9ee9e77b9a37bbabaaea"
	},
	[180544] = {
		["¡Márchate, infiel! ¡Que el poder del Abismo te golpee con su fuerza!"] = "01594454427de3b4452e20be980b7818",
		["Se oye un susurro que proviene del interior de la piedra... $B$BSaludos, $gpequeñajo:pequeñaja;. ¿Tienes noticias para el templario?"] = "66471c117f9a9c8fb2c8bcbff27683fb"
	},
	[180549] = {
		["¡Márchate, infiel! ¡Que el poder del Abismo te golpee con su fuerza!"] = "01594454427de3b4452e20be980b7818",
		["Se oye un susurro que proviene del interior de la piedra... $B$BSaludos, $gpequeñajo:pequeñaja;. ¿Tienes noticias para el templario?"] = "66471c117f9a9c8fb2c8bcbff27683fb"
	},
	[180554] = {
		["¡Cómo osas estar en comunión con un Duque del Consejo, sabandija!"] = "d39f90b279f06892c664f53d9d8191a0",
		["Se oye con claridad una voz que proviene del interior de la piedra... $B$B¿Dónde está tu medallón de estatus, $gpequeñajo:pequeñaja;? No debes hablar con un duque sin mostrar una prueba de tu título..."] = "ed63d78e311e71ef7884338ead2cb4d4",
		["Se oye con claridad una voz que proviene del interior de la piedra... $B$BYa que posees un título te escucharemos, pero no pongas a prueba nuestra paciencia, $c. El consejo no tiene tiempo para escuchar chismorreos de alguien como tú."] = "37d313298adafe97bca139d3d41d6c87"
	},
	[180559] = {
		["¿Qué bicho se presenta antes los Señores del Consejo? ¡Sin duda, uno que quiere morir aplastado!"] = "9f2e8057a4162af2cc00fd83ab0ece74",
		["Se oye una voz atronadora que proviene de la piedra... $B$BSaludos, Comandante. ¿Qué noticias de Silithus traes a los Señores del Consejo?"] = "9e096eb8c378bcc66b01591b1b44e830",
		["Se oye una voz atronadora que proviene de la piedra... $B$BPuedo ver tu medallón de estatus pero no tienes un anillo de nobleza. ¿De verdad eres $gun auténtico:una auténtica; comandante del Azote del Ocaso o simplemente eres $gel recadero:la recadera; de tus superiores?"] = "e9af3f58bfcd009f6ff72f930ea3882f",
		["Se oye una voz atronadora que proviene de la piedra... $B$B¿Qué es esto? ¡Hay un pequeño sectario correteando por ahí! ¡Vete, alimaña o enfréntate a la cólera de los Señores del Consejo!"] = "5fb610919b3f9ee9e77b9a37bbabaaea"
	},
	[180564] = {
		["¡Márchate, infiel! ¡Que el poder del Abismo te golpee con su fuerza!"] = "01594454427de3b4452e20be980b7818",
		["Se oye un susurro que proviene del interior de la piedra... $B$BSaludos, $gpequeñajo:pequeñaja;. ¿Tienes noticias para el templario?"] = "66471c117f9a9c8fb2c8bcbff27683fb"
	},
	[180601] = {
		["Ves unos largos túneles y pasillos cavernosos reflejados en el interior del cristal. Reconoces el área como el Núcleo de Magma."] = "fa367d2c3c569877041b7b066d0093b9"
	},
	[180747] = {
		["Hay una pila de regalos envueltos aquí."] = "8ba566373c8454ba2c9076cbe5ab1416"
	},
	[180748] = {
		["Hay una pila de regalos envueltos aquí."] = "8ba566373c8454ba2c9076cbe5ab1416"
	},
	[180793] = {
		["Hay una pila de regalos envueltos aquí."] = "8ba566373c8454ba2c9076cbe5ab1416"
	},
	[180794] = {
		["El diario de Jandice Barov está lleno de calumnias y sandeces sobre los no-muertos. Ya casi al final del libro, se encuentra lo que parece ser un patrón de costura para confeccionar algún tipo de bolsa. Tus conocimientos de confección son insuficientes para descifrar el patrón."] = "ac3bf49b09e574e839ef683378f6e79d",
		["El diario de Jandice Barov está lleno de calumnias y sandeces sobre los no-muertos. Ya casi al final del libro, se encuentra lo que parece ser un patrón de costura para confeccionar una bolsa de tela de inferi. Esta bolsa la utilizan los brujos para guardar fragmentos de alma. ¿Deseas copiar el patrón en tu propio diario?"] = "2e4d9884e93c29c98746aa5d29d39c35",
		["El diario de Jandice Barov está lleno de calumnias y sandeces sobre los no-muertos. Ya casi al final del libro, se encuentra lo que parece ser un patrón de costura para confeccionar una bolsa de tela de inferi. Esta bolsa la utilizan los brujos para guardar fragmentos de alma. Ya sabes cómo confeccionar esta bolsa."] = "36abb8fc0a6fcba22ad534dedab0826c"
	},
	[180574] = {
		["Las cenizas del Hombre de Mimbre en llamas irradian poder mágico."] = "28dd5a31538999b63e73fb2d316c92e0",
		["Las cenizas del Hombre de Mimbre en llamas irradian poder mágico. Ya te has embadurnado la cara con las cenizas."] = "9fde842505ae51e2e9603bb246e83c36"
	},
	[177226] = {
		["El contenido de las páginas de este tomo parece sufrir continuos cambios. Sientes como si el libro absorbiera los pensamientos de tu mente."] = "91179f4a7cd672e7c6902020e8567c29"
	},
	[2076] = {
		["Este caldero se agita con burbujas verdes y espesas.  Cráneos, huesos y órganos de criaturas desconocidas nadan en su viscoso caldo...$B$BAY suben perezosamente a la superficie los cráneos de dos, antaño poderosos trolls:$B$BGan'zulah y Nezzliok."] = "e2a6c270301c181b6c1842c0f1642d01"
	},
	[2713] = {
		["Este tablero de madera contiene carteles de se busca confeccionados toscamente."] = "579f81628d1a733b0ce65a03da79fa94"
	},
	[1738] = {
		["Esta colección de pergaminos contiene diversa información logística y estratégica, así como correspondencias codificadas."] = "123d940c52a3286b7fe6e73378e8284c"
	},
	[138492] = {
		["Estos fragmentos brillan con un fulgor antinatural.  Está claro que esconden un profundo poder en su interior."] = "0bb4ea429a6648cd1a3a092485b0d1df"
	},
	[1740] = {
		["Esta colección de pergaminos contiene diversa información logística y estratégica, así como correspondencias codificadas."] = "123d940c52a3286b7fe6e73378e8284c"
	},
	[142487] = {
		["Ante usted se encuentra un artilugio de aspecto salvaje con una sencilla placa que anuncia el nombre del dispositivo: 'El Destellamatic 5200'. La máquina parece estar diseñada para hacer que los artículos vuelvan a ser brillantes y nuevos."] = "8030f26db9332fe8f6471b48dd9c8dd0"
	}
}
