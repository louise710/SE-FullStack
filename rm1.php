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
        #addModal .modal-content,
        #editModal .modal-content {
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #888;
        }

        #addModal .modal-content {
            margin: 3% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 45%;
            height: 75%;
        }


        #editModal .modal-content {
            width: 45%;
            height: 75%;
        }

        .close {
            color: #aaa;
            font-size: 28px;
            font-weight: bold;
            display: block;
            text-align: right;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            font-family: var(--bs-font-sans-serif);
            margin-bottom: 5%;
        }

        th {
            background-color: white;
            color: black;
            padding: 12px;
            text-align: center;
        }

        td {
            padding: 6px;
            border: 1px solid #ddd;
            text-align: center;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        button:hover {
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
                    <h2 class="mt-4">RM209</h2>
                    <table class="table table-default" style="background-color: #00000008;">
        <tr>
            <th class="text-center">Devices</th>
            <th class="text-center">Power Status</th>
            <th class="text-center">Device Status</th>
        </tr>
        <tr>
            <td class="text-center">Lights</td>
            <td class="text-center"><button class="btn btn-danger" onclick="execute('rm209L1')" id="rm209L1">OFF</button></td>
            <td class="text-center"><button class="btn btn-danger" id="statL1">OFF</button></td>
        </tr>
        <tr>
            <td class="text-center">CO</td>
            <td class="text-center"><button class="btn btn-danger" onclick="execute('rm209L2')" id="rm209L2">OFF</button></td>
            <td class="text-center"><button class="btn btn-danger" id="statL2">OFF</button></td>
        </tr>
        <tr>
            <td class="text-center">AC 1</td>
            <td class="text-center"><button class="btn btn-danger" onclick="execute('rm209AC1')" id="rm209AC1">OFF</button></td>
            <td class="text-center"><button class="btn btn-danger" id="statAC1">OFF</button></td>
        </tr>
        <tr>
            <td class="text-center">AC 2</td>
            <td class="text-center"><button class="btn btn-danger" onclick="execute('rm209AC2')" id="rm209AC2">OFF</button></td>
            <td class="text-center"><button class="btn btn-danger" id="statAC2">OFF</button></td>
        </tr>
    </table>
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            Schedule
                            <button class="add" onclick="addModal()" style="position: absolute; right: 2%;">Add Schedule</button>
                        </div>
                        <div class="card-body">
                            <?php
                        include 'db.php';

                        $sql = "SELECT * FROM sched where rm_id = 1 order by day, time_in asc";

                        // Prepare and execute the query
                        $stmt = $conn->prepare($sql);
                        if ($stmt === false) {
                            die("Error preparing statement: " . $conn->error);
                        }
                        $stmt->execute();
                        $result = $stmt->get_result();

                        // Check if the query was successful
                        if ($result === false) {
                            die("Error executing query: " . $stmt->error);
                        }

                        // Output table data
                        echo "<table id='datatablesSimple' class='table'>
                        <thead>  
                            <tr>
                                <th>Time In</th>
                                <th>Time Out</th>
                                <th>Date</th>
                                <th>Faculty ID</th>
                                <th>Room ID</th>
                                <th>Settings</th>
                            </tr>
                        </thead>
                        <tbody>";
                        while ($row = $result->fetch_assoc()) {
                            echo "<tr>
                                    <td>" . $row["time_in"] . "</td>
                                    <td>" . $row["time_out"] . "</td>
                                    <td>" . $row["day"] . "</td>
                                    <td>" . $row["fid"] . "</td>
                                    <td>" . $row["rm_id"] . "</td>
                                    <td><button onclick=\"openModal({$row['sched_id']})\">Update</button>
                                    <button onclick=\"confirmDelete('{$row['sched_id']}')\"><strong>Delete</strong></button></td>
                                  </tr>";
                        }

                        echo "</tbody>
                                </table>";

                        $stmt->close();
                        $conn->close();
                        ?>
                        </div>
                        <div id="addModal" class="modal">
                            <div class="modal-content">
                                <span class="close" onclick="closeAddModal()">&times;</span>
                                <?php include 'schedadd.php'; ?>
                            </div>
                        </div>
                        <div id="editModal" class="modal">
                            <div class="modal-content">
                                <span class="close" onclick="closeModal()">&times;</span>
                                <div id="schedupdate"></div>
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
    <script>
        function onConnect() {
            // mqtt.subscribe("main/client/AC");
            mqtt.subscribe("main/web/AC");
            mqtt.subscribe("main/web/stat/AC");
            mqtt.subscribe("main/web/lights");
        }

        window.onload = function() {
            MQTTconnect();
            restoreButtonStates();
        };

        function onMessageArrived(message) {
            console.log("Message Arrived: " + message.payloadString);
            var topic = message.destinationName;
            var msg = message.payloadString;

            if (topic === "main/web/AC") {
                var id = msg.substring(0, 8);
                var status = msg.substring(8);
                handleButtonStatus(id, status);
            }
            if (topic === "main/web/lights") {
                var id = msg.substring(0, 7);
                var status = msg.substring(7);
                handleButtonStatus(id, status);
            }
            if (topic === "main/web/stat/AC") {
                if (msg === "rm209AC1on") {
                    updateButton(document.getElementById("statAC1"), "ON");
                } else if (msg === "rm209AC1off") {
                    updateButton(document.getElementById("statAC1"), "OFF");
                }
                if (msg === "rm209AC2on") {
                    updateButton(document.getElementById("statAC2"), "ON");
                } else if (msg === "rm209AC2off") {
                    updateButton(document.getElementById("statAC2"), "OFF");
                }
            }
            if (topic === "main/web/stat/lights") {
                if (msg === "rm209L1on") {
                    updateButton(document.getElementById("statL1"), "ON");
                } else if (msg === "rm209L1off") {
                    updateButton(document.getElementById("statL1"), "OFF");
                }
                if (msg === "rm209L2on") {
                    updateButton(document.getElementById("statL2"), "ON");
                } else if (msg === "rm209L2off") {
                    updateButton(document.getElementById("statL2"), "OFF");
                }
            }
        }

        function handleButtonStatus(id, status) {
            var button = document.getElementById(id);
            if (!button) {
                console.error("Button with id '" + id + "' not found");
                return;
            }
            if (status === "on") {
                button.style.backgroundColor = "#04AA6D";
                button.innerText = "ON";
                button.classList.remove("btn-danger");
                button.classList.add("btn-success");
            } else if (status === "off") {
                button.style.backgroundColor = "#DC3545";
                button.innerText = "OFF";
                button.classList.remove("btn-success");
                button.classList.add("btn-danger");
            }
            localStorage.setItem(id, status);
        }

        function updateButton(button, status) {
            if (!button) {
                console.error("Button element is not found.");
                return;
            }

            if (status === "ON") {
                button.style.backgroundColor = "#04AA6D";
                button.innerText = "ON";
                button.classList.remove("btn-danger");
                button.classList.add("btn-success");
            } else if (status === "OFF") {
                button.style.backgroundColor = "#DC3545";
                button.innerText = "OFF";
                button.classList.remove("btn-success");
                button.classList.add("btn-danger");
            }

            localStorage.setItem(button.id, status);
        }

        function execute(id) {
            var button = document.getElementById(id);
            if (!button) {
                console.error("Button with id '" + id + "' not found");
                return;
            }
            var currentStatus = button.innerText.toLowerCase();
            var command = (currentStatus === "on") ? "off" : "on";

            sendCommand(id + command);
        }
        function toggleLights(buttonId) {
            var button = document.getElementById(buttonId);
            var currentStatus = button.innerText.toLowerCase();
            var command = (currentStatus === "on") ? "off" : "on";
            
            sendCommand(buttonId + command);
        }

        function sendCommand(command) {
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "mqtt.php?command=" + command, true);
            xhr.send();
        }
        
        function restoreButtonStates() {
            var buttons = document.querySelectorAll("button[id^='rm209']");
            buttons.forEach(function(button) {
                var id = button.id;
                var status = localStorage.getItem(id);
                if (status) {
                    handleButtonStatus(id, status);
                    updateButton(button, status.toUpperCase());
                }
            });
        }
    function addModal() {
        document.getElementById("addModal").style.display = "block";
    }

    function closeAddModal() {
        document.getElementById("addModal").style.display = "none";
    }

    function confirmDelete(sched_id) {
        var confirmDelete = confirm('Are you sure you want to delete?');
        if (confirmDelete) {
            window.location.href = 'schedremove.php?sched_id=' + sched_id;
        }
    }

    function openModal(sched_id) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("schedupdate").innerHTML = this.responseText;
                document.getElementById("editModal").style.display = "block";
            }
        };
        xhttp.open("GET", "schedupdate.php?sched_id=" + sched_id, true);
        xhttp.send();
    }

    function closeModal() {
        document.getElementById("editModal").style.display = "none";
    }
    </script>
</body>

</html>
