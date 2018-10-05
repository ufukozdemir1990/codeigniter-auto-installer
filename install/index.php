<?php
    if($_POST) {

        // Load the classes and create the new objects
        require_once('includes/core_class.php');
        require_once('includes/database_class.php');

        $core = new Core();
        $database = new Database();

        // Validate the post data
        if($core->validate_post($_POST) == true) {

            // First create the database, then create tables, then open zip then write config file
            if($database->create_database($_POST) == false) {
                $message = $core->show_message('error',"The database could not be created, please verify your settings.");
            } else if ($database->create_tables($_POST) == false) {
                $message = $core->show_message('error',"The database tables could not be created, please verify your settings.");
            } else if($core->create_ci($_POST) == false){
                $message = $core->show_message('error',"Doh! I couldn't open file");
            } else if ($core->write_config($_POST) == false) {
                $message = $core->show_message('error',"The database configuration file could not be written, please chmod application/config/database.php file to 777");
            }

            // If no errors, redirect to registration page
            if(!isset($message)) {
                $redir = ((isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == "on") ? "https" : "http");
                $redir .= "://".$_SERVER['HTTP_HOST'];
                $redir .= str_replace(basename($_SERVER['SCRIPT_NAME']),"",$_SERVER['SCRIPT_NAME']);
                $redir = str_replace('install/','',$redir);
                header( 'Location: ' . $redir) ;
            }

        }
        else {
            $message = $core->show_message('error','Not all fields have been filled in correctly. The host, username, password, database and zipname are required.');
        }
    }
?>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Codeigniter Auto Install</title>
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/floating-labels.css">
        <link rel="icon" href="assets/img/favicon.png">
    </head>
    <body>

        <?php if(isset($message)): ?>
            <div class="alert alert-danger" role="alert">
                <h4 class="alert-heading">Error!</h4>
                <hr>
                <p class="mb-0"><?php echo $message; ?></p>
            </div>
        <?php endif; ?>

        <form class="form-install" method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
            <div class="text-center mb-4">
                <img class="mb-4" src="assets/img/codeigniter.svg" alt="" width="100">
                <h1 class="h3 mb-3 font-weight-normal">Codeigniter Auto Install</h1>
                <p>Database Settings</p>
            </div>

            <div class="form-label-group">
                <input type="text" id="hostname" class="form-control" placeholder="Hostname" name="hostname" value="localhost" required>
                <label for="hostname">Hostname</label>
            </div>

            <div class="form-label-group">
                <input type="text" id="username" class="form-control" placeholder="Username" name="username" required>
                <label for="username">Username</label>
            </div>

            <div class="form-label-group">
                <input type="password" id="password" class="form-control" placeholder="Password" name="password" required>
                <label for="password">Password</label>
            </div>

            <div class="form-label-group">
                <input type="text" id="database" class="form-control" placeholder="Database Name" name="database" required>
                <label for="database">Database Name</label>
            </div>

            <div class="form-label-group">
                <input type="text" id="foldername" class="form-control" placeholder="Folder Name" name="foldername" required>
                <label for="foldername">Folder Name</label>
            </div>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Create</button>
            <p class="mt-5 mb-3 text-muted text-center">&copy; Ufuk Özdemir</p>
        </form>

        <script src="assets/js/jquery-3.3.1.slim.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
    </body>
</html>
