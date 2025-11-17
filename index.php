<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <script src="mqttws31.js"></script>
    <title>Smart Classroom Management System</title>
    <style>
            #addModal .modal-content {
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 40%;
            height: 65%;
            }

            #editModal .modal-content {
                margin: 5% auto;
                padding: 20px;
                border: 1px solid #888;
                width: 45%;
                height: 65%;
            }

            .close {
                color: #aaa;
                font-size: 28px;
                font-weight: bold;
                display: block;
                margin-left: 10px auto;

            }

            .close:hover,
            .close:focus {
                color: black;
                text-decoration: none;
                cursor: pointer;
            }
            table{
                border-collapse: collapse;
                width: 100%;
                font-family: var(--bs-font-sans-serif);
                margin-bottom: 5%;
            }
            th{
                background-color: white;
                color: black;
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: center;

            }
            tr td{
                padding: 6px;
                border: 1px solid #ddd;
            }
            tr{
                text-align: left;
                text-align: center;
            }
            tr:nth-child(even){
                background-color: #f2f2f2;
            }
            tr:hover{
                background-color: #ddd;
            }
            button:hover{
                background-color: #04AA6D;
                color: white;
            }
       
        </style>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

</head>
<body class="sb-nav-fixed">
    <?php include 'header.php';?>
<div id="layoutSidenav">
    <?php include 'sidenav.php';?>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                    <h1 class="mt-4">HOME</h1>
                <h1 class="mt-4"></h1>
                    <table class="table table-default" style="background-color: #00000008;">
                        <tr>
                            <th class="text-center">Rooms</th>
                            <th class="text-center">AC 1</th>
                            <th class="text-center">AC 2</th>
                            <th class="text-center">Lights</th>
                            <th class="text-center">CO</th>
                            <th class="text-center">Device Status</th>
                        </tr>
                        <tr>
                            <td class="text-center">rm209</td>
                            <td class="text-center"><button class="btn btn-danger" id="rm209AC1">OFF</button></td>
                            <td class="text-center"><button class="btn btn-danger" id="rm209AC2" >OFF</button></td>
                            <td class="text-center"><button class="btn btn-danger" id="rm209L1" >OFF</button></td> 
                            <td class="text-center"><button class="btn btn-danger" id="rm209L2" >OFF</button></td>
                            <td class="text-center"><button class="btn btn-danger" id="rm209DS">Not Active</button></td>
                        </tr>
                        <tr>
                            <td class="text-center">Rm208</td>
                            <td class="text-center"><button class="btn btn-danger" id="rm208AC1">OFF</button></td>
                            <td class="text-center"><button class="btn btn-danger" id="rm208AC2">OFF</button></td>
                            <td class="text-center"><button class="btn btn-danger" id="rm208L1">OFF</button></td>
                            <td class="text-center"><button class="btn btn-danger" id="rm208L2">OFF</button></td>
                            <td class="text-center"><button class="btn btn-danger" id="rm208DS">Not Active</button></td>
                        </tr>
                        <tr>
                            <td class="text-center">Rm03</td>
                            <td class="text-center"><button class="btn btn-danger">OFF</button></td>
                            <td class="text-center"><button class="btn btn-danger">OFF</button></td>
                            <td class="text-center"><button class="btn btn-danger">OFF</button></td>
                            <td class="text-center"><button class="btn btn-danger">OFF</button></td>
                        </tr>
                        <tr>
                            <td class="text-center">Rm04</td>
                            <td class="text-center"><button class="btn btn-danger">OFF</button></td>
                            <td class="text-center"><button class="btn btn-danger">OFF</button></td>
                            <td class="text-center"><button class="btn btn-danger">OFF</button></td>
                            <td class="text-center"><button class="btn btn-danger">OFF</button></td>
                    </table>
                    <div id="addModal" class="modal">
                            <div class="modal-content">
                                <span class="close" onclick="closeAddModal()">&times;</span>

                                <?php include 'addclient1.php'; ?>
                            </div>
                        </div>
                    <div id="editModal" class="modal">
                            <div class="modal-content">
                                <span class="close" onclick="closeModal()">&times;</span>
                                <div id="update1"></div>
                            </div>
                        </div>
                </div>
        </main>
        <?php include 'footer.php'; ?>
    </div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.6.4.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>
<script src="js/datatables-simple-demo.js"></script>

</body>
</html>