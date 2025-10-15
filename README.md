# Quiz Matemático en Bash

**Estudiantes:**
- Juan Pablo Parra
- Juan Esteban Eraso 
- Daniel Gonzalez 

## Descripción
Quiz matemático interactivo en Bash que genera problemas aleatorios de suma, resta, multiplicación y división.

## Estructura del Proyecto
```
Quiz-Matematico-Bash/
├── menu.sh      # menú interactivo de opciones matemáticas y salida.
├── suma.sh      # Genera dos números aleatorios (0-100), presenta un problema de suma al usuario, valida la respuesta y otorga 3 intentos antes de mostrar la solución correcta.
├── resta.sh     # Genera dos números aleatorios (0-100), asegura que el primero sea mayor para evitar resultados negativos, presenta un problema de resta y otorga 3 intentos.
├── multi.sh     # Genera dos números aleatorios (0-100 y 0-10 respectivamente), presenta un problema de multiplicación al usuario, valida la respuesta y otorga 3 intentos.
├── divi.sh      # Genera dos números aleatorios (1-10), calcula un dividendo como su producto para garantizar división exacta sin decimales, presenta el problema y otorga 3 intentos.

```


## Cómo Ejecutar

1. **Dar permisos de ejecución:**
   ```bash
   chmod +x *.sh
   ```

3. **Ejecutar el programa:**
   ```bash
   ./menu.sh
   ```
