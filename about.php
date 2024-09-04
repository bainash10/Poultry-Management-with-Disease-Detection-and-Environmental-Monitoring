<?php
include 'database/config.php'; // Include the database configuration file
session_start(); // Start the session

// Check if the user is logged in, otherwise redirect to the login page
if (!isset($_SESSION['email'])) {
  header("location: index.php");
  exit(); // Make sure to exit after redirect to stop further script execution
}

// Store the user's name from the session into a variable
$comp_name = $_SESSION['name'];

// Assuming user_id is stored in the session after login
$user_id = $_SESSION['id'];

// Query to fetch the user's type from the database using their user_id
$query = "SELECT type FROM accounts WHERE id = '$user_id'";
$result = mysqli_query($mysqli, $query);

// Check if the query was successful and retrieve the user type
if ($result) {
  $row = mysqli_fetch_assoc($result);
  $user_type = $row['type'];
} else {
  // Handle the error if the query fails
  echo "Error fetching user type: " . mysqli_error($conn);
  $user_type = null; // Set a default value or handle accordingly
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>About | Agro Vision</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="assets/css/styles.css">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" crossorigin="anonymous">
	<link href="assets/css/dashboard.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="assets/css/styles.css">
	<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<link rel="icon" href="assets\img\logo.png" type="image/png">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light shadow">
		<div class="container">
			<a class="navbar-brand" href="index.php"><span class="navbar-logo"><img src="assets/img/logo.png"></span> Agro Vision</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a class="nav-link" href="index.php">Home <span class="divider"></span></a>
					</li>
					<!-- <li class="nav-item">
						<a class="nav-link" href="http://fims.pofarms.icu/" target="blank">FIMS <span class="divider"></span></a>
					</li> -->
					<!-- <li class="nav-item">
						<a class="nav-link" href="http://dbms.pofarms.icu/" target="blank">COVID-19 Response Monitor <span class="divider"></span></a>
					</li> -->
					<li class="nav-item active">
						<a class="nav-link" href="about.php">About <span class="divider"></span></a>
					</li>
					<!-- <li class="nav-item">
						<a class="nav-link" href="signup.php">Sign up</a>
					</li> -->
				</ul>
			</div>
		</div>
	</nav>
	<br><br />
	<main>
		<section>
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<div class="title">
							<h3>About Us</h3>
							<p>This project is focused on creating an advanced AI and machine learning-driven web application designed to optimize poultry farm operations. The system records and analyzes data such as temperature, feeding amounts, and waste production, providing real-time insights and predictive analytics to enhance farm efficiency. It also features an AI-powered disease detection tool, where users can upload images to diagnose potential health issues in chickens. Additionally, the app offers a paid service for live veterinary consultations, ensuring access to expert advice. By integrating modern technology with traditional farming practices, this project aims to improve productivity and animal welfare.</p>
							<p>The aim of this study was to develop an online Agro Vision to help
							poultry farmers manage their farms easily.</p>
							<!-- <h4>Objectives</h4>
							<div class="about-obj">
								<ul>
									<li>To automate the manual means of recording poultry farming records.</li>
									<li>To provide a system that can facilitate the update of poultry farming records.</li>
									<li>To develop a system that will aid the presentation of reports pertaining the poultry farming.</li>
								</ul>
							</div> -->
						</div>
					</div>
					<div class="col-md-4 developer">
						<div class="title">
							<h3>Developers</h3>
						</div>
						<center><img src="assets/img/devs.jpg" class="responsive-image"></center>
						<div class="info">
							<ul>
								<li>Team Name: Ananta</li>
								<li>Telephone No. +977 9811111111</li>
								<li>Email address: agrovision101@gmail.com</li>
								<!-- <li>Study Program: Bachelor of ICT in Systems Engineering</li> -->
								<li>Address: Kathmandu</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
		<div class="separator"></div>
		<section class="footer">
			<div class="container">
				<div class="row">
					<div class="col-xl-4">
						<h4>Team Members</h4>
						<ul>
							<!-- <li><a href="" target="blank">KhEC</a></li> -->
							<li><a href="" target="blank">Mukesh Prajapati</a></li>
							<li><a href="" target="blank">Nischal Baidar</a></li>
							<li><a href="" target="blank">Sumina Awa</a></li>
							<li><a href="" target="blank">Sushant Twayana</a></li>
						</ul>
					</div>
					<div class="col-xl-4">
						<div class="logo-footer">
							<center>
								<img src="assets/img/logo.png"><br>
								Agro Vision (AV)<br>
								<p>
								AI-powered web app optimizing poultry farm management and disease classification.
								</p>
							</center>
						</div>
					</div>
					<div class="col-xl-4">
						<h4>Developers</h4>
						<ul>
							<li>Team Name: Ananta</li>
							<!-- <li>Student No. 1601305427</li> -->
							<!-- <li>Project: </li> -->
							<li>Program: Asian Hack 2024</li>
							<!-- <li>Email address: <a href="mailto:giftmusanza@gmail.com">giftmusanza@gmail.com</a></li> -->
							<!-- <li>Telephone No. <a href="tel:+260969685645">+260 969 685 645</a></li> -->
						</ul>
					</div>
				</div>
			</div>
			<div class="copyright">Agro Vision &copy; 2024</div>
		</section>
	</main>
</body>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/jquery.easing.min.js"></script>
<script src="assets/js/dashboard.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="//cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script>
	$(document).ready(function() {
		$('.toast').toast('show');
	});
</script>
</html>
