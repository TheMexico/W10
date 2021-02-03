$Hosts = @('PC01','PC02','PC03','fakePC')
#$Hosts

foreach ($pc in $Hosts) {
    Write-Host "PC is: $pc" -ForegroundColor Green
    If (Test-Connection -ComputerName $pc -Count 1 -Quiet) {
        Write-Host "PC $pc is powered on"
        If(Test-Path -Path \\$pc\c$\Windows\System32\Notepad.exe) {
            Write-Host "Noteapad.exe exist on $pc" -ForegroundColor Green
            } else {
                Write-Host "Notepad.exe does not exist on $pc" -ForegroundColor Red } 
            } else {
                Write-Host "PC $pc is powered off" -ForegroundColor Red}
    }