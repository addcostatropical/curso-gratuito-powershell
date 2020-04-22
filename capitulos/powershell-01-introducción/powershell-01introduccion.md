footer: © ADD Costa Tropical 2020 - Power Shell
slidenumbers: true
autoscale: true
<!-- slide-transition: true -->

## Power Shell Cap. 1

### Scripting en sistemas Windows

![](WindowsPowerShell.jpg)

---

## ¿Para quien es esta serie?

- Futuros administradores de sistemas
- Gente que programe por primera vez
- Alumnos de SMR, ASIR, DAW o DAM
- Alumnos de primero de carrera

---

## Índice

- Introducción
- Primeros pasos e IDE
- Variables en Power Shell
- Operaciones Básicas
- Estructuras condicionales
- Estructuras repetitivas
- Variables para almacenar múltiples valores
- Rsolución de ejercicios

---

## Introducción

- MS-DOS interfaz de comandos como primera interfaz de usuario
- Herencia de esta consola en las diferentes versiones de windows
- Archivos de procesos por lotes, ficheros .BAT lenguaje arcáico
- Suplicio a la hora de debuguear y a la hora de compatibilidad

---

![right](WindowsPowerShell.jpg)

## ¿Qué es Power Shell? I

- 2006 lanza una nueva interfaz de consola con un grupo de órdenes actuales
- Se pueden crear scripts sin que sean archivos de proceso por lotes
- Comparte estructura de PERL, un lenguaje de alto nivel
- Comenzó llamándose Monas, pero al final se denominó como Power Shell

---

![right](WindowsPowerShell.jpg)

## ¿Qué es Power Shell? II

- Requiere Microsoft .NET framework
- Desde 2016 Microsoft publicó en Github el código para que pudiera integrarse con sistemas GNU/Linux y MAC OSX
- Las ordenes incluidas en Power Shell son muchas, y reciben el nombre de **cmdlets**

---

## ¿Cómo ejecutar Power Shell?

- Interfaz de comandos Power Shell
- Windows Power Shell ISE
- Ejecución de archivos .ps1

---

## Primer comando

- Saber el número de comandos disponibles en Power shell

```powershell
Get-Command -CommandType cmdlet | Measure-Object
```

- Ejecución con permisos de administrador para ciertas tareas

---

## Más comandos simples

- Dispondremos de la mayoría de utilidades que ya teníamos en la consola de Windows
- dir > Get-ChildItem > Ambos funcionan

```powershell
Get-ChildItem
```

- Lo que hemos hecho con el comando dir es sólo una prueba, pero existe un gran número de comandos antiguos que siguen funcionando perfectamente en PowerShell.

---

### Ayuda sobre comandos

- Para saber la sintaxis completa de un comando: Get-Help

```powershell
Get-Help Get-ChildItem
```

- Si necesitamos más ayuda y ejemplos del comando, disponemos de la ayuda online

```powershell
Get-Help -Online Get-ChildItem
```

---

### Ayuda sobre comandos II

- Podemos descargar la ayuda online en local con: 

```powershell
Update-Help -Module Microsoft.PowerShell*
```

- Si ahora solicitamos la ayuda de Get-ChildItem, esta será mucho más completa

```powershell
Get-Help Get-ChildItem -Detailed
```

---

### Ayuda sobre comandos III

- Incluso obtener ejemplos de uso del comando

```powershell
Get-Help Get-ChildItem -Examples
```

- Si queremos saber la información detallada de cada argumento del comando 

```powershell
Get-Help Get-ChildItem -Full
```

---

### Estructura de comandos

- Los nombres de todos los cmdlets siguen un patrón común, formado por un verbo, un guión y un nombre en singular. De este modo será mucho más fácil recordarlos.
- PowerShell no distingue entre mayúsculas y minúsculas
- Dispone de autocompletado si usamos el ISE
- Argumentos  y Operandos
- Opcionales y obligatorios
- Ejemplo cp -R origen destino

---

![](ise.png)

## [fit]Windows Power Shell ISE
## [fit]Ruta guiada

---

![fit](ise.png)

---

## [fit]Redirecciones y Tuberías

---

![](https://media.giphy.com/media/26BRzQS5HXcEWM7du/giphy.gif)
# Preguntas y respuestas
No tengas miedo, es gratis :smile:

---

## ADD Costa Tropical

- https://addcostatropical.org
- Youtube => ADD Costa Tropical
- @addcostatropical
- #somosadd
- Facebook
- Instagram

---

## ADD Costa Tropical
- Investiga, aprende y comparte

## Gracias
- Un placer compartir con vosotros
