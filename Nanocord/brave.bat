powershell -NoProfile -ExecutionPolicy Bypass -Command "& {$process = Start-Process brave -ArgumentList '--app=https://discord.com/app --disable-background-mode --process-per-site --disable-extensions --disable-sync --disable-gpu-vsync --enable-low-end-device-mode --disable-gpu' -PassThru; Start-Sleep -Seconds 2; $process.ProcessorAffinity = 12;}"