﻿# ===== ФОРМА ПРОВЕРКИ КАССЫ  ========================================
$Object_title = [PSCustomObject]@{
size = 10
}


function kasScreen {
# [System.Windows.Forms.MessageBox]::Show("Загрузка базы может занять секунд 30" )


# [System.Windows.Forms.MessageBox]::Show("Пользователь в домене  " + $oumassiv[2] + "!" )

$kasform = New-Object System.Windows.Forms.Form
$kasform.Text = " Проверка ККМ "
$kasform.StartPosition = "manual"
$kasform.Location = "1000, 200"
$kasform.AutoSize = $true
$kasform.Size = New-Object System.Drawing.Size(600,450)

$kaslabel1 = New-Object System.Windows.Forms.label
$kaslabel1.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",$Object_title.size,[System.Drawing.FontStyle]::Bold)
$kaslabel1.Text = "Компьютер, на котором кассы: " 
$kaslabel1.Location = New-Object System.Drawing.Point(20,20)
$kaslabel1.AutoSize = $true
$kaslabel1.Visible = $true
$kasform.Controls.Add($kaslabel1)

$textboxkas = New-Object System.Windows.Forms.TextBox
$textboxkas.Location  = New-Object System.Drawing.Point(20,40)
$textboxkas.Font =  [System.Drawing.Font]::new("Microsoft Sans Serif", 12, [System.Drawing.FontStyle]::bold)  
$textboxkas.Width = 270
$textboxkas.Height =30
$textboxkas.Text = '    IP или Имя компа '
$textboxkas.AutoSize = $false 
   # вывод ip Адреса 
$kasform.Controls.Add($textboxkas)
$textboxkas.Text ="   $comp"



$kaslabel1 = New-Object System.Windows.Forms.label
$kaslabel1.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",$Object_title.size,[System.Drawing.FontStyle]::Bold)
$kaslabel1.Text = "Статус проверки: " 
$kaslabel1.Location = New-Object System.Drawing.Point(20,100)
$kaslabel1.AutoSize = $true
$kaslabel1.Visible = $true
$kasform.Controls.Add($kaslabel1)

$kaslabel2 = New-Object System.Windows.Forms.label
$kaslabel2.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",$Object_title.size,[System.Drawing.FontStyle]::Regular)
$kaslabel2.Text = " Все хорошо" 
$kaslabel2.Location = New-Object System.Drawing.Point(20,140)
$kaslabel2.AutoSize = $true
$kaslabel2.Visible = $true
$kasform.Controls.Add($kaslabel2)

$kaslabel3 = New-Object System.Windows.Forms.label
$kaslabel3.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",$Object_title.size,[System.Drawing.FontStyle]::Regular)
$kaslabel3.Text = " Есть проблемы "
$kaslabel3.Location = New-Object System.Drawing.Point(20,180)
$kaslabel3.AutoSize = $true
$kaslabel3.Visible = $true
$kasform.Controls.Add($kaslabel3)

<#
$kaslabel4 = New-Object System.Windows.Forms.label
$kaslabel4.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",$Object_title.size,[System.Drawing.FontStyle]::Regular)
$kaslabel4.Text = " Lync "
$kaslabel4.Location = New-Object System.Drawing.Point(20,140)
$kaslabel4.AutoSize = $true
$kaslabel4.Visible = $true
$kasform.Controls.Add($kaslabel4)

$kaslabel5 = New-Object System.Windows.Forms.label
$kaslabel5.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",$Object_title.size,[System.Drawing.FontStyle]::Regular)
$kaslabel5.Text = " Учетка активна "
$kaslabel5.Location = New-Object System.Drawing.Point(20,180)
$kaslabel5.AutoSize = $true
$kaslabel5.Visible = $true
$kasform.Controls.Add($kaslabel5)

$kaslabel5 = New-Object System.Windows.Forms.label
$kaslabel5.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",$Object_title.size,[System.Drawing.FontStyle]::Regular)
$kaslabel5.Text = " Пароль истекает: "
$kaslabel5.Location = New-Object System.Drawing.Point(20,220)
$kaslabel5.AutoSize = $true
$kaslabel5.Visible = $true
$kasform.Controls.Add($kaslabel5)





    # if (2 -ge 1)
	#{
	#$kaslabel10.BackColor = "red"
	##$oplabel2.Text = "ПК требует апгрейда"
	#}
	#else
	#{
	#$kaslabel10.BackColor = "green"
	#}


   
	

# }


#>

$kaslabel10 = New-Object System.Windows.Forms.label

#$kaslabel1.Font =  [System.Drawing.Font]::new("Times New Roman", 9, [System.Drawing.FontStyle]::Underline) 
$kaslabel10.Font = New-Object System.Drawing.Font("Wingdings",22,[System.Drawing.FontStyle]::Bold)
$kaslabel10.Text = ""
$kaslabel10.Location = New-Object System.Drawing.Point(170,140)
$kaslabel10.AutoSize = $true
$kaslabel10.Visible = $false
$kaslabel10.ForeColor = "green"
$kasform.Controls.Add($kaslabel10)

 #$kaslabel9.Visible = $true
    $kaslabel10.Visible = $true
    $kaslabel10.text = " ü "


$kaslabel11 = New-Object System.Windows.Forms.label
$kaslabel11.Font = New-Object System.Drawing.Font("Wingdings",22,[System.Drawing.FontStyle]::Bold)
$kaslabel11.Text = ""
$kaslabel11.Location = New-Object System.Drawing.Point(170,180)
$kaslabel11.AutoSize = $true
$kaslabel11.Visible = $false
#$kaslabel11.BackColor = "red"
$kaslabel11.ForeColor = "red"
$kasform.Controls.Add($kaslabel11)


    $kaslabel11.Visible = $true
    $kaslabel11.text = " û "


<#
$kaslabel12 = New-Object System.Windows.Forms.label
$kaslabel12.Font = New-Object System.Drawing.Font("Wingdings",22,[System.Drawing.FontStyle]::Bold)
$kaslabel12.Text = ""
$kaslabel12.Location = New-Object System.Drawing.Point(170,140)
$kaslabel12.AutoSize = $true
$kaslabel12.Visible = $false
$kaslabel12.ForeColor = "green"
$kasform.Controls.Add($kaslabel12)


    $kaslabel12.Visible = $true
    $kaslabel12.text = " ü "

$kaslabel13 = New-Object System.Windows.Forms.label
$kaslabel13.Font = New-Object System.Drawing.Font("Wingdings",22,[System.Drawing.FontStyle]::Bold)
$kaslabel13.Text = ""
$kaslabel13.Location = New-Object System.Drawing.Point(170,180)
$kaslabel13.AutoSize = $true
$kaslabel13.Visible = $false
$kaslabel13.ForeColor = "green"
$kasform.Controls.Add($kaslabel13)


    $kaslabel13.Visible = $true
    $kaslabel13.text = " ü "


$kaslabel14 = New-Object System.Windows.Forms.label
$kaslabel14.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",$Object_title.size,[System.Drawing.FontStyle]::Regular)
$kaslabel14.Text = " 01.07.2022 "
$kaslabel14.Location = New-Object System.Drawing.Point(160,220)
$kaslabel14.AutoSize = $true
$kaslabel14.Visible = $true
$kaslabel14.ForeColor = "green"
$kasform.Controls.Add($kaslabel14)

$pictureBox = new-object Windows.Forms.PictureBox
$pictureBox.Location = New-Object System.Drawing.Size(50,50)
$pictureBox.Size = New-Object System.Drawing.Size($img.Width,$img.Height)
$pictureBox.Image = $seluser.thumbnailPhoto
$kasform.controls.add($pictureBox)


#>

# Кнопки 
$uButton1 = New-Object System.Windows.Forms.Button
$uButton1.Location = New-Object System.Drawing.Point(160,80)
$uButton1.Font =  [System.Drawing.Font]::new("Times New Roman", 9, [System.Drawing.FontStyle]::bold) 
$uButton1.Text               =  " ПРОВЕРИТЬ "
$uButton1.Size = New-Object System.Drawing.Size(120,50)
#  вызываем функцию отправки сообщения
$uButton1.add_click({
[System.Windows.Forms.MessageBox]::Show("Проверено" )

})

#вывод на форму 
$kasform.Controls.Add($uButton1)

<#

$uButton2 = New-Object System.Windows.Forms.Button
$uButton2.Location = New-Object System.Drawing.Point(190,290)
$uButton2.Font =  [System.Drawing.Font]::new("Times New Roman", 9, [System.Drawing.FontStyle]::bold) 
$uButton2.Text               =  " Наградить орденом "
$uButton2.Size = New-Object System.Drawing.Size(120,50)
#  вызываем функцию отправки сообщения
$uButton2.add_click({
[System.Windows.Forms.MessageBox]::Show("Награждение произведено" )


})

#>

$DataGridViewKas                   = New-Object system.Windows.Forms.DataGridView
$DataGridViewKas.width             = 545
$DataGridViewKas.height            = 170
$DataGridViewKas.location          = New-Object System.Drawing.Point(30,220)
$DataGridViewKas.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",10,[System.Drawing.FontStyle]::Regular)
$DataGridViewKas.ColumnHeadersHeight=30
$DataGridViewKas.visible = $true
$DataGridViewKas.AllowDrop = $false
$DataGridViewKas.AllowUserToAddRows = $false
$DataGridViewKas.AllowUserToDeleteRows = $false
$DataGridViewKas.AllowUserToOrderColumns = $false
$DataGridViewKas.AllowUserToResizeColumns = $false
$DataGridViewKas.AllowUserToResizeRows = $false
$DataGridViewKas.RowHeadersVisible = $false

$DataGridViewKas.ColumnCount = 5
$DataGridViewKas.ColumnHeadersVisible = $true
$DataGridViewKas.Columns[0].Name = "SN машинки"
$DataGridViewKas.columns[0].width = 150
$DataGridViewKas.Columns[1].Name = "COM порт"
$DataGridViewKas.columns[1].width = 70
$DataGridViewKas.Columns[2].Name = "Статус"
$DataGridViewKas.columns[2].width = 90
$DataGridViewKas.Columns[3].Name = "Служба"
$DataGridViewKas.columns[3].width = 150
$DataGridViewKas.Columns[4].Name = "Статус"
$DataGridViewKas.columns[4].width = 80

# $DataGridView2.Visible = $true
# $DataGridView2.Rows.Clear()

$DataGridViewMusor                   = New-Object system.Windows.Forms.DataGridView
$DataGridViewMusor.width             = 545
$DataGridViewMusor.height            = 170
$DataGridViewMusor.location          = New-Object System.Drawing.Point(30,420)
$DataGridViewMusor.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",10,[System.Drawing.FontStyle]::Regular)
$DataGridViewMusor.ColumnHeadersHeight=30
$DataGridViewMusor.visible = $true
$DataGridViewMusor.AllowDrop = $false
$DataGridViewMusor.AllowUserToAddRows = $false
$DataGridViewMusor.AllowUserToDeleteRows = $false
$DataGridViewMusor.AllowUserToOrderColumns = $false
$DataGridViewMusor.AllowUserToResizeColumns = $false
$DataGridViewMusor.AllowUserToResizeRows = $false
$DataGridViewMusor.RowHeadersVisible = $false

$DataGridViewMusor.ColumnCount = 1
$DataGridViewMusor.ColumnHeadersVisible = $true
$DataGridViewMusor.Columns[0].Name = "Странные имена в папке c:\kkt"
$DataGridViewMusor.columns[0].width = 250


#вывод на форму 
$kasform.Controls.Add($DataGridViewKas)
$kasform.Controls.Add($DataGridViewMusor)
$kasform.Controls.Add($uButton2)
$DataGridViewKas.Rows.Clear()
$DataGridViewMusor.Rows.Clear()
Mas_Statuses


$kasform.Topmost = $true
$result = $kasform.ShowDialog()

}



<#
    ***
    ЛОГИКА-МАТЕМАТИКА
    ***
#>

<#
#  ==================================================================================
#  Clients

$xmldata = [xml](Get-Content "H:\GIT\ps\kkt\CashRegisterSvc.exe.config")
$confdata = $xmldata.configuration.clients.client.add
$confdata | gm

$("Comp = " + $confdata.GetAttribute("ip"))


<clients>
    <!--Если указать, то ошибка: Нет доступных ККМ-->
    <client>
      <add ip="BL-OFORM-SL02.corp.intra" />
      <add ip="BL-OFORM-SL03.corp.intra" />
      <add ip="BL-KASSA01.corp.intra" />
    </client>
  </clients>


#>

<#

function Get-mac ($NameHost) {
	$DataGridViewKas.Rows.Clear()	
  Get-WmiObject Win32_NetworkAdapter -ComputerName $NameHost -Filter 'NetConnectionStatus=2' |
    ForEach-Object {
	  $k = ""
      $result = 1 | Select-Object Name, IP, MAC
      $result.Name = $_.Name
      $result.MAC = $_.MacAddress
      $config = $_.GetRelated('Win32_NetworkAdapterConfiguration') 
      $result.IP = $config | Select-Object -expand IPAddress
	  foreach ($ip in $result.IP)
	  {
			$in = $ip.Remove(2)
			if ($in -eq "10")
			{
				$k = $k + $ip + " "
			}
			
	  }
      $DataGridViewKas.Rows.Add($result.Name,$k,$result.MAC)
    }
 
}

#>


#  ==================================================================================
#  PORTS

function Mas_Statuses()

{
$comp = "yar-akassa02"


$spisok_sn_mashinok = Get-ChildItem "\\$comp\c$\kkt"
$spisok_sn_mashinok

foreach ($sn_mash in $spisok_sn_mashinok)
{
if ($sn_mash -match '^\d{14}$')
{
$sn_kkm = $sn_mash
$xmldata = [xml](Get-Content "\\$comp\c$\kkt\$sn_mash\CashRegisterSvc.exe.config")
$confdata = $xmldata.configuration.appSettings.add
# $port = $confdata | ? key -eq "PortNumber"
$port = $confdata | where {($_.key -eq "PortNumber")}
# -or ($_.key -eq "SerialNumber")}
$pv = $port.value  #Port Value
$pv = "COM" + $pv

$spis = invoke-command -cn $comp -ScriptBlock {Get-PnpDevice -PresentOnly}
$mashinki = $spis | where {($_.Name -match "ATOL")}
# $mashinki.Name
$mash_port = $mashinki.Name -replace '.+COM|\)'

$COMportList = invoke-command -cn $comp -ScriptBlock {[System.IO.Ports.SerialPort]::getportnames()}


Write-Output "================================================================="
Write-Output " Машинка $sn_mash"
Write-Output " Порт из конфы $pv"


#foreach ($single_port in $mash_port)
#{
$pv = $pv -replace 'COM' 
#$single_port = "COM"+$single_port
if ($mash_port -contains  $pv)
#if ($pv -eq $single_port)
{
#Write-host -ForegroundColor Green " Порт COM"$pv" есть"
$DataGridViewKas.Rows.Add($sn_mash,$pv,"Включен",$sn_mash,"Запущена")
}
else
{
#Write-Host -ForegroundColor Red " Порт не найден  COM"$pv" COM"$mash_port 
$DataGridViewKas.Rows.Add($sn_mash,$pv,"НЕ НАЙДЕН",$sn_mash,"Запущена")
}
Write-Output "================================================================="


#| {$_ -replace '(.+(?=COM\d*)')}
#$mash_port -replace '.+COM|\)'
#$mash_port -replace '.+(?=COM\d*'
#$mash_port

#$spis = invoke-command -cn him-oformvw06 -ScriptBlock {Get-CimInstance -Class Win32_SerialPort}
#$spis
#$spis.DeviceID 

#if ($pv -eq $spis.DeviceID)
#{
#Write-host "Порт есть"
#}
#else
#{
#Write-Host "Порт не найден"
#}
#Write-Output "================================================================="
# Write-Output $pv + ":" + $spis.DeviceID
}

else
{
Write-Output "Найдено $sn_mash ,что не похоже на SN машинки"
$DataGridViewMusor.Rows.Add($sn_mash)
    }
  }
}

kasScreen # РИСУЕМ ФОРМУ


<#  Ниже какая-то фигня

$spis = Get-CimInstance -Class Win32_SerialPort
# | Select-Object DeviceID
$spis.DeviceID 


 
 $trp = $port.GetElementsByTagName('PortNumber')

 $trp
 

foreach ($pt in $port)
{
write-host "Значение = " $pt.key
}


#>
