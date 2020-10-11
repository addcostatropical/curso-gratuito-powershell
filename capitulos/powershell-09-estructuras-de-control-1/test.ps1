[int]$nota = Read-Host "Introduce tu nota"
switch($nota)
{
    {$_ -gt 8} {
        Write-Host "Sobresaliente"
        Break
    }
    {$_ -ge 7} {
        Write-Host "Notable"
        Break
    }
    {$_ -ge 6} {
        Write-Host "Bien"
        Break
    }
    {$_ -ge 5} {
        Write-Host "Suficiente"
        Break
    }
    default{
        Write-Host "Suspenso"
    }
}
Write-Host "Fin del programa"