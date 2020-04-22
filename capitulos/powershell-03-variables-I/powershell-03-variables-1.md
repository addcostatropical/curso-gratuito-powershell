footer: © ADD Costa Tropical 2020 - Power Shell
slidenumbers: true
autoscale: true
<!-- slide-transition: true -->

## Power Shell Cap. 3

### Variables I: Definición y uso

![](WindowsPowerShell.jpg)

---

## Concepto de variable

- Zona de memoria con nombre
- Ahí podemos escribir y leer
- Memoria reservada para nuestro programa / scripts
- Protección SO
- Nombres únicos e inalterables

---

## Concepto de variable II

- El primer carácter debe ser siempre un símbolo de dólar ($)
- Después, podemos utilizar cualquier combinación de letras, números o símbolos.
- También pueden utilizarse espacios en blanco pero, en este caso, el nombre debe ir rodeado por símbolos de llaves ({})
- **Totalmente desaconsejado**

---

## Concepto de variable III

- Nuestra primera variable

```powershell
$nombre = "ADD Costa Tropical"
```

- Operador asignación
- Los valores de texto se encierran entre comillas para indicar donde empiezan y donde acaban

---

## Ejemplos de nombres de variable

- $nombre
- $Edad
- ${Resultado 1}

### **Modo implícito de creación**

---

## Modo explícito

- Usando el cmdlet **New-Variable**

```powershell
New-Variable $nombre
```

- O también

```powershell
New-Variable -Name $nombre
```

- Con valor

```powershell
New-Variable -Name $nombre -Value "ADD Costa Tropical"
```

---

## Constantes

- Las constantes son variables que no cambian su valor en tiempo de ejecución
- Si lo intentamos, nos saltará un error

```powershell
New-Variable -Name $nombre -Value "ADD Costa Tropical" -Option ReadHonly
```

- Ejemplo de uso: iva, pi...

---

## New-Variable

- New-Variable
   [-Name] <String>
   [[-Value] <Object>]
   [-Description <String>]
   [-Option <ScopedItemOptions>]
   [-Visibility <SessionStateEntryVisibility>]
   [-Force]
   [-PassThru]
   [-Scope <String>]
   [-WhatIf]
   [-Confirm]
   [<CommonParameters>]

---

## Get-Variable

- Si queremos sacar un listado de las variables definidas
- Variables de entorno
- Ejemplo en Power Shell

---

## Obtener valores en ejecución: Read-Host

- Petición de valores al usuario

```powershell
$nombre = Read-Host "Cómo te llamas?"
```

- Se almacenará como string, ahora vemos qué es eso
- No usable en scripts autoejecutables

---

## Mostrar información: Write-Host

- Lo utilizaremos para imprimir valores estáticos o variables

```powershell
$nombre = Read-Host "Cómo te llamas?"

Write-Host "Hola"
Write-Host $nombre
```

- Cada instrucción en línea nueva
- Practica con la entrada y salida de información

---

## Tipos de dato

- Existen diferentes tipos de dato en Power Shell
- Como es un tema extenso y que hay que entenderlo bien, se merece un video solo para él

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
