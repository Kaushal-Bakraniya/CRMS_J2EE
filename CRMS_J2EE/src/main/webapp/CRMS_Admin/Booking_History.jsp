<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Booking History - CRMS Admin</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link rel="stylesheet"
	href="http
    s://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- SideBar Starts -->
		<%@ include file="includes/sidebar.jsp"%>
		<!-- SideBar Ends -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- TopBar Starts -->
				<%@ include file="includes/topbar.jsp"%>
				<!-- TopBar Ends -->

				<div class="container">
					<div class="row">
						<div class="col-lg-6  mt-3 mb-4">
							<h2 class="text-secondary ml-2">Booking History</h2>
						</div>
						<div class="col-lg-6 mt-3 mb-4 text-right">
							<input type="text" id="srch" onkeyup="search()"
								class="form-control w-50 d-inline border-secondary"
								placeholder="Search Car By Reg No." />
						</div>
					</div>
				</div>

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<div class="table-responsive" style="width: 97%">
						<table class="table text-center">
							<thead>
								<tr>
									<th scope="col">ID</th>
									<th scope="col">Reg_No</th>
									<th scope="col">User_ID</th>
									<th scope="col">Receipt</th>
									<th scope="col">Contact</th>
									<th scope="col">Pickup_Date</th>
									<th scope="col">Return_Date</th>
									<th scope="col">Days</th>
									<th scope="col">Days_Late</th>
									<th scope="col">Basic_Rent</th>
									<th scope="col">Other_Fine</th>
									<th scope="col">Extra_Charge</th>
									<th scope="col">Final_Payment</th>
									<th scope="col">Note</th>
									<th scope="col">Driver_ID</th>
									<th scope="col">Update_Record</th>
								</tr>
							</thead>
							<tbody id="tbl">
								<%
								String selectQuery = "select * from tbl_oldbookings ORDER BY ID DESC";

								if (session.getAttribute("access") != null) {
									if (!session.getAttribute("access").equals("ALL")) {
										selectQuery = "select * from tbl_oldbookings where city = '" + session.getAttribute("access")
										+ "' ORDER BY ID DESC";
									}
								}

								ResultSet res = getData.select(selectQuery);

								while (res.next()) {
								%>
								<tr id="myTr">
									<th scope="row"><%=res.getInt(1)%></th>
									<td><a
										href="Cars_ViewDetails.jsp?RegNo=<%=res.getString(3)%>"><%=res.getString(3)%></a></td>
									<td><a
										href="Users_ViewDetails.jsp?ID=<%=res.getString(2)%>"><%=res.getInt(2)%></a></td>
									<td><a href="../pdf_receipt?ID=<%=res.getString(1)%>">Download</a></td>
									<td><%=res.getString(4)%></td>
									<td><%=res.getString(5)%></td>
									<td><%=res.getString(6)%></td>
									<td><%=res.getString(7)%></td>
									<td><%=res.getString(8)%></td>
									<td><%=res.getString(10)%></td>
									<td><%=res.getString(11)%></td>
									<td><%=res.getString(12)%></td>
									<td><%=res.getString(13)%></td>
									<td><%=res.getString(14)%></td>
									<td><a
										href="Drivers_Details.jsp?ID=<%=res.getString(15)%>"><%=res.getString(15)%></a></td>
									<td><a href="Booking_EditRecord.jsp?ID=<%=res.getInt(1)%>">
											Update_Record</a></td>
								</tr>
								<%
								}
								%>
							</tbody>
						</table>
					</div>


				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	
	<script src="vendor/search.js"></script>
	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

</body>

</html>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
