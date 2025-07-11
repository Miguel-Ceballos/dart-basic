// Es una promesa de que prontro tendras un valor
void main(){
  print('Inicio del programa');

  getHttp('https://migueceb.dev').then((value){
    print(value);
  }).catchError( (err) {
    print('Error: $err');
  });

  print('Fin del programa');
}

Future<String> getHttp(String url){

  return Future.delayed( const Duration(seconds: 3), () {
    throw 'Error en la peticion http';
    // return 'Respuesta de la peticion http';
  });
}