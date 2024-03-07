<?php
$polaczenie= mysqli_connect('localhost','root','','egzamin4');
$zapyt2="SELECT nazwaPliku,podpis FROM zdjecia";
$wynik2= mysqli_query($polaczenie,$zapyt2);
while($tab2=mysqli_fetch_array($wynik2))
{
    echo "<img src=' ".$tab2['nazwaPliku'].".jpg' alt=' ".$tab2['podpis']."'>";
}
?>
