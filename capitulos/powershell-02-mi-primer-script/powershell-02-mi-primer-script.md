footer: © ADD Costa Tropical 2020 - Power Shell
slidenumbers: true
autoscale: true
<!-- slide-transition: true -->

## Power Shell Cap. 2

### Mi primer script

![](WindowsPowerShell.jpg)

---

## Antes de empezar

- Seguridad de ejecución de scripts
- Debido a su potencia, debe ser controlado
- Usuarios sin experiencia

---

## Cuatro niveles de permisividad

- **Restricted:** En este nivel no se permite la ejecución de scripts. Es decir. PowerShell sólo puede utilizarse en modo interactivo. Esta es la opción predeterminada.
- **AllSigned:** Cuando esta sea la opción elegida, deberán estar autenticados todos los scripts, antes de poder ejecutarlos. Es la opción más restrictiva
- **RemoteSigned:** En este caso, sólo deberán estar autenticados los scripts que procedan de una ubicación remota. Por ejemplo, los que hayan sido descargados.
- **Unrestricted:** Si elegimos esta opción, se ejecutará cualquier script sin importar su origen. Se trata de la opción menos recomendada.

---

## Status de permisividad y cambio

- Para saber qué política tenemos actualmente

```powershell
Get-ExecutionPolicy
```

- Para cambiar la política, siempre ejecutando Power Shell como administrador


```powershell
Set-ExecutionPolicy RemoteSigned
```

---

## Editor de texto plano

- Editor sin formato
- Bloc de notas, Sublime Text, VS Code, Notepad ++
- nano, pico ...
- Power Shell ISE
- Extensión de archivos

---

![right](WindowsPowerShell.jpg)

## Hola mundo

- Nuestro primer script realizará una impresión en pantalla de la famosa frase "Hola Mundo"
- Para ello usaremos la instrucción *Write-Host*
- Guardaremos el archivo en una ubicación conocida, con la extensión .ps1

```powershell
Write-Host "Hola Mundo"
Write-Host "Esto es ADD Costa Tropical"
```

---

## ¿Cómo lo ejecutamos?

- Doble click
- Desde Power Shell
- ./holamundo.ps1 [*]
- ¿Qué es el path?

---

## ¿Cómo lo ejecutamos? II

![inline](holamundo_exec.png)

---

## ¿Cómo lo ejecutamos? III

- Creación de script desde el ISE
- Ejecución desde el ISE
- Apertura de scripts desde el ISE

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
