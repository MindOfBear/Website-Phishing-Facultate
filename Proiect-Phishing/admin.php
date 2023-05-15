<link rel="stylesheet" href="style.css">
<?php 
require_once("connect.php");
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['nume'];
    $password = $_POST['parola'];
    if(empty($username) || empty($password)){
        echo "<p>Cannot submit empty form!!</p>";   
    } else {
        $stmt = $connect->prepare("SELECT * FROM admin WHERE username = ?");
        $stmt->bind_param("s", $username); 
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows === 1) {
            $row = $result->fetch_assoc();
            $hash = $row['password'];

            if (password_verify($password, $hash)) {
                $_SESSION["loggedIn"] = True;
            } else {
                echo "<p>Username or password are invalid!</p>";
            }
        } else {
            echo "<p>Username or password are invalid!</p>";
        }
    }
}
?>
<?php if(isset($_SESSION["loggedIn"])) { ?>
    <h1>Carduri de credit</h1>
    <div class>
        <table class = "tabel">
            <thead>
                <tr>
                    <th>Nume</th>
                    <th>Numar Card</th>
                    <th>Expirare</th>
                    <th>CVV</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                $stmt = $connect->prepare("SELECT * FROM cards");
                $stmt->execute();
                $result = $stmt->get_result();     
                while($row = $result->fetch_assoc()) { 
                ?>
                    <tr>
                        <td><?php echo htmlspecialchars($row['numeCard']); ?></td>
                        <td><?php echo htmlspecialchars($row['numarCard']); ?></td>
                        <td><?php echo htmlspecialchars($row['expirareCard']); ?></td>
                        <td><?php echo htmlspecialchars($row['cvvCard']); ?></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
    <h1>Email-urii</h1>
    <div class>
        <table class = "tabel">
            <thead>
                <tr>
                    <th>Nume</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                $stmt = $connect->prepare("SELECT * FROM user");
                $stmt->execute();
                $result = $stmt->get_result();     
                while($row = $result->fetch_assoc()) { 
                ?>
                    <tr>
                        <td><?php echo htmlspecialchars($row['nume']); ?></td>
                        <td><?php echo htmlspecialchars($row['email']); ?></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
<?php } else { ?>
<html>
    <head>
        <title>Administrator</title>
        <body>
            <div class = "loginForm">
                <h1 style = "font-size: 30px;">Admin</h1>
                <form action = "admin.php" method = "POST">
                    <label for ="nume">Username</label><br>
                    <input type = "text" name = "nume" id = "nume"><Br>

                    <label for ="parola">Password</label><br>
                    <input type = "password" name = "parola" id = "parola"><br>
                    <button style = "margin-top: 5px; border-radius: 20px;">Login</button>
                </form>
            </div>
        </body>
    </head>
</html>
<?php } ?>

