<?php  
include 'connect.php';

$query = "SELECT * FROM karakter";
$sql = mysqli_query($conn, $query);

if (isset($_POST['submit'])) {   
    $query = "INSERT INTO karakter VALUES ('$_POST[id]','$_POST[name]','$_POST[affiliation]','$_POST[rarity]','$_POST[element]','$_POST[path]','$_POST[image]','$_POST[splash]')";
    mysqli_query($conn, $query);
    echo "<script>
        document.location='characters.php';
        </script>";
    }

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Characters | Honkai : StarRail Wiki</title>
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


    <div class="charac">
    <?php while ($data = mysqli_fetch_array($sql)) { ?>
        <div class="chars" >
            <img rarity="<?=$data['rarity'];?>"src="<?=$data['image'];?>" onclick =" location.href='character_details.php?id=<?=$data['id']?>'">
        </div>
        <?php } ?>
        
    </div>
     <div><a href="#popup">add</a></div>

    <div id="popup" class="overlay">
	<div class="popup">
        <h2>Add More Characters</h2>
		<a class="close" href="characters.php">&times;</a>
		<div class="content">
                <form action="#" method ="POST">
                    ID : <br> <input type="text" name="id"> <br>
                    Name : <br> <input type="text" name="name"> <br>
                    Affiliation : <br> <input type="text" name="affiliation"> <br>
                    Element : <br> <input type="text" name="element"> <br>
                    Path : <br> <input type="text" name="path"> <br>
                    Rarity : <br> <input type="radio" name="rarity" id="rarity" value="4"> 4
                                <input type="radio" name="rarity" id="rarity" value="5"> 5 <br>
                    Potrait : <br> <input type="text" name="image"> <br>
                    Splash Art : <br> <input type="text" name="splash"> <br> <br>
                    <input type="submit" name="submit"value="SUBMIT"> <br>
                </form>
		</div>
	</div>
    </div>

</body>
</html>