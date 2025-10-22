# Proyecto Alpaca 🦙

## Descripción

Este es un proyecto en Ruby que modela una clase Alpaca (alpaca en español) con diversas propiedades y comportamientos. Una alpaca es un adorable mamífero sudamericano conocido por su suave lana.

## Características

La clase `Alpaca` incluye las siguientes propiedades:
- **nombre** (name): El nombre de la alpaca
- **edad** (age): La edad de la alpaca
- **color** (color): El color de la alpaca
- **longitud_lana** (wool_length): La longitud de la lana en centímetros

## Funcionalidades

### Métodos disponibles:

1. **alimentar** (`feed`): Alimenta a la alpaca con comida
   ```ruby
   alpaca.feed("hierba")
   # Salida: "Alpaca [nombre] is eating hierba."
   ```

2. **hacer_sonido** (`make_sound`): La alpaca hace su sonido característico
   ```ruby
   alpaca.make_sound
   # Salida: "Alpaca [nombre] says 'Mmmm!'"
   ```

3. **mostrar_información** (`display_info`): Muestra toda la información de la alpaca
   ```ruby
   alpaca.display_info
   # Salida: "Name: [nombre], Age: [edad], Color: [color], Wool Length: [longitud] cm"
   ```

## Uso

### Ejemplo básico:

```ruby
# Crear una nueva alpaca
mi_alpaca = Alpaca.new("Pelusa", 3, "blanco", 15)

# Alimentar la alpaca
puts mi_alpaca.feed("pasto")

# Hacer que la alpaca haga un sonido
puts mi_alpaca.make_sound

# Mostrar información de la alpaca
puts mi_alpaca.display_info
```

## Estructura del Proyecto

```
.
├── alpaca.rb          # Clase principal Alpaca
├── alpaca_test.rb     # Pruebas y verificaciones
└── alpaca.jpg         # Imagen de una alpaca
```

## Pruebas

El archivo `alpaca_test.rb` incluye validaciones para asegurar la calidad del código:
- Verifica que no haya declaraciones `puts` en el código de producción
- Verifica que no haya declaraciones `binding.pry` en el código de producción

Para ejecutar las pruebas:
```bash
ruby alpaca_test.rb
```

## Requisitos

- Ruby (versión recomendada: 2.5 o superior)

## Contribuir

Las contribuciones son bienvenidas. Por favor, asegúrate de que tu código:
- No incluya declaraciones `puts` innecesarias
- No incluya declaraciones `binding.pry` de depuración
- Mantenga el estilo y formato del código existente

## Licencia

Este proyecto está disponible como código abierto.

---

¡Disfruta programando con alpacas! 🦙✨
