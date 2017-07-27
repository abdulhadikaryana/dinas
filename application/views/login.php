<!DOCTYPE html>
<html>
	<head>
		
	</head>
	<body>	
		<h1>Login</h1>
		<form action="<?php echo site_url('Login/aksi_login'); ?>" method="POST">
			<label>Username</label>
			<input type="text" name="username">
			<br>
			<br>
			<label>Password</label>
			<input type="password" name="password">
			<br>
			<br>
			<input type="submit" value="Login">
		</form>
	</body>
</html>