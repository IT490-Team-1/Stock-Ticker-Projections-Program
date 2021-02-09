<?php require_once "controllerUserData.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Stock Projection SAAS Forgot Password</title>
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
    <div class="container">
      <div class="card login-card">
        <div class="row no-gutters">
          <div class="col-md-5">
            <img src="5150.jpg" alt="login" class="login-card-img">
          </div>
          <div class="col-md-7">
            <div class="card-body">
              <div class="brand-wrapper">
                <img src="logo2.svg" alt="logo" class="logo">
              </div>
              <form class="test" action="forgot-password.php" method="POST" autocomplete="">
                <h2 class="text-center">Forgot Password</h2>
                <p class="text-center">Enter your email address</p>
                <?php
                    if(count($errors) > 0){
                        ?>
                        <div class="alert alert-danger text-center">
                            <?php 
                                foreach($errors as $error){
                                    echo $error;
                                }
                            ?>
                        </div>
                        <?php
                    }
                ?>
                <div class="form-group">
                    <input class="form-control" type="email" name="email" placeholder="Enter email address" required value="<?php echo $email ?>">
                </div>
                <div class="form-group">
                    <input class="form-control2" type="submit" name="check-email" value="Continue">
                </div>
            </form>
               
            </div>
          </div>
        </div>
      </div>
     
    </div>
  </main>
  
</body>
</html>
