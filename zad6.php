<?php
$do_bazy= mysqli_connect('localhost','root','','ks_int');

if($do_bazy==false)
{
    exit("blad polaczenia");
}
else
{
    echo "polaczono z serwerem";
}

$zapytanie3= "SELECT Id_klienta, Nazwisko,Imie, Miejscowosc FROM klient WHERE Nazwisko NOT LIKE ''";

$wynik3=mysqli_query($do_bazy,$zapytanie3);


echo '<table style="border: 1px solid black; border-collapse: collapse;">';
echo '<tr style="border: 1px solid black; border-collapse: collapse;"><th style="border: 1px solid black; border-collapse: collapse;">Id_klienta</th>';
echo '<th style="border: 1px solid black; border-collapse: collapse;">Nazwisko</th>';
echo '<th style="border: 1px solid black; border-collapse: collapse;">Imie</th>';
echo '<th style="border: 1px solid black; border-collapse: collapse;">Miejsce zamieszkania</th></tr>';
while ($tab3=mysqli_fetch_array($wynik3)) 
{
    echo '<tr><td style="border: 1px solid black; border-collapse: collapse;">'.$tab3['Id_klienta'].'</td><td style="border: 1px solid black; border-collapse: collapse;">'.$tab3['Nazwisko'].'</td><td style="border: 1px solid black; border-collapse: collapse;">'.$tab3['Imie'].'</td><td style="border: 1px solid black; border-collapse: collapse;">'.$tab3['Miejscowosc'].'</td></tr>';
}
echo "</table>";

?>
