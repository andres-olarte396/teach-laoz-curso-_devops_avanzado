# Script maestro para generar TODOS los audios del curso DevOps Avanzado
# 42 subtemas en total

Add-Type -AssemblyName System.Speech
$synthesizer = New-Object System.Speech.Synthesis.SpeechSynthesizer

# Intentar usar voz Sabina
try {
    $synthesizer.SelectVoice("Microsoft Sabina Desktop")
    Write-Host "✓ Usando voz Microsoft Sabina Desktop"
}
catch {
    Write-Host "⚠ Voz Sabina no encontrada, usando voz predeterminada"
}

# Función para generar audio
function Generate-Audio {
    param(
        [string]$GuionPath,
        [string]$OutputPath
    )
    
    if (-not (Test-Path $GuionPath)) {
        Write-Host "❌ Guión no encontrado: $GuionPath"
        return
    }
    
    # Leer contenido del guión y extraer solo el texto hablado
    $content = Get-Content $GuionPath -Raw -Encoding UTF8
    
    # Extraer texto de secciones [LOCUTOR]
    $pattern = '\[LOCUTOR\]:\s*([^\[]+)'
    $matches = [regex]::Matches($content, $pattern)
    
    if ($matches.Count -eq 0) {
        Write-Host "⚠ No se encontró contenido de locutor en: $GuionPath"
        # Usar todo el contenido como fallback
        $text = $content -replace '#.*', '' -replace '\*\*', '' -replace '```.*?```', '' -replace '---', ''
    }
    else {
        $text = ($matches | ForEach-Object { $_.Groups[1].Value }) -join " "
    }
    
    # Limpiar texto
    $text = $text -replace '\r?\n', ' ' -replace '\s+', ' ' -replace '^\s+|\s+$', ''
    
    if ($text.Length -lt 10) {
        Write-Host "⚠ Texto muy corto, usando contenido completo"
        $text = $content -replace '#.*?\n', '' -replace '\*\*', '' -replace '```.*?```', '' -replace '---', '' -replace '\[LOCUTOR\]:', ''
        $text = $text -replace '\r?\n', ' ' -replace '\s+', ' ' -replace '^\s+|\s+$', ''
    }
    
    Write-Host "📝 Generando: $OutputPath"
    $synthesizer.SetOutputToWaveFile($OutputPath)
    $synthesizer.Speak($text)
    Write-Host "✅ Completado: $OutputPath"
}

# Crear directorio media si no existe
$mediaDir = ".\media"
if (-not (Test-Path $mediaDir)) {
    New-Item -ItemType Directory -Path $mediaDir | Out-Null
}

Write-Host "`n🎙️  GENERACIÓN DE AUDIO - CURSO DEVOPS AVANZADO`n" -ForegroundColor Cyan
Write-Host "Total de archivos a generar: 42`n" -ForegroundColor Yellow

$totalFiles = 0
$successFiles = 0

# MÓDULO 1: Introducción a DevOps (4 subtemas)
Write-Host "`n=== MÓDULO 1: Introducción a DevOps ===" -ForegroundColor Green

Generate-Audio -GuionPath ".\modulos\modulo_1\tema_1.1_subtema_1.1.1_guion.md" -OutputPath "$mediaDir\modulo_1_tema_1.1_subtema_1.1.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_1\tema_1.1_subtema_1.1.2_guion.md" -OutputPath "$mediaDir\modulo_1_tema_1.1_subtema_1.1.2.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_1\tema_1.2_subtema_1.2.1_guion.md" -OutputPath "$mediaDir\modulo_1_tema_1.2_subtema_1.2.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_1\tema_1.2_subtema_1.2.2_guion.md" -OutputPath "$mediaDir\modulo_1_tema_1.2_subtema_1.2.2.wav"
$totalFiles++; $successFiles++

# MÓDULO 2: Git Avanzado (4 subtemas)
Write-Host "`n=== MÓDULO 2: Git Avanzado ===" -ForegroundColor Green

Generate-Audio -GuionPath ".\modulos\modulo_2\tema_2.1_subtema_2.1.1_guion.md" -OutputPath "$mediaDir\modulo_2_tema_2.1_subtema_2.1.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_2\tema_2.1_subtema_2.1.2_guion.md" -OutputPath "$mediaDir\modulo_2_tema_2.1_subtema_2.1.2.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_2\tema_2.2_subtema_2.2.1_guion.md" -OutputPath "$mediaDir\modulo_2_tema_2.2_subtema_2.2.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_2\tema_2.2_subtema_2.2.2_guion.md" -OutputPath "$mediaDir\modulo_2_tema_2.2_subtema_2.2.2.wav"
$totalFiles++; $successFiles++

# MÓDULO 3: CI/CD Fundamentos (4 subtemas)
Write-Host "`n=== MÓDULO 3: CI/CD Fundamentos ===" -ForegroundColor Green

Generate-Audio -GuionPath ".\modulos\modulo_3\tema_3.1_subtema_3.1.1_guion.md" -OutputPath "$mediaDir\modulo_3_tema_3.1_subtema_3.1.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_3\tema_3.1_subtema_3.1.2_guion.md" -OutputPath "$mediaDir\modulo_3_tema_3.1_subtema_3.1.2.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_3\tema_3.2_subtema_3.2.1_guion.md" -OutputPath "$mediaDir\modulo_3_tema_3.2_subtema_3.2.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_3\tema_3.2_subtema_3.2.2_guion.md" -OutputPath "$mediaDir\modulo_3_tema_3.2_subtema_3.2.2.wav"
$totalFiles++; $successFiles++

# MÓDULO 4: IaC (4 subtemas)
Write-Host "`n=== MÓDULO 4: Infraestructura como Código ===" -ForegroundColor Green

Generate-Audio -GuionPath ".\modulos\modulo_4\tema_4.1_subtema_4.1.1_guion.md" -OutputPath "$mediaDir\modulo_4_tema_4.1_subtema_4.1.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_4\tema_4.1_subtema_4.1.2_guion.md" -OutputPath "$mediaDir\modulo_4_tema_4.1_subtema_4.1.2.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_4\tema_4.2_subtema_4.2.1_guion.md" -OutputPath "$mediaDir\modulo_4_tema_4.2_subtema_4.2.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_4\tema_4.2_subtema_4.2.2_guion.md" -OutputPath "$mediaDir\modulo_4_tema_4.2_subtema_4.2.2.wav"
$totalFiles++; $successFiles++

# MÓDULO 5: Configuración (4 subtemas)
Write-Host "`n=== MÓDULO 5: Configuración y Automatización ===" -ForegroundColor Green

Generate-Audio -GuionPath ".\modulos\modulo_5\tema_5.1_subtema_5.1.1_guion.md" -OutputPath "$mediaDir\modulo_5_tema_5.1_subtema_5.1.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_5\tema_5.1_subtema_5.1.2_guion.md" -OutputPath "$mediaDir\modulo_5_tema_5.1_subtema_5.1.2.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_5\tema_5.2_subtema_5.2.1_guion.md" -OutputPath "$mediaDir\modulo_5_tema_5.2_subtema_5.2.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_5\tema_5.2_subtema_5.2.2_guion.md" -OutputPath "$mediaDir\modulo_5_tema_5.2_subtema_5.2.2.wav"
$totalFiles++; $successFiles++

# MÓDULO 6: Docker (4 subtemas)
Write-Host "`n=== MÓDULO 6: Contenedores (Docker) ===" -ForegroundColor Green

Generate-Audio -GuionPath ".\modulos\modulo_6\tema_6.1_subtema_6.1.1_guion.md" -OutputPath "$mediaDir\modulo_6_tema_6.1_subtema_6.1.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_6\tema_6.1_subtema_6.1.2_guion.md" -OutputPath "$mediaDir\modulo_6_tema_6.1_subtema_6.1.2.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_6\tema_6.2_subtema_6.2.1_guion.md" -OutputPath "$mediaDir\modulo_6_tema_6.2_subtema_6.2.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_6\tema_6.2_subtema_6.2.2_guion.md" -OutputPath "$mediaDir\modulo_6_tema_6.2_subtema_6.2.2.wav"
$totalFiles++; $successFiles++

# MÓDULO 7: Kubernetes (4 subtemas)
Write-Host "`n=== MÓDULO 7: Orquestación (Kubernetes) ===" -ForegroundColor Green

Generate-Audio -GuionPath ".\modulos\modulo_7\tema_7.1_subtema_7.1.1_guion.md" -OutputPath "$mediaDir\modulo_7_tema_7.1_subtema_7.1.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_7\tema_7.1_subtema_7.1.2_guion.md" -OutputPath "$mediaDir\modulo_7_tema_7.1_subtema_7.1.2.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_7\tema_7.2_subtema_7.2.1_guion.md" -OutputPath "$mediaDir\modulo_7_tema_7.2_subtema_7.2.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_7\tema_7.2_subtema_7.2.2_guion.md" -OutputPath "$mediaDir\modulo_7_tema_7.2_subtema_7.2.2.wav"
$totalFiles++; $successFiles++

# MÓDULO 8: Observabilidad (4 subtemas)
Write-Host "`n=== MÓDULO 8: Observabilidad ===" -ForegroundColor Green

Generate-Audio -GuionPath ".\modulos\modulo_8\tema_8.1_subtema_8.1.1_guion.md" -OutputPath "$mediaDir\modulo_8_tema_8.1_subtema_8.1.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_8\tema_8.1_subtema_8.1.2_guion.md" -OutputPath "$mediaDir\modulo_8_tema_8.1_subtema_8.1.2.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_8\tema_8.2_subtema_8.2.1_guion.md" -OutputPath "$mediaDir\modulo_8_tema_8.2_subtema_8.2.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_8\tema_8.2_subtema_8.2.2_guion.md" -OutputPath "$mediaDir\modulo_8_tema_8.2_subtema_8.2.2.wav"
$totalFiles++; $successFiles++

# MÓDULO 9: DevSecOps (4 subtemas)
Write-Host "`n=== MÓDULO 9: Seguridad (DevSecOps) ===" -ForegroundColor Green

Generate-Audio -GuionPath ".\modulos\modulo_9\tema_9.1_subtema_9.1.1_guion.md" -OutputPath "$mediaDir\modulo_9_tema_9.1_subtema_9.1.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_9\tema_9.1_subtema_9.1.2_guion.md" -OutputPath "$mediaDir\modulo_9_tema_9.1_subtema_9.1.2.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_9\tema_9.2_subtema_9.2.1_guion.md" -OutputPath "$mediaDir\modulo_9_tema_9.2_subtema_9.2.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_9\tema_9.2_subtema_9.2.2_guion.md" -OutputPath "$mediaDir\modulo_9_tema_9.2_subtema_9.2.2.wav"
$totalFiles++; $successFiles++

# MÓDULO 10: Cloud (4 subtemas)
Write-Host "`n=== MÓDULO 10: Cloud Native ===" -ForegroundColor Green

Generate-Audio -GuionPath ".\modulos\modulo_10\tema_10.1_subtema_10.1.1_guion.md" -OutputPath "$mediaDir\modulo_10_tema_10.1_subtema_10.1.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_10\tema_10.1_subtema_10.1.2_guion.md" -OutputPath "$mediaDir\modulo_10_tema_10.1_subtema_10.1.2.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_10\tema_10.2_subtema_10.2.1_guion.md" -OutputPath "$mediaDir\modulo_10_tema_10.2_subtema_10.2.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_10\tema_10.2_subtema_10.2.2_guion.md" -OutputPath "$mediaDir\modulo_10_tema_10.2_subtema_10.2.2.wav"
$totalFiles++; $successFiles++

# MÓDULO 11: SRE (4 subtemas)
Write-Host "`n=== MÓDULO 11: Site Reliability Engineering ===" -ForegroundColor Green

Generate-Audio -GuionPath ".\modulos\modulo_11\tema_11.1_subtema_11.1.1_guion.md" -OutputPath "$mediaDir\modulo_11_tema_11.1_subtema_11.1.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_11\tema_11.1_subtema_11.1.2_guion.md" -OutputPath "$mediaDir\modulo_11_tema_11.1_subtema_11.1.2.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_11\tema_11.2_subtema_11.2.1_guion.md" -OutputPath "$mediaDir\modulo_11_tema_11.2_subtema_11.2.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_11\tema_11.2_subtema_11.2.2_guion.md" -OutputPath "$mediaDir\modulo_11_tema_11.2_subtema_11.2.2.wav"
$totalFiles++; $successFiles++

# MÓDULO 12: Proyecto Final (2 subtemas)
Write-Host "`n=== MÓDULO 12: Proyecto Final Integrador ===" -ForegroundColor Green

Generate-Audio -GuionPath ".\modulos\modulo_12\tema_12.1_subtema_12.1.1_guion.md" -OutputPath "$mediaDir\modulo_12_tema_12.1_subtema_12.1.1.wav"
$totalFiles++; $successFiles++

Generate-Audio -GuionPath ".\modulos\modulo_12\tema_12.1_subtema_12.1.2_guion.md" -OutputPath "$mediaDir\modulo_12_tema_12.1_subtema_12.1.2.wav"
$totalFiles++; $successFiles++

# Liberar synthesizer
$synthesizer.Dispose()

# Resumen final
Write-Host "`n`n========================================" -ForegroundColor Cyan
Write-Host "🎉 GENERACIÓN DE AUDIO COMPLETADA" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Total de archivos procesados: $totalFiles/42" -ForegroundColor Yellow
Write-Host "Archivos generados exitosamente: $successFiles" -ForegroundColor Green
Write-Host "Ubicación: $mediaDir\" -ForegroundColor Gray
Write-Host "`nLos archivos de audio están listos para usar en el curso.`n" -ForegroundColor White
