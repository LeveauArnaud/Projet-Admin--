<?php
    $db = mysqli_connect('135.125.101.189:5000','root','sysadmin','woodytoys_db')
    or die('Error connecting to MySQL server.');
?>
<html>
<head>
<style>
  h1 {text-align: center;}
body {
  background-color: lightblue;
}
div {margin: auto;}
</style>
</head>
<div>
<h1>Bienvenue sur le site b2b de WoodyToys by <a href="http://me.jagtech.be/">Arnaud Leveau</a> Groupe  m1-3!</h1>
</div>
<div>
<table>
    <thead>
        <tr>Données récuprées dans la DB dynamiquement</tr>
        <tr>
            <th >ID </th>
            <th >Toy Name</th>
            <th >Price</th>
        </tr>
    </thead>
    <tbody>
    <?php
           $query = "SELECT * FROM toys";
           mysqli_query($db, $query) or die('Error querying database.');
           $result = mysqli_query($db, $query);

           while ($row = mysqli_fetch_array($result)) {
               echo '<tr> <td>'. $row['id_toys'] . '</td><td> ' . $row['toyName'] . '</td><td> ' . $row['toyPrice'] . '</td></tr> ';
           }
       ?>
  </tbody>
</table>
</div>
</html>
