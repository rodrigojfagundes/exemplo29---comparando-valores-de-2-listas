import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//criando uma LISTA/VETOR chamado VALORES com 3 valores...
  var valores = ['Rodrigo', 'Jose', 'Fagundes'];

//criando uma LISTA/VETOR chamado VALORES1 com 3 valores
  var valores1 = ['Rodrigo', 'Jose', 'Fagundes'];

//uma variavel q ira armazer o texto OS VALORES SAO IGUAIS... Caso eles realmente sejam
  var resultado = ['resultado'];

//criando a variavel indice q vai nos ajudar a percorrer a LISTA CIDADES
  var indice = 0;

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //tudo q ta no safe area ta na area visivel do app
        body: SafeArea(
          //column para se quiser poder criar VARIOS CONTAINERS
          child: Column(
            //children é tipo uma lista/vetor de coisas tipo containers
            children: [
              //criando um GestureDetector para verificarmos se teve TOQUE/CLICK na tela
              GestureDetector(
                //se for dado UM click/toque
                onTap: () {
                  //o setstate permite comparar/alterar os valores da LISTA e da variavel resultado
                  setState(() {
                    //verificando SE a LISTA/VETOR "valores" na POSICAO/INDICE 0
                    //tem a mesma INFORMACAO/VALOR q a lista/vetor "VALORES1" na posicao/indice 0
                    if (valores[indice] == valores1[indice]) {
                      //SE tiverem os mesmos valores... a variavel RESULTADO vai receber
                      //o texto "os valores sao iguais"
                      resultado = ['os valores sao iguais'];
                    }
                  });
                },
                //criando container para q o clicar nele executar o q ta no GESTURE DETECT
                //acima
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                  //exibindo o valor q tiver presente na variavel RESULTADO
                  child: Text('$resultado'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
