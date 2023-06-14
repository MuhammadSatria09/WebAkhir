<?php
include 'connect.php';

$query = "SELECT * FROM karakter WHERE id='$_GET[id]'";
$sql = mysqli_query($conn, $query);

if (isset($_POST['submit'])) {   
    $query1 = "UPDATE karakter SET 
    id='$_POST[id]',
    name='$_POST[name]',
    affiliation='$_POST[affiliation]',
    rarity='$_POST[rarity]',
    element='$_POST[element]',
    path='$_POST[path]',
    image='$_POST[image]',
    splash='$_POST[splash]' 
    WHERE id = '$_POST[id]'";

    mysqli_query($conn, $query1);
    header('Location:#');
    }

if (isset($_POST['delete'])) {   
    $query2 = "DELETE FROM karakter WHERE id='$_POST[id]'";

    mysqli_query($conn, $query2);
    header('Location:characters.php');
    }
?>
<?php while ($data = mysqli_fetch_array($sql)) { ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $data['name'];?> | Honkai : StarRail Wiki</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="navbar">
        <ul class="navbar-left">
            <li> 
                <a href="index.php">
                    <img src="https://upload.wikimedia.org/wikipedia/en/thumb/b/b1/Honkai-Star-Rail.png/220px-Honkai-Star-Rail.png" alt="Honkai Star Rail" width="" height="80" >
                </a>
            </li>
        </ul>
       <ul class="navbar-right">
            
            <li><a href="tier_list.php">Tier List</a> </li>
            <li><a href="characters.php">Characters</a></li>
       </ul>
</div>

<div style="display:flex; justify-content:center;">

<div class="character_details">
    <img src="<?=$data['splash'];?>" >
    <div class="char_bio">
    <table rarity="<?= $data['rarity'];?>">
        <tr>
            <td>Name :</td>
            <td><?= $data['name'];?></td>
        </tr>
        <tr>
            <td>Affiliation :</td>
            <td><?= $data['affiliation'];?></td>
        </tr>
        <tr>
            <td>Rarity :</td>
            <td><?= $data['rarity'];?> Star</td>
        </tr>
        <tr>
            <td>Element :</td>
            <td><?= $data['element'];?></td>
        </tr>
        <tr>
            <td>Path :</td>
            <td><?= $data['path'];?></td>
        </tr>
    </table>
    </div>
</div>
</div>


    <div><a href="#popup">edit</a></div>
    <div id="popup" class="overlay">
	<div class="popup">
        <h2>Edit This Characters</h2>
		<a class="close" href="#">&times;</a>
		<div class="content">
                <form action="#" method ="POST">
                    ID : <br> <input type="text" name="id" value="<?=$data['id']?>" readonly> <br>
                    Name : <br> <input type="text" name="name" value="<?=$data['name']?>"> <br>
                    Affiliation : <br> <input type="text" name="affiliation" value="<?=$data['affiliation']?>"> <br>
                    Element : <br> <input type="text" name="element" value="<?=$data['element']?>"> <br>
                    Path : <br> <input type="text" name="path" value="<?=$data['path']?>"> <br>
                    Rarity : <br> <input type="radio" name="rarity" id="rarity" value="4" <?php if($data['rarity'] == 4){echo "checked";};?> > 4
                                <input type="radio" name="rarity" id="rarity" value="5" <?php if($data['rarity'] == 5){echo "checked";};?>> 5 
                             <br>
                    Potrait : <br> <input type="text" name="image" value="<?=$data['image']?>"> <br>
                    Splash Art : <br> <input type="text" name="splash" value="<?=$data['splash']?>"> <br> <br>
                    <input type="submit" name="submit"value="SUBMIT">
                    <input type="submit" name="delete"value="Delete" style = "background-color:red; float:right; border:1px solid grey; padding:4px; border-radius:4px;">
                </form>
		</div>
	</div>
    </div>
    <?php }?>
</body>
</html>