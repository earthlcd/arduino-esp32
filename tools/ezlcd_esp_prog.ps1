$prt,$a = $args

$port=new-Object System.IO.Ports.SerialPort $prt,115200
$port.open()
$port.Write( [byte[]] (0xf0,0x01), 0, 2)
$port.Close()

Invoke-Expression "$a"