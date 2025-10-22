# Guía de Contribución

¡Gracias por tu interés en contribuir a este proyecto! Esta guía te ayudará a comenzar.

## Tabla de Contenidos

- [Código de Conducta](#código-de-conducta)
- [Cómo Empezar](#cómo-empezar)
- [Proceso de Desarrollo](#proceso-de-desarrollo)
- [Estilo de Código](#estilo-de-código)
- [Pruebas](#pruebas)
- [Envío de Pull Requests](#envío-de-pull-requests)
- [Reporte de Problemas](#reporte-de-problemas)

## Código de Conducta

Al participar en este proyecto, te comprometes a mantener un ambiente respetuoso y acogedor para todos los colaboradores.

## Cómo Empezar

### Requisitos Previos

- Ruby instalado en tu sistema
- Git para control de versiones
- Un editor de texto o IDE de tu preferencia

### Configuración del Entorno

1. Haz un fork del repositorio
2. Clona tu fork localmente:
   ```bash
   git clone https://github.com/tu-usuario/testing.git
   cd testing
   ```
3. Crea una rama para tu característica o corrección:
   ```bash
   git checkout -b mi-nueva-caracteristica
   ```

## Proceso de Desarrollo

1. **Planifica tu cambio**: Antes de comenzar a codificar, asegúrate de entender el problema que estás resolviendo
2. **Escribe código limpio**: Sigue las convenciones de estilo de Ruby
3. **Prueba tu código**: Ejecuta las pruebas existentes y añade nuevas si es necesario
4. **Documenta tus cambios**: Actualiza la documentación si tu cambio lo requiere

## Estilo de Código

### Convenciones de Ruby

- Usa 2 espacios para indentación (no tabs)
- Mantén las líneas de código con un máximo de 80 caracteres cuando sea posible
- Usa nombres descriptivos para variables y métodos
- Sigue las convenciones de nomenclatura de Ruby:
  - `snake_case` para métodos y variables
  - `CamelCase` para clases y módulos
  - `SCREAMING_SNAKE_CASE` para constantes

### Reglas Específicas del Proyecto

- **No uses `puts` en el código de producción**: El proyecto tiene pruebas que verifican la ausencia de declaraciones `puts`
- **No uses `binding.pry`**: Las declaraciones de depuración no deben incluirse en el código final
- Usa `attr_accessor`, `attr_reader`, o `attr_writer` según sea apropiado

### Ejemplo de Código

```ruby
class Alpaca
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def make_sound
    "Alpaca #{@name} says 'Mmmm!'"
  end
end
```

## Pruebas

### Ejecutar las Pruebas

Para ejecutar las pruebas del proyecto:

```bash
ruby alpaca_test.rb
```

### Escribir Nuevas Pruebas

Si añades nuevas funcionalidades, asegúrate de incluir pruebas que verifiquen:
- El comportamiento esperado de tu código
- Los casos extremos y condiciones de error
- Que no se han introducido declaraciones `puts` o `binding.pry`

## Envío de Pull Requests

### Antes de Enviar

1. Asegúrate de que todas las pruebas pasen
2. Revisa tu código para eliminar:
   - Declaraciones `puts` de depuración
   - Declaraciones `binding.pry`
   - Código comentado innecesario
   - Espacios en blanco al final de las líneas
3. Actualiza la documentación si es necesario

### Proceso de Pull Request

1. Empuja tu rama a tu fork:
   ```bash
   git push origin mi-nueva-caracteristica
   ```
2. Abre un Pull Request desde tu fork hacia el repositorio principal
3. Proporciona una descripción clara de tus cambios:
   - ¿Qué problema resuelve tu PR?
   - ¿Cómo lo probaste?
   - ¿Hay alguna consideración especial?

### Plantilla de Pull Request

```markdown
## Descripción
[Descripción breve de los cambios]

## Tipo de Cambio
- [ ] Corrección de error (bug fix)
- [ ] Nueva característica (feature)
- [ ] Cambio que rompe compatibilidad (breaking change)
- [ ] Actualización de documentación

## ¿Cómo se ha probado?
[Describe las pruebas que ejecutaste]

## Lista de Verificación
- [ ] Mi código sigue el estilo del proyecto
- [ ] He realizado una auto-revisión de mi código
- [ ] He comentado mi código en áreas difíciles de entender
- [ ] He actualizado la documentación correspondiente
- [ ] Mis cambios no generan nuevas advertencias
- [ ] He añadido pruebas que demuestran que mi corrección es efectiva
- [ ] Las pruebas unitarias nuevas y existentes pasan localmente
```

## Reporte de Problemas

### Antes de Reportar un Problema

1. Busca en los issues existentes para ver si el problema ya ha sido reportado
2. Asegúrate de estar usando la última versión del código
3. Intenta reproducir el problema de manera consistente

### Creando un Buen Reporte de Problema

Un buen reporte de problema debe incluir:

1. **Título claro y descriptivo**
2. **Descripción detallada**:
   - ¿Qué estabas intentando hacer?
   - ¿Qué esperabas que sucediera?
   - ¿Qué sucedió en realidad?
3. **Pasos para reproducir**:
   ```
   1. Ve a '...'
   2. Ejecuta '...'
   3. Observa el error
   ```
4. **Información del entorno**:
   - Versión de Ruby
   - Sistema operativo
   - Cualquier otra información relevante
5. **Logs o mensajes de error** (si aplica)

### Plantilla de Issue

```markdown
## Descripción del Problema
[Descripción clara y concisa del problema]

## Pasos para Reproducir
1.
2.
3.

## Comportamiento Esperado
[Qué esperabas que sucediera]

## Comportamiento Actual
[Qué sucedió en realidad]

## Entorno
- Versión de Ruby:
- Sistema Operativo:
- Otra información relevante:

## Información Adicional
[Cualquier otro contexto, capturas de pantalla, o logs]
```

## Preguntas

Si tienes preguntas que no están cubiertas en esta guía, no dudes en:
- Abrir un issue con tu pregunta
- Contactar a los mantenedores del proyecto

## Agradecimientos

¡Gracias por contribuir! Cada contribución, grande o pequeña, es valiosa y apreciada. 🦙
