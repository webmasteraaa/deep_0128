<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Admin - Add Product</title>

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
            
            
            .tooltip {
    position: relative;
    display: inline-block;
    border-bottom: 1px dotted black;
}

.tooltip .tooltiptext {
    visibility: hidden;
    width: 120px;
    background-color: #555;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 5px 0;
    position: absolute;
    z-index: 1;
    bottom: 125%;
    left: 50%;
    margin-left: -60px;
    opacity: 0;
    transition: opacity 1s;
}

.tooltip .tooltiptext::after {
    content: "";
    position: absolute;
    top: 100%;
    left: 50%;
    margin-left: -5px;
    border-width: 5px;
    border-style: solid;
    border-color: #555 transparent transparent transparent;
}

.tooltip:hover .tooltiptext {
    visibility: visible;
    opacity: 1;
}
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

            .navie{
                max-height: 250px;
                overflow-y:scroll; 
            }
            .marginitem{
                
                    margin-right: 5px;
    margin-left: 5px;

            }
        </style>
    </head>

    <body onload="onloadd()">
        <div class="modal fade modal-ext" id="modal-registerd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <!--Content-->
                <div class="modal-content">
                    <!--Header-->
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h3 id="msg"><i class="fa fa-user"></i> Registration Done!</h3>
                    </div>
                    <!--Body-->

                </div>
                <!--/.Content-->
            </div>
        </div>
             
        <div id="wrapper">
            <%@ include file="navHeader.jsp" %>
            <div id="page-wrapper">

                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Products
                            </h1>
                            <ol class="breadcrumb">
                                <li>
                                    <i class="fa fa-dashboard"></i>  <a href="index.jsp">Dashboard</a>
                                </li>
                              
                            </ol>
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="row">
                        <div class="col-lg-6">
                              <%
                connections.DBController cb = new connections.DBController();
                cb.setPid(Integer.parseInt(request.getParameter("eid")));
                ResultSet rs=cb.editProduct();
                rs.next();
               
          %>
                            <form onsubmit="return btnSaveProduct(event);" role="form" id="addProductForm" enctype="multipart/form-data">

                                <div class="form-group">
                                    <label>Product Name</label>
                                    <input class="form-control" id="txtProductName" required value="<%=rs.getString("name")%>">
                                </div>
                                <div class="form-group">
                                    <label>Product Price</label>
                                    <input class="form-control" type="number" id="txtProductPrice" required>
                                </div>
                                <div class="form-group">
                                    <label>Available Quantity</label>
                                    <input class="form-control" type="number" id="txtProductQuantity" required>
                                </div>

                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea class="form-control" rows="3" id="txtProductDesc" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Images</label>
                                    <input type="file" accept="image/*" multiple id="inputImages">
                                </div>

                                <div class="form-group">
                                    <label>Category</label>
                                    <select class="form-control" id="selectCatgories">                                 
                                    </select>
                                </div>
                                <button type="submit" id="btnSave"  class="btn btn-default">Update</button>
                                </form>

                        </div>
                       
                            </div>
                            
                        </div>
                    </div>
                    <!-- /.row -->

                </div>
                <!-- /.container-fluid -->

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
