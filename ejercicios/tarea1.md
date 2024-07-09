# Ejercicio 1

Crear una clase `Dog` con los siguientes atributos:

- `breed` de tipo `String`
- `age` de tipo `int`
- `color` de tipo `String`

Crear un constructor que reciba los tres atributos y los asigne a los atributos de la clase.

Crear una clase `Main` con un método `main` que cree un objeto de tipo `Dog` e imprima sus atributos.

## Ejercicio 2

Crear una clase `Computer` con los siguientes atributos:

- `brand` de tipo `String`
- `model` de tipo `String`
- `ram` de tipo `int`
- `storage` de tipo `int`

Crear un constructor que reciba los cuatro atributos y los asigne a los atributos de la clase.

- Crear metodos para poder imprimir la informacion de la computadora.
- Crear metodos para poder aumentar la memoria ram y el almacenamiento.

## Ejercicio 3

Crear una clase `ComputerStore` con los siguientes atributos:

- `computers` de tipo `ArrayList<Computer>`
- `name` de tipo `String`
- `address` de tipo `String`
- `quantity` de tipo `int`

Crear un constructor que reciba los tres atributos y los asigne a los atributos de la clase.

- Crear un metodo para agregar computadoras a la tienda.
- Crear un metodo para imprimir la informacion de la tienda.
- Crear un metodo para poder vender una computadora.
- Crear un metodo para poder imprimir la cantidad de computadoras en la tienda.
- Crear un metodo para poder filtrar las computadoras con mas de cierta cantidad de memoria ram.

## Ejericicio 4

## Descripción

Desarrollar un sistema de gestión para la renta de películas, utilizando principios de programación orientada a objetos como la herencia y el polimorfismo.

## Clases

### `RentalItem`
- **Descripción**: Clase base para ítems en el sistema de renta.
- **Atributos privados**:
  - `itemName`: Nombre del ítem.
  - `itemID`: ID único del ítem.
  - `available`: Atributo que indica si el ítem está disponible para renta.
- **Métodos**:
  - Getters y setters para los atributos.
  - `showDetails()`: Método para mostrar los detalles del ítem.

### `Movie` (hereda de `RentalItem`)
- **Descripción**: Representa una película disponible para renta.
- **Atributos privados adicionales**:
  - `director`: Director de la película.
  - `duration`: Duración de la película.
  - `ageRating`: Clasificación por edades.
  - `genre`: Género de la película.
- **Métodos**:
  - Constructores, getters y setters para los nuevos atributos.
  - Sobrescritura del método `showDetails()` para incluir detalles adicionales de la película.

### `Customer`
- **Descripción**: Representa a un cliente del sistema de renta.
- **Atributos privados**:
  - `customerName`: Nombre del cliente.
  - `customerID`: ID del cliente.
  - `rentedMovies`: Lista de películas rentadas por el cliente.
- **Métodos**:
  - Getters y setters para los atributos.
  - `showCustomerDetails()`: Método para mostrar los detalles del cliente.

### `MovieRentalSystem`
- **Descripción**: Representa el sistema de renta de películas y maneja todos los ítems de renta.
- **Atributos**:
  - `rentalItems`: Colección de `RentalItems`.
  - `customers`: Lista de clientes registrados.
- **Métodos**:
  - `addItem()`: Añadir nuevos ítems al sistema.
  - `registerCustomer()`: Registrar un nuevo cliente.
  - `rentMovieToCustomer()`: Rentar una película a un cliente.
  - `returnMovie()`: Procesar la devolución de una película rentada.
  - `showAllItems()`: Mostrar todos los ítems disponibles para renta.
  - `showAllCustomers()`: Mostrar todos los clientes registrados.


## Ejercicio 5

Crear una clase `BankAccount` con los siguientes atributos:

- `accountNumber` de tipo `String`
- `balance` de tipo `double`
- `customer` de tipo `String`

Crear un constructor que reciba los tres atributos y los asigne a los atributos de la clase.

- Crear metodos para poder imprimir la informacion de la cuenta.

Crear una clase `Bank` con los siguientes atributos:

- `accounts` de tipo `ArrayList<BankAccount>`

Crear un constructor que reciba el atributo y lo asigne a los atributos de la clase.

- Crear un metodo para agregar cuentas al banco.

- Crear un metodo para imprimir la informacion de las cuentas.

- Crear un metodo para poder realizar un deposito a una cuenta.

- Crear un metodo para poder realizar un retiro a una cuenta.

- Crear un metodo para poder realizar una transferencia entre cuentas.

- Crear un metodo para poder imprimir la cantidad de cuentas en el banco.

- Crear un metodo para poder imprimir la cantidad total de dinero en el banco.