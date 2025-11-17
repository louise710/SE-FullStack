<?php

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="Smart Classroom Management System - Subject Management" />
    <meta name="author" content="" />
    <title>Smart Classroom Management System</title>
    <style>
        
        .close {
            color: #aaa;
            font-size: 28px;
            font-weight: bold;
            display: block;
            margin-left: auto;
            cursor: pointer;
            padding: 0 10px; /* Added padding for easier clicking */
            opacity: 0.8;
        }

        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
            opacity: 1;
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
                    <h1 class="mt-4"><i class="fas fa-book-open me-2"></i>SUBJECT MANAGEMENT</h1>
                    <div class="card mb-4 shadow"> <div class="card-header bg-primary text-white d-flex justify-content-between align-items-center">
                            <div>
                                <i class="fas fa-table me-1"></i>
                                **Subject List**
                            </div>
                            <button class="btn btn-warning btn-sm" onclick="addModal()">
                                <i class="fas fa-plus me-1"></i> Add Subject
                            </button>
                        </div>
                        <div class="card-body">
                            <?php
                            // include 'db.php'; tbc
                            
                            $sql = "SELECT * FROM sub";
                            
                            $stmt = $conn->prepare($sql);
                            
                            if ($stmt === false) {
                                die("Error preparing statement: " . $conn->error);
                            }
                            
                            $stmt->execute();
                            $result = $stmt->get_result();
                            
                            if ($result === false) {
                                die("Error executing query: " . $stmt->error);
                            }
                            
                            
                            echo "<div class='table-responsive'>"; 
                            echo "<table id='datatablesSimple' class='table table-striped table-hover table-bordered w-100'>"; 
                            echo "      <thead class='table-dark'>  <tr>
                                            <th>Subject ID</th>
                                            <th>Title (Code)</th>
                                            <th>Description</th>
                                            <th>Operations</th>
                                        </tr>
                                    </thead>
                                    <tbody>";
                            
                            while ($row = $result->fetch_assoc()) {
                                
                                echo "<tr>
                                        <td>" . htmlspecialchars($row["sid"]) . "</td>
                                        <td>" . htmlspecialchars($row["code"]) . "</td>
                                        <td>" . htmlspecialchars($row["s_desc"]) . "</td>
                                        <td>
                                            <button class='btn btn-info btn-sm text-white me-2' onclick=\"openModal({$row['sid']})\"><i class='fas fa-edit'></i> Update</button>
                                            <button class='btn btn-danger btn-sm' onclick=\"confirmDelete('{$row['sid']}')\"><i class='fas fa-trash-alt'></i> Delete</button>
                                        </td>
                                      </tr>";
                            }
                            
                            echo "      </tbody>
                                </table>";
                            echo "</div>"; 
                            
                            $stmt->close();
                            $conn->close();
                            ?>

                        </div>

                        <div id="addModal" class="modal fade" tabindex="-1" role="dialog"> 
                            <div class="modal-dialog modal-md modal-dialog-centered" role="document"> 
                                <div class="modal-content">
                                    <div class="modal-header bg-success text-white">
                                        <h5 class="modal-title"><i class="fas fa-plus-circle me-2"></i>Add New Subject</h5>
                                        <button type="button" class="btn-close" onclick="closeAddModal()" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <?php include 'subadd.php'; ?>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div id="editModal" class="modal fade" tabindex="-1" role="dialog">
                            <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header bg-primary text-white">
                                        <h5 class="modal-title"><i class="fas fa-edit me-2"></i>Update Subject Details</h5>
                                        <button type="button" class="btn-close" onclick="closeModal()" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <div id="subupdate"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </main>
            <?php include 'footer.php'; ?>
        </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
    <script src="js/datatables-simple-demo.js"></script>

    <script>
        
        function addModal() {
            
            $('#addModal').modal('show');
        }

        function closeAddModal() {
            $('#addModal').modal('hide');
        }

        function openModal(subjectId) {
                    });
            $('#editModal').modal('show'); // Temporarily show it
        }

        function closeModal() {
            $('#editModal').modal('hide');
        }
    </script>
</body>
</html>
