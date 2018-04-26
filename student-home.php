<?php

$title = "Dashboard";

$date = date('Y-m-d');
$email = $_SESSION['email'];
$userID = $_SESSION['userID'];

require_once 'includes/db.php';
require_once 'includes/authenticate.php';
require_once 'includes/cookie-check.php';

if (!isset($_SESSION)) {
    session_start();
}

// Check for appointments
$query = "SELECT * FROM Appointment WHERE studentID = '$studentID' ";
$result = mysqli_query($connect, $query);
$rows = mysqli_num_rows($result);

// Check for today's appointments
$query2 = "SELECT * FROM Appointment WHERE studentID = '$studentID' AND date = '$date' ";
$result2 = mysqli_query($connect, $query2);
$rows2 = mysqli_num_rows($result2);

require_once 'includes/head.php';

?>

    <body>

        <?php

require 'components/navbar.php';

?>

            <div class="container">

                <h3>Your Dashboard</h3>
                <a href="student-appointment.php">Schedule an appointment</a>
                <div class="dashboard">
                    <div id=#item1>
                        <h4>Curent Appointments: </h4>

                        <?php

if ($rows > 0) {
    echo "
		<table>
			<tr>
				<th>Professor</th>
				<th>Date</th>
				<th>Time</th>
				<th>Purpose</th>
				<th>Status</th>
			</tr>
			";
    while ($row = mysqli_fetch_assoc($result)) {
        echo "
				<tr>
				<td>" . $row['professorID'] . "</td>
				<td>" . $row['date'] . "</td>
				<td>" . $row['starts'] . " - " . $row['ends'] . "</td>
				<td>" . $row['purpose'] . "</td>
				<td>" . $row['status'] . "</td>
			</tr>
				";
    }
    echo "
		</table>
		";
} else {
    echo "
		<p>No appointments scheduled yet</p>
		";
}

?>

                    </div>
                    <div id=#item2>
                        <h4>Today: </h4>
                        <?php
if ($rows2 > 0) {
    while ($row2 = mysqli_fetch_array($result2)) {
        echo "
			<ul>
				<li>Professor: " . $row2['professorID'] . "</li>
				<li>Time: " . $row2['starts'] . " - " . $row2['ends'] . "</li>
				<li>Purpose:  " . $row2['purpose'] . "</li>
				<li>Status:  " . $row2['status'] . "</li>
			</ul>
			";
    }
} else {
    echo "
				<p>Nothing scheduled for today</p>
				";
}
?>
                    </div>
                </div>

                <?php

mysqli_free_result($result);

?>

            </div>

            <?php

require 'components/footer.php';

?>

                <?php

require 'includes/scripts.php';

?>

    </body>

    </html>