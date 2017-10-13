
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>

<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Admin - All Products</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/sb-admin.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script>
            
        </script>
        <style>
            .color{
                background-color: #f65a5b;
            }

            .navbar-inverse .navbar-nav>.active>a, .navbar-inverse .navbar-nav>.active>a:focus, .navbar-inverse .navbar-nav>.active>a:hover {
                color: #fff;
                background-color: #b35656;
            }

            .navbar-inverse .navbar-nav>li>a {
                color: #f5f5f5;
            }
            .navbar-inverse .navbar-brand {
                color: #ffffff;
            }
            .top-nav>li>a {
                color: #fff;
            }
        </style>
    </head>

    <body class="color" onload="fillTable();">
       
                    <!--Body-->

                
                <!--/.Content-->
            
       
        <div id="wrapper">
            <%@ include file="navHeader.jsp" %>
            <div id="page-wrapper">

                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                All Products
                            </h1>
                            <ol class="breadcrumb">
                                <li>
                                    <i class="fa fa-dashboard"></i>  <a href="index.jsp">Dashboard</a>
                                </li>
                                <li class="active">
                                    <i class="fa fa-file"></i> Products
                                </li>
                              
                                   
                               <div class="table-responsive">
                                   <table class="table table-bordered table-hover table-striped" border="1px" id="users">
                                    <thead>
                                        <tr>
                                            <th>Product Name</th>
                                            <th>Description</th>
                                            <th>Quantity</th>
                                            <th>Price</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                     <%
           connections.DBController m=new connections.DBController();
           //m.setDeducation(request.getParameter("deducation"));
          // m.setDexperience(request.getParameter("dexperience"));
          // m.setDtech(request.getParameter("dtech"));
           ResultSet rs=m.showproduct();
           while(rs.next())
           {
               // String des=new String(rs.getString("description"));
               // String des1=des.substring(15, 20);
            %>
                                    <tr>
                                        <td><%=rs.getString("name")%></td>  
                                        <td><%=rs.getString("description") %></td>
                                           <td><%=rs.getString("quantity")%></td> 
                                            <td><%=rs.getString("price")%></td> 
                                            
                                            <td colspan="2"><a href="deleteproduct.jsp?did=<%= rs.getInt("ID") %>"><span class="glyphicon glyphicon-remove pull-right marginitem"></span></a>
                                              <a href="editproduct.jsp?eid=<%= rs.getInt("ID") %>"><i class="fa fa-fw fa-edit"></i></a></td> 
                                    </tr>
                                    <%
            }
            %>
                                </table>
                            </div>
            
                                <ul class="pager">
                                <li >
                                    <a ><button id="btnprev" onclick="btnPrev()" type="button" class="btn btn-link btn-sm">Previous</button></a>
                                </li>
                                <li >
                                    <a ><button  id="btnnext" onclick="btnNext()" type="button" class="btn btn-link btn-sm">Next</button></a>
                                </li>
                                </ul>
                            </ol>
                        </div>
                    </div>
                    <!-- /.row -->

                </div>
                <!-- /.container-fluid -->
                <table class="table" id="DataTable">
                </table>
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

    </body>

</html>
