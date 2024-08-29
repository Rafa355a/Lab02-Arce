class Producto {
  String nombre;
  double precio;
  String categoria;
  Producto({required this.nombre, required this.precio, required this.categoria});
  void mostrarDetalles() {
    print('Producto: $nombre');
    print('Precio: \$${precio.toStringAsFixed(2)}');
    print('Categoría: $categoria');
  }
}

class Electronico extends Producto {
  int garantia;
  Electronico({
    required String nombre,
    required double precio,
    required String categoria,
    required this.garantia,
  }) : super(nombre: nombre, precio: precio, categoria: categoria);
  @override
  void mostrarDetalles() {
    super.mostrarDetalles();
    print('Garantía de : $garantia meses');
  }
}

// Parte 3: Clases Abstractas
abstract class EmpleadoTienda {
  String nombre;
  int horasTrabajadas;
  
  EmpleadoTienda(this.nombre, this.horasTrabajadas);
  
  double calcularSalario();
  
  void mostrarDetalles() {
    print('Nombre: $nombre');
    print('Horas trabajadas: $horasTrabajadas');
    print('Salario: \$${calcularSalario().toStringAsFixed(2)}');
  }
}

class Vendedor extends EmpleadoTienda {
  final double tasaPorHora = 10.0;
  
  Vendedor(String nombre, int horasTrabajadas) : super(nombre, horasTrabajadas);
  
  @override
  double calcularSalario() {
    return horasTrabajadas * tasaPorHora;
  }
}

class Cajero extends EmpleadoTienda {
  final double tasaPorHora = 8.5;
  
  Cajero(String nombre, int horasTrabajadas) : super(nombre, horasTrabajadas);
  
  @override
  double calcularSalario() {
    return horasTrabajadas * tasaPorHora;
  }
}

void main() {
  Electronico laptop = Electronico(
    nombre: 'Computadora',
    precio: 999.99,
    categoria: 'Electrónicos',
    garantia: 36,
  );
  laptop.mostrarDetalles();
  
  print('\n---\n');
  
  // Prueba de la Parte 3
  Vendedor vendedor = Vendedor('Rafael', 40);
  Cajero cajero = Cajero('Arce', 35);
  
  print('Detalles del Vendedor:');
  vendedor.mostrarDetalles();
  
  print('\nDetalles del Cajero:');
  cajero.mostrarDetalles();
}