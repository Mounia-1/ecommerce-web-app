<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-9">
	        		<?php
	        			if(isset($_SESSION['error'])){
	        				echo "
	        					<div class='alert alert-danger'>
	        						".$_SESSION['error']."
	        					</div>
	        				";
	        				unset($_SESSION['error']);
	        			}
	        		?>
	        		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		                <ol class="carousel-indicators">
		                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
		                </ol>
		                <div class="carousel-inner">
		                  <div class="item active">
		                    <img src="images/slide1.png" alt="First slide">
		                  </div>
		                  <div class="item">
		                    <img src="images/slide2.png" alt="Second slide">
		                  </div>
		                  <div class="item">
		                    <img src="images/slide3.png" alt="Third slide">
		                  </div>
		                </div>
		                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		                  <span class="fa fa-angle-left"></span>
		                </a>
		                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		                  <span class="fa fa-angle-right"></span>
		                </a>
		            </div>
		            <h2>A propos</h2>
		       		
		       			
						   <div>
						   <p><b>booksStore.com</b>&nbsp; un site de vente en ligne de livres. Le site a ??t?? cr??e en&nbsp;mars 2021&nbsp;dans l'esprit d'une r??elle librairie en ligne permettant ?? ses visiteurs d???effectuer les achats de leurs ouvrages pr??f??r??s d???une mani??re&nbsp;fiable et s??curis??e.</span></p>
						   <p><b>Il s'adresse :</b></p>
						   <p>A tout lecteur qui s'int??resse ?? l'??dition en arabe ou en fran??ais et souhaite commander des ouvrages difficile ?? trouver en librairie.</p>
						   <p><b>booksStore.com&nbsp;</b>&nbsp;met ?? la disposition de sa client??le des ouvrages en langue fran??aise et arabe dans des domaines divers que la fiction, l???histoire, la philosophie, la litt??rature, les romans, les livres illustr??s et les sciences sociales.</p>
						   <p><span> </span></p>
						   </div>


		       		
	        	</div>
	        	<div class="col-sm-3">
	        		<?php include 'includes/sidebar.php'; ?>
	        	</div>
	        </div>
	      </section>
	     
	    </div>
	  </div>
  
  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>