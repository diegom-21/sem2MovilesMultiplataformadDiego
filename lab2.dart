class Profesor {
  String dni;
  String nombre;
  double sbruto;

  // Constructor 1: profesor(dni, nombre)
  Profesor(this.dni, this.nombre, {this.sbruto = 0});

  // Constructor 2: profesor(sueldo)
  Profesor.sueldo(this.sbruto) : dni = '', nombre = '';

  // Método ToString
  @override
  String toString() {
    return 'Nombre: $nombre, DNI: $dni, Sueldo Bruto: S/.$sbruto';
  }

  double calcuNeto() {
    return sbruto * 0.92;
  }
}

void main() {
  // Crear objetos profesor
  Profesor p1 = Profesor('65278911', 'Diego', sbruto: 3000);
  Profesor p2 = Profesor.sueldo(3500);

  // Modificar atributos del profesor p2
  p2.dni = '61203588';
  p2.nombre = 'Sumiko';

  // Imprimir Info
  print(p1.toString());
  print('Sueldo Neto de Profesor 1: S/.${p1.calcuNeto()}');
  print("---------------------------------------------------------------------------");
  print(p2.toString());
  print('Sueldo Neto de Profesor 2: S/.${p2.calcuNeto()}');
}



