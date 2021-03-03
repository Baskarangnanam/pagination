<?php


$db = mysqli_connect("localhost", "root", "", "assignment");

if (isset($_GET['page'])) {
    $page = $_GET['page'];
} else {
    $page = 1;
}

$num_per_page = 10;
$start_from = ($page - 1) * 10;

// $query = "select * from datas limit $start_from, $num_per_page";

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>

<body>
    <div>
        <br><br><br>
        <div class="table-width">
            <table class="table-text-align table-bordered mb-5">
                <thead>
                    <th>Product number</th>
                    <th>Order Date</th>
                    <th>Currency</th>
                    <th>Status</th>
                </thead>
                <tbody>
                    <?php
                    $c7 = mysqli_query($db, "SELECT * FROM `datas` limit $start_from, $num_per_page");

                    while ($c8 = mysqli_fetch_array($c7)) {
                        echo "<tr><td>" . $c8['PO number'] . "</td>";
                        echo "<td>" . $c8['Date'] . "</td>";

                        echo "<td>" . $c8['Currency'] . "</td>";

                        if ($c8['Status'] == 0) {
                            echo  "<td><form action=update.php method=post>
                 <input type=hidden value=" . $c8['id'] . "  name='id'>
        <button type='submit' class='btn btn-primary' name=view >Ready </button>
    </form></td></tr>";
                        } else {
                            echo "<td><button  name=view type='button' class='btn btn-success'>Printed </button></td></tr>";
                        }
                    } ?>
                </tbody>
            </table>

            <?php
                $pr_query = "select * from datas";
                $pr_result = mysqli_query($db, $pr_query);
                $total_record= mysqli_num_rows($pr_result);
                $total_page =ceil( $total_record/$num_per_page);

                    if($page>1){
                        echo " <a href='index.php?page=".($page-1)."' class='btn btn-primary'>Previous</a>";
                    }


                    for($i=1; $i<$total_page; $i++)
                    {
                        echo " <a class='btn' href='index.php?page=".$i."'>$i</a>";
                    }

                    if($i>$page){
                        echo " <a href='index.php?page=".($page+1)."' class='btn btn-primary'>Next</a>";
                    }

            ?>

                   

        </div>
    </div>
</body>

</html>