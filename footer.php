				<footer class="col-lg-12">
					<div class="row">
						<div class="col-12 signature">
							© Copyright Otoï 2020 Site | Template by <a href="#">OtoïSoftWar</a>
						</div>
					</div>
				</footer>
			</div>
		</div>
		<!-- Script -->
		<script src="public/js/script.js" style="text/javasript"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<!-- <script sr="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> -->
		<script src="public/js/parallax.js/parallax.min.js"></script>
		<!-- jQuery -->
		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
		<!-- SSG JS -->
		<script type="text/javascript" src="public/js/popup/js/ssg.js"></script>
		
		<script>
			$(document).ready(function () {
			$("a.navigation__link").bind("click", function (e) {
				e.preventDefault(); // prevent hard jump, the default behavior

				var target = $(this).attr("href"); // Set the target as variable

				// perform animated scrolling by getting top-position of target-element and set it as scroll target
				$("html, body")
				.stop()
				.animate(
					{
					scrollTop: $(target).offset().top,
					},
					600,
					function () {
					location.hash = target; //attach the hash (#jumptarget) to the pageurl
					}
				);

				return false;
			});
			});

			$(window)
			.scroll(function () {
				var scrollDistance = $(window).scrollTop() + 80;

				// Show/hide menu on scroll
				//if (scrollDistance >= 850) {
				//		$('nav').fadeIn("fast");
				//} else {
				//		$('nav').fadeOut("fast");
				//}

				// Assign active class to nav links while scolling
				$(".page-section").each(function (i) {
				if ($(this).position().top <= scrollDistance) {
					$(".navigation a.active").removeClass("active");
					$(".navigation a").eq(i).addClass("active");
				}
				});
			})
  			.scroll();
		</script>
	</body>
</html>