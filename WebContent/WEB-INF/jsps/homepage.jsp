<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<link href="css/homepage.css" type="text/css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Homepage</title>
</head>

<script type="text/javascript">
	var jsonCategoryData = {
		"category" : [ {
			"id" : "1",
			"name" : "Cars & Bikes"
		}, {
			"id" : "2",
			"name" : "Mobiles & Tablets"
		}, {
			"id" : "3",
			"name" : "Electronics & Appliances"
		}, {
			"id" : "4",
			"name" : "Real State"
		}, {
			"id" : "5",
			"name" : "Fashion & Lifestyle"
		}, {
			"id" : "6",
			"name" : "Jobs"
		}, {
			"id" : "7",
			"name" : "Entertainment"
		},
		/* {
		"id": "8",
		"name": "Services"
		}, */
		{
			"id" : "9",
			"name" : "Pets & Pet Care"
		}, {
			"id" : "10",
			"name" : "Education & Learning"
		} ]
	};

	$(document)
			.ready(
					function() {
						var listItems = '<option selected="selected" value="0">Select Category -</option>';

						for (var i = 0; i < jsonCategoryData.category.length; i++) {
							listItems += "<option value='" + jsonCategoryData.category[i].name + "'>"
									+ jsonCategoryData.category[i].name
									+ "</option>";
						}

						$("#category_field").html(listItems);
					});
</script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$("#category_field")
								.change(
										function() {
											var val = $(this).val();
											if (val == "Cars & Bikes") {
												$("#subcategory_field")
														.html(
																"<option value='Bicycles'>Bicycles</option><option value='Bikes & Scooters'>Bikes & Scooters</option><option value='Cars'>Cars</option><option value='Commercial Vechicles'>Commercial Vechicles</option><option value='Spare Parts - Accessories'>Spare Parts - Accessories</option><option value='Other Vechicles'>Other Vechicles</option>");
											} else if (val == "Mobiles & Tablets") {
												$("#subcategory_field")
														.html(
																"<option value='Accessories'>Accessories</option><option value='Mobile Phones'>Mobile Phones</option><option value='Tablets'>Tablets</option>");
											} else if (val == "Electronics & Appliances") {
												$("#subcategory_field")
														.html(
																"<option value='Cameras'>Cameras</option><option value='Computer Peripherels'>Computer Peripherels</option><option value='Cassettes - CDs - DVDs'>Cassettes - CDs - DVDs</option><option value='Computers'>Computers</option><option value='Storage Devices'>Storage Devices</option><option value='Electronic Accessories'>Electronic Accessories</option><option value='Industrial Machines'>Industrial Machines</option><option value='Laptops - Netbooks'>Laptops - Netbooks</option><option value='Music Systems'>Music Systems</option><option value='Phone - FAX'>Phone - FAX</option><option value='Photocopiers - Xerox Machines'>Photocopiers - Xerox Machines</option><option value='Printers - Scanners'>Printers - Scanners</option><option value='Projectors'>Projectors</option><option value='Security Cameras'>Security Cameras</option><option value='Video Cameras - Handycams'>Video Cameras - Handycams</option><option value='Video Games'>Video Games</option>");
											} else if (val == "Real State") {
												$("#subcategory_field")
														.html(
																"<option value='Building Material'>Building Material</option><option value='Commercial Property for Rent'>Commercial Property for Rent</option><option value='Commercial Property for Sale'>Commercial Property for Sale</option><option value='Flat for Rent'>Flat for Rent</option><option value='Flat for Sale'>Flat for Sale</option><option value='Hostel - PG - Roommate'>Hostel - PG - Roommate</option><option value='House for Rent'>House for Rent</option><option value='House for Sale'>House for Sale</option><option value='Land - Plot for Lease'>Land - Plot for Lease</option><option value='Land - Plot for Sale'>Land - Plot for Sale</option>");
											} else if (val == "Fashion & Lifestyle") {
												$("#subcategory_field")
														.html(
																"<option value='Bags'>Bags</option><option value='Books'>Books</option><option value='Clothing'>Clothing</option><option value='Everything Else'>Everything Else</option><option value='Footwear'>Footwear</option><option value='Jewellery'>Jewellery</option><option value='Toys'>Toys</option><option value='Watches'>Watches</option>");
											} else if (val == "Jobs") {
												$("#subcategory_field")
														.html(
																"<option value='Admin - Support Jobs'>Admin - Support Jobs</option><option value='Aviation - Airline Jobs'>Aviation - Airline Jobs</option><option value='Call Centre - BPO Jobs'>Call Centre - BPO Jobs</option><option value='Designers Jobs'>Designers Jobs</option><option value='Engineering Jobs'>Engineering Jobs</option><option value='Finance - Legal Jobs'>Finance - Legal Jobs</option><option value='Government Jobs'>Government Jobs</option><option value='Health - Pharma Jobs'>Health - Pharma Jobs</option><option value='Hotel Jobs'>Hotel Jobs</option><option value='HR Jobs'>HR Jobs</option><option value='IT Jobs'>IT Jobs</option><option value='Management - Consulting Jobs'>Management - Consulting Jobs</option><option value='Media Jobs'>Media Jobs</option><option value='Freelancing Jobs'>Freelancing Jobs</option><option value='Sales Jobs'>Sales Jobs</option><option value='Teaching Jobs'>Teaching Jobs</option>");
											} else if (val == "Entertainment") {
												$("#subcategory_field")
														.html(
																"<option value='Acting - Modelling Roles'>Acting - Modelling Roles</option><option value='Acting Schools'>Acting Schools</option><option value='Actor - Model Portfolios'>Actor - Model Portfolios</option><option value='Art Directors - Editors'>Art Directors - Editors</option><option value='Fashion Designers - Stylists'>Fashion Designers - Stylists</option><option value='Make Up - Hair'>Make Up - Hair</option><option value='Modelling Agencies'>Modelling Agencies</option><option value='Musicians'>Musicians</option><option value='Photographers - Cameramans'>Photographers - Cameramans</option><option value='Script Writers'>Script Writers</option><option value='Set Designers'>Set Designers</option><option value='Sound Engineers'>Sound Engineers</option><option value='Other Entertainment'>Other Entertainment</option>");
												/* } else if (val == "Services") {
												$("#size").html("<option value='Cameras'>Cameras</option><option value='Computer Peripherels'>Computer Peripherels</option><option value='Cassettes - CDs - DVDs'>Cassettes - CDs - DVDs</option><option value='Computers'>Computers</option><option value='Storage Devices'>Storage Devices</option><option value='Electronic Accessories'>Electronic Accessories</option><option value='Industrial Machines'>Industrial Machines</option><option value='Laptops - Netbooks'>Laptops - Netbooks</option><option value='Music Systems'>Music Systems</option><option value='Phone - FAX'>Phone - FAX</option><option value='Photocopiers - Xerox Machines'>Photocopiers - Xerox Machines</option><option value='Printers - Scanners'>Printers - Scanners</option><option value='Projectors'>Projectors</option><option value='Security Cameras'>Security Cameras</option><option value='Video Cameras - Handycams'>Video Cameras - Handycams</option><option value='Video Games'>Video Games</option>");
												 */} else if (val == "Pets & Pet Care") {
												$("#subcategory_field")
														.html(
																"<option value='Pet Adoption'>Pet Adoption</option><option value='Pet Care - Accessories'>Pet Care - Accessories</option><option value='Pet Clinics'>Pet Clinics</option><option value='Pet Foods'>Pet Foods</option><option value='Pet Training & Grooming'>Pet Training & Grooming</option><option value='Pets'>Pets</option>");
											} else if (val == "Education & Learning") {
												$("#subcategory_field")
														.html(
																"<option value='Career Counseling'>Career Counseling</option><option value='Coaching & Tuitions'>Coaching & Tuitions</option><option value='Dance - Music Classes'>Dance - Music Classes</option><option value='Distance Learning Courses'>Distance Learning Courses</option><option value='Hobby Classes'>Hobby Classes</option><option value='Play Schools'>Play Schools</option><option value='Professional & Short Term Courses'>Professional & Short Term Courses</option><option value='Text Books & Study Material'>Text Books & Study Material</option><option value='Workshops'>Workshops</option>");
											}
										});
					});
</script>


<script type="text/javascript">
	var jsonCityData = {
		"city" : [ {
			"id" : "1",
			"name" : "Andaman & Nicobar Islands"
		}, {
			"id" : "2",
			"name" : "Andhra Pradesh"
		}, {
			"id" : "3",
			"name" : "Arunachal Pradesh"
		}, {
			"id" : "4",
			"name" : "Assam"
		}, {
			"id" : "5",
			"name" : "Bihar"
		}, {
			"id" : "6",
			"name" : "Chandigarh"
		}, {
			"id" : "7",
			"name" : "Chattisgarh"
		}, {
			"id" : "8",
			"name" : "Dadra & Nagar Haveli"
		}, {
			"id" : "9",
			"name" : "Delhi"
		}, {
			"id" : "10",
			"name" : "Goa"
		}, {
			"id" : "11",
			"name" : "Gujarat"
		}, {
			"id" : "12",
			"name" : "Haryana"
		}, {
			"id" : "13",
			"name" : "Himachal Pradesh"
		}, {
			"id" : "14",
			"name" : "Jammu & Kashmir"
		}, {
			"id" : "15",
			"name" : "Jharkhand"
		}, {
			"id" : "16",
			"name" : "Karnataka"
		}, {
			"id" : "17",
			"name" : "Kerala"
		}, {
			"id" : "18",
			"name" : "Madhya Pradesh"
		}, {
			"id" : "19",
			"name" : "Maharashtra"
		}, {
			"id" : "20",
			"name" : "Manipur"
		}, {
			"id" : "21",
			"name" : "Meghalaya"
		}, {
			"id" : "22",
			"name" : "Mizoram"
		}, {
			"id" : "23",
			"name" : "Nagaland"
		}, {
			"id" : "24",
			"name" : "Odisha"
		}, {
			"id" : "25",
			"name" : "Pondicherry"
		}, {
			"id" : "26",
			"name" : "Punjab"
		}, {
			"id" : "27",
			"name" : "Sikkim"
		}, {
			"id" : "28",
			"name" : "Tamil Nadu"
		}, {
			"id" : "29",
			"name" : "Telangana"
		}, {
			"id" : "30",
			"name" : "Tripura"
		}, {
			"id" : "31",
			"name" : "Uttar Pradesh"
		}, {
			"id" : "32",
			"name" : "Uttaranchal"
		}, {
			"id" : "33",
			"name" : "West Bengal"
		} ]
	};
	$(document)
			.ready(
					function() {
						var listItems = '<option selected="selected" value="0">Select City -</option>';
						for (var i = 0; i < jsonCityData.city.length; i++) {
							listItems += "<option value='" + jsonCityData.city[i].id + "'>"
									+ jsonCityData.city[i].name + "</option>";
						}
						$("#city").html(listItems);
					});
</script>


<script src="js/helpflyer.js"></script>


<body>



	<div class="container">
		<div class="row" style="background: #F8F8F8;">
			<div class="col-xs-3"></div>
			<div class="col-xs-6"  style="text-align: center;">
				<label class="label_advertisetext" style="font-family: cursive; font-size:18px;">Want to sell or advertise anything?</label>
				<a id="header_postfreead" class="button postfreeadbutton btn" href="/Classifieds/PostFreeAd">Post Free Ad</a>
			</div>
			<div class="col-xs-3"></div>
		</div>
		
		</br>
		
		
		<div class="row">
			<div class="col-xs-10 col-sm-10 col-lg-6" style="padding: 0px;">
				<label class="label_advertisetext" style="font-family: cursive; font-size:18px;">Free classifieds available for you,</label>
				<span style="color: #F6A828; font-size: 83%;">choose your options:</span>
			</div>
			<div class="col-xs-2 col-sm-2 col-lg-6"></div>
			
		</div>
		
		<div class="row" style="background: #F8F8F8;">
			<div class="col-xs-12">
				<div class="row">
					<div class="col-xs-3 main_categories"><a href="/vehicles/" title="Vehicles"><span class="span_main_categories">Vehicles<br/><img src="img/auto.png" width="40" height="40" class="mt"/></span></a></div>
					<div class="col-xs-3 main_categories"><a href="/realestate/" title="Real Estate"><span class="span_main_categories">Real Estate<br/><img src="img/real-estate.png" width="40" height="40" class="mt"/></span></a></div>
					<div class="col-xs-3 main_categories"><a href="/mobile-tablets/" title="Mobile & Tablets"><span class="span_main_categories">Mobile & Tablets<br/><img src="img/mobile-tablets.png" width="40" height="40" class="mt"/></span></a></div>
					<div class="col-xs-3 main_categories"><a href="/electronics/" title="Electronics"><span class="span_main_categories">Electronics<br/><img src="img/electronics.png" width="40" height="40" class="mt"/></span></a></div>
				</div>
				<div class="row">
					<div class="col-xs-3 main_categories"><a href="/jobs/" title="Jobs"><span class="span_main_categories">Jobs<br/><img src="img/jobs.png" width="40" height="40" class="mt"/></span></a></div>
					<div class="col-xs-3 main_categories"><a href="/fashion-lifestyle/" title="Fashion & Lifestyle"><span class="span_main_categories">Fashion & Lifestyle<br/><img src="img/fashion-lifestyle.png" width="40" height="40" class="mt"/></span></a></div>
					<div class="col-xs-3 main_categories"><a href="/services/" title="Services"><span class="span_main_categories">Services<br/><img src="img/services.png" width="40" height="40" class="mt"/></span></a></div>
					<div class="col-xs-3 main_categories"><a href="/home-furniture/" title="Home & Furniture"><span class="span_main_categories">Home & Furniture<br/><img src="img/home-furniture.png" width="40" height="40" class="mt"/></span></a></div>
				</div>
			</div>
		</div>
		
		</br></br>
		<div class="row">
			<div class="col-xs-10 col-sm-10 col-lg-6" style="padding: 0px;">
				<label class="label_advertisetext" style="font-family: cursive; font-size:18px;">Tell us what you need</label>
			</div>
			<div class="col-xs-2 col-sm-2 col-lg-6"></div>
			
		</div>
		
		<div class="row" style="background: #F8F8F8;">
			<div class="col-xs-12">
				<form id="email-form" name="email-form" data-name="Email Form" class="form_section3">
				
					<div class="row" style="padding-top: 10px;">
						<div class="col-xs-0 col-sm-0 col-lg-3"></div>
						<div class="col-xs-12 col-sm-4 col-lg-2">
							<select id="category_field" name="category_field" class="form_categorysection3_category"></select>
						</div>
						<div class="col-xs-12 col-sm-4 col-lg-2">
							<select id="subcategory_field" name="subcategory_field" class="form_categorysection3_subcategory">
								<option value="">Select Subcategory -</option>
							</select>
						</div>
						<div class="col-xs-12 col-sm-4 col-lg-2">
							<select id="city" name="city" class="city">
								<option value="">Select one...</option>
								<option value="First">First Choice</option>
								<option value="Second">Second Choice</option>
								<option value="Third">Third Choice</option>
							</select>
						</div>
						<div class="col-xs-0 col-sm-0 col-lg-3"></div>
					</div>
					
					</br></br>
					
					<div class="row">
						<div class="col-xs-0 col-sm-0 col-lg-3"></div>
						<div class="col-xs-4 col-sm-4 col-lg-2">
							<input id="Name" type="text" placeholder="Enter your name" name="Name" required="required" data-name="Name"	class="input_name">
						</div>
						<div class="col-xs-4 col-sm-4 col-lg-2">
							<input id="Email" type="text" placeholder="Enter your email" name="Email" required="required" data-name="Email" class="input_email">
						</div>
						<div class="col-xs-4 col-sm-4 col-lg-2">
							<input id="Mobile-No" type="text" placeholder="Enter your mobile no." name="Mobile-No" required="required" data-name="Mobile No"							class="input_mobileno">
						</div>
						<div class="col-xs-0 col-sm-0 col-lg-3"></div>
					</div>
					
					</br></br>
					
					<div class="row" style="padding-bottom: 10px;">
						<div class="col-xs-0 col-sm-5 col-lg-5"></div>
						<div class="col-xs-12 col-sm-2 col-lg-2">
							<input type="submit" value="Submit" data-wait="Please wait..." class="button_tellusneed_submit">
						</div>
						<div class="col-xs-0 col-sm-5 col-lg-5"></div>
					</div>
						
						      
					</form>
			</div>
			
		</div>
		
	</div>


	<!-- <div class="div_middlewrapper">
		<div class="div_section1">
			<div class="textblock_section1">Want to sell or advertise
				anything?</div>
			&nbsp;&nbsp;
			<a href="#" class="button_section1">Post Free Ad</a>
			<button class="button_section1" id="button_section1">Post
				Free Ad</button>
		</div>
		<div class="div_section2">
			<div class="div_section2_heading">
				<div class="textblock_section2">
					Free classifieds available for you, <span
						style="color: #F6A828; font-size: 83%;">choose your
						options:</span>
				</div>
			</div>
			<div class="div_section2_contentwrapper">
				<div class="div_section2_content"></div>
			</div>
		</div>
		<div class="div_section3">
			<div class="div_section3_categorysection">
				<div class="form_section3_category">
					<form id="email-form" name="email-form" data-name="Email Form"
						class="form_section3">
						<select id="category_field" name="category_field"
							class="form_categorysection3_category">
						</select> <select id="subcategory_field" name="subcategory_field"
							class="form_categorysection3_subcategory">
							<option value="">- Select one -</option>
						</select> <select id="city" name="city" class="city">
							<option value="">Select one...</option>
							<option value="First">First Choice</option>
							<option value="Second">Second Choice</option>
							<option value="Third">Third Choice</option>
						</select> <input id="Name" type="text" placeholder="Enter your name"
							name="Name" required="required" data-name="Name"
							class="input_name"> <input id="Email" type="text"
							placeholder="Enter your email" name="Email" required="required"
							data-name="Email" class="input_email"> <input
							id="Mobile-No" type="text" placeholder="Enter your mobile no."
							name="Mobile-No" required="required" data-name="Mobile No"
							class="input_mobileno"> <input type="submit"
							value="Submit" data-wait="Please wait..." class="button_submit">
					</form>
				</div>
			</div>
		</div>
	</div> -->
	
	</br></br>

<div class="callcenterBox">
	<div class="boxcontent">
		<p class="needhelp">Need help?</p>
		<p class="number">Call us at
			<span class="block">
				<a href="tel:1800-000-0000" id="callTollFree">1800-103-3333</a>
			</span>
		</p>
		<p class="color-1">(10am - 7pm all 7 days)</p>
	</div>
	<a href="#" class="slider"></a>
</div>
	

</body>
</html>