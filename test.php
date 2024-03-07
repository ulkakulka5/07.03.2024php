echo "<table style="border: 1px solid black; border-collapse: collapse;">";

echo '<table style="border: 1px solid black; border-collapse: collapse;">';


while ($tab3=mysqli_fetch_array($wynik3) )
{
    
    echo '<tr><td style="border: 1px solid black; border-collapse: collapse;">".$tab3['Id_klienta']."</td><td>".$tab3['Nazwisko']."</td><td>".$tab3['Imie']."</td><td>".$tab3['Miejscowosc']."</td></tr>';

}

while ($tab3=mysqli_fetch_array($wynik3)) {
    echo '<tr><td style="border: 1px solid black; border-collapse: collapse;">'.$tab3['Id_klienta'].'</td><td>'.$tab3['Nazwisko'].'</td><td>'.$tab3['Imie'].'</td><td>'.$tab3['Miejscowosc'].'</td></tr>';
}
