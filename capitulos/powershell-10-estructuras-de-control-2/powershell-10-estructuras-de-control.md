footer: © ADD Costa Tropical 2020 - Power Shell
slidenumbers: true
autoscale: true

<!-- slide-transition: true -->

## Power Shell Cap. 10

### Estructuras de control de flujo II

![](WindowsPowerShell.jpg)

---

## Capítulo anterior (9) vimos

- Estructuras de control
- ¿Por qué son necesarias?
- Instrucción IF
- Instrucción IF - ELSE
- Instrucción IF - ELSEIF - ELSE

---

## Índice Capítulo 10

- Switch
- Switch - Break
- Switch - Default
- Switch con condicionales

---

## SWITCH al rescate

- Si tenemos múltiples condiciones que evaluar puede ser un infierno
- Sobre todo a la hora de escribir todas las condiciones y casos posibles
- Podemos evaluar casos concretos o incluso condiciones

---

## SWITCH

```powershell
$color = Read-Host "Introduce el color del semáforo (rojo, verde o amarillo):"
switch($color)
{
    'rojo' { Write-Host "No puedes pasar"}
    'amarillo' { Write-Host "Precaución"}
    'verde' { Write-Host "Puedes pasar"}
}
Write-Host "Fin del programa"
```

- Si el usuario no mete ninguno de los tres colores el programa no hará nada

---

## SWITCH - Break

- La sentencia Break romperá el flujo de la sentencia actual y seguirá adelante
- Si no la introducimos, switch seguirá evaluando las demás opciones, gastando tiempo de cálculo
- En este ejemplo no tiene mucho sentido, en el que veremos a continuación verás como si

---

## SWITCH - Break II

```powershell
$color = Read-Host "Introduce el color del semáforo (rojo, verde o amarillo):"
switch($color)
{
    'rojo' {
        Write-Host "No puedes pasar"
        Break
    }
    'amarillo' {
        Write-Host "Precaución"
        Break
    }
    'verde' {
        Write-Host "Puedes pasar"
        Break
    }
}
Write-Host "Fin del programa"
```

---

## SWITCH - Default

- Switch ejecutará el bloque Default si ningún caso se ha ejecutado con éxito

```powershell
$color = Read-Host "Introduce el color del semáforo (rojo, verde o amarillo):"
switch($color)
{
    'rojo' {
        Write-Host "No puedes pasar"
        Break
    }
    'amarillo' {
        Write-Host "Precaución"
        Break
    }
    'verde' {
        Write-Host "Puedes pasar"
        Break
    }
    default{
        Write-Host "Color no válido"
    }
}
Write-Host "Fin del programa"
```

---

## SWITCH - Con condiciones

- Además de casos concretos, Switch es capaz de evaluar condiciones para cada uno de los casos
- Vamos a replicar el if-elseif-else anterior con un Switch
- Hay que tener en cuenta, que en las condiciones el valor $_ será sustituido por el valor de la variable que estamos evaluando
- Veámoslo en el ejemplo

---

## SWITCH - Con condiciones II

```powershell
[int]$edad = Read-Host "Introduce tu edad"
switch($edad)
{
    {$_ -gt 18} {
        Write-Host "Eres mayor de edad"
        Break
    }
    {$_ -lt 18 -And $_ -ge 13} {
        Write-Host "Eres adolescente"
        Break
    }
    default{
        Write-Host "Eres todavía pequeño"
    }
}
Write-Host "Fin del programa"
```

---

## SWITCH - La importancia del Break

```powershell
[int]$nota = Read-Host "Introduce tu nota"
switch($nota)
{
    {$_ -gt 8} {
        Write-Host "Sobresaliente"
    }
    {$_ -ge 7} {
        Write-Host "Notable"
    }
    {$_ -ge 6} {
        Write-Host "Bien"
    }
    {$_ -ge 5} {
        Write-Host "Suficiente"
    }
    default{
        Write-Host "Suspenso"
    }
}
Write-Host "Fin del programa"
```

---

## SWITCH - Bola extra

- Operador -in y .. para intervalos

```powershell
[int]$nota = Read-Host "Introduce tu nota"
switch($nota)
{
    {$_ -in 5..10} {
        Write-Host "Aprobado"
        Break
    }
    {$_ -in 0..4} {
        Write-Host "Suspenso"
        Break
    }
    default{
        Write-Host "Nota no válida"
    }
}
Write-Host "Fin del programa"
```

---

![](https://media.giphy.com/media/26BRzQS5HXcEWM7du/giphy.gif)

# Preguntas y respuestas

No tengas miedo, es gratis :smile:

---

## ADD Costa Tropical

- https://addcostatropical.org
- Youtube => ADD Costa Tropical
- Instagram personal: @bienvenidosaez
- Instagram ADD: @addcostatropical
- #somosadd

---

## ADD Costa Tropical

- Investiga, aprende y comparte

## Gracias

- Un placer compartir con vosotros
