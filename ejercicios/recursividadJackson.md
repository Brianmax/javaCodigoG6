# Recursividad en serializacion de objetos

Esto pasa cuando se tiene un objeto que tiene una referencia a otro objeto que a su vez tiene una referencia al objeto original. Por ejemplo, si se tiene una clase `Persona` que tiene una referencia a otra clase `Direccion` y esta tiene una referencia a la clase `Persona`. 

```java
class Persona {
    String nombre;
    Direccion direccion;
}

class Direccion {
    String calle;
    Persona persona;
}
```

Si se intenta serializar un objeto de la clase `Persona` se va a generar un error de stack overflow. Esto se debe a que al intentar serializar el objeto `Persona` se intenta serializar el objeto `Direccion` que a su vez intenta serializar el objeto `Persona` y así sucesivamente.

Para evitar esto Jackson provee la anotación `@JsonManagedReference` y `@JsonBackReference`. La anotación `@JsonManagedReference` se coloca en la clase que tiene la referencia a otra clase y la anotación `@JsonBackReference` se coloca en la clase que es referenciada.

```java

class Persona {
    String nombre;
    @JsonManagedReference
    Direccion direccion;
}

class Direccion {
    String calle;
    @JsonBackReference
    Persona persona;
}
```

De esta forma Jackson sabe que no debe serializar la clase `Persona` cuando se serializa la clase `Direccion` y viceversa.

Veamos como lo hariamos con las siguientes clases:

```java
public class VentaEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "venta_id")
    private Long id;
    private Date fecha;
    private double total;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "cliente_id")
    private ClienteEntity cliente;

    @OneToMany(mappedBy = "venta", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<VentaDetalleEntity> ventaDetalles = new ArrayList<>();
}

```

```java
public class VentaDetalleEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ventaDetalle_id")
    private Long id;
    private Long cantidad;
    private double precio;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "venta_id")
    private VentaEntity venta;

    //hay multiples ventas detalles para un mismo producto
    @ManyToOne
    @JoinColumn(name = "producto_id")
    private ProductoEntity producto;
}
```

Podriamos decir que la clase `VentaEntity` es la clase padre y la clase `VentaDetalleEntity` es la clase hija. Entonces en la clase padre colocamos la anotacion `@JsonManagedReference` y en la clase hija colocamos la anotacion `@JsonBackReference`.

```java

public class VentaEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "venta_id")
    private Long id;
    private Date fecha;
    private double total;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "cliente_id")
    private ClienteEntity cliente;

    @OneToMany(mappedBy = "venta", cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonManagedReference
    private List<VentaDetalleEntity> ventaDetalles = new ArrayList<>();
}

```

```java

public class VentaDetalleEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ventaDetalle_id")
    private Long id;
    private Long cantidad;
    private double precio;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "venta_id")
    @JsonBackReference
    private VentaEntity venta;

    //hay multiples ventas detalles para un mismo producto
    @ManyToOne
    @JoinColumn(name = "producto_id")
    private ProductoEntity producto;
}
```

De esta forma evitamos el stack overflow al serializar los objetos.