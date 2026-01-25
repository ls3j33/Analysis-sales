# activate.ps1 - активация виртуального окружения
$venvPath = Join-Path $PSScriptRoot "venv"
$activateScript = Join-Path $venvPath "Scripts\Activate.ps1"

if (Test-Path $activateScript) {
    & $activateScript
    Write-Host "✅ Виртуальное окружение активировано!" -ForegroundColor Green
    Write-Host "Python: $venvPath\Scripts\python.exe" -ForegroundColor Yellow
    
    # Показываем команды
    Write-Host "`nДоступные команды:" -ForegroundColor Cyan
    Write-Host "  python --version      - проверить версию" -ForegroundColor White
    Write-Host "  pip list              - список пакетов" -ForegroundColor White
    Write-Host "  jupyter notebook      - запустить Jupyter" -ForegroundColor White
    Write-Host "  deactivate            - выйти из venv" -ForegroundColor White
} else {
    Write-Host "❌ Файл активации не найден: $activateScript" -ForegroundColor Red
    Write-Host "Проверьте наличие venv в папке проекта" -ForegroundColor Yellow
}