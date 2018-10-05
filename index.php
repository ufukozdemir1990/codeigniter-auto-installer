<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Codeigniter Auto Install</title>
        <link rel="stylesheet" href="install/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="install/assets/css/floating-labels.css">
        <link rel="icon" href="install/assets/img/favicon.png">
    </head>
    <body>

        <div class="container">
            <div class="col-sm-8 mx-auto">
                <div class="text-center mb-4">
                    <img class="mb-2" src="install/assets/img/codeigniter.svg" alt="" width="72">
                    <h2 class="h2 mb-3 font-weight-normal">Codeigniter Auto Install</h2>
                </div>
                <ol>
                    <li>Create <code>database</code> and <code>user</code> on <strong>CPanel</strong> or <strong>Plesk Panel</strong> (On the server run)</li>
                    <li>Download Codeigniter, Unzip the downloaded file. You did the zip in the Codeigniter files again and put it in the root directory of your Codeigniter install (as a sibling to the /install folder).</li>
                    <li>If your Codeigniter application folder is a sibling of your system folder instead of a child (this is common), do a find/replace to replace 'system/application' with 'application' in each of this project's files.</li>
                    <li>Make an SQL dump of your desired database structure and initial data and paste it into <code>install/install_db.sql</code></li>
                </ol>
                <strong>Base:</strong>
                <ul>
                    <li>install (automatic installation files)</li>
                    <li>index.php (welcome file)</li>
                    <li>codeigniter.zip (file)</li>
                </ul>
                <p>Visit http://example.com/install and see how it goes.</p>
                <p>Note: <code>The compressed file must have a .zip extension</code></p>
                <p>Note: If you have problems or have recommendations, please file an issue at <a href="http://github.com/ufukozdemir1990/codeigniter-auto-installer/" target="_blank">http://github.com/ufukozdemir1990/codeigniter-auto-installer/</a> or else it won't get fixed!</p>
                <p>
                    <a class="btn btn-lg btn-primary btn-block" href="install/" role="button">Start Install</a>
                </p>
            </div>
        </div>

        <script src="install/assets/js/jquery-3.3.1.slim.min.js"></script>
        <script src="install/assets/js/popper.min.js"></script>
        <script src="install/assets/js/bootstrap.min.js"></script>
    </body>
</html>