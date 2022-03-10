<?php

require_once('nav.php')
    
//TEST COMMIT ADM_HOME 3
    
?>


<html>
    <head>
        <title>Borrowing </title>
    </head>
    
    
 
    <body>
        
        <style>
            .card{
                width: 300PX;
            }
            .card-header{
                background-color: #3c4737;
                color: #dbe2ef;
                width: 300PX;
            } 
        </style>
        
    
        <script type="text/javascript">
            //report summary chart
              google.charts.load('current', {'packages':['corechart']});
              google.charts.setOnLoadCallback(drawChart);

              function drawChart() {

                var data = google.visualization.arrayToDataTable([
                  ['Details', 'Count'],
                  ['Available Assets',     <?php echo $count_avail_items; ?>],
                  ['Borrowed Assets',      <?php echo $count_borrowed_items; ?>],
                  ['On-Going Repair Assets',  <?php echo $count_ongoingRepair_items; ?>],
                  ['For Disposal Assets', <?php echo $count_forDisposal_items; ?>],
                  ['Disposed Assets',    <?php echo $count_Disposed_items; ?>]
                ]);

                var options = {
                  title: 'Report Summary',
                    is3D: true,
                    pieStartAngle: 100,
                };

                var chart = new google.visualization.PieChart(document.getElementById('report_summary_chart_div'));

                chart.draw(data, options);
              }
            
            
            //most borrowed items chart
            google.charts.load('current', {'packages':['corechart']});
            google.charts.setOnLoadCallback(drawChart2);
            
            function drawChart2() {
              var data = google.visualization.arrayToDataTable([
                ["Categoty", "Count", { role: "style" } ],
                ["Laptop", <?php echo $count_MostBorrowed_items_Laptop; ?>, "#b87333"],
                ["Desktop", <?php echo $count_MostBorrowed_items_Desktop; ?>, "silver"],
                ["Workstation", <?php echo $count_MostBorrowed_items_Workstation; ?>, "gold"],
                ["Monitor", <?php echo $count_MostBorrowed_items_Monitor; ?>, "color: #e5e4e2"],
                ["Keyboard", <?php echo $count_MostBorrowed_items_Keyboard; ?>, "#b87333"],
                ["Mouse", <?php echo $count_MostBorrowed_items_Mouse; ?>, "silver"],
                ["Headset", <?php echo $count_MostBorrowed_items_Headset; ?>, "gold"],
                ["Speaker", <?php echo $count_MostBorrowed_items_Speaker; ?>, "color: #e5e4e2"],
                ["Flashdrive", <?php echo $count_MostBorrowed_items_Flashdrive; ?>, "#b87333"],
                ["External HDD", <?php echo $count_MostBorrowed_items_ExternalHDD; ?>, "silver"],
                ["HDMI Cable", <?php echo $count_MostBorrowed_items_HDMICable; ?>, "gold"],
                ["Display Port Cable", <?php echo $count_MostBorrowed_items_DisplayPort; ?>, "color: #e5e4e2"],
                ["VGA Cable", <?php echo $count_MostBorrowed_items_VGA; ?>, "#b87333"],
              ]);

              var view = new google.visualization.DataView(data);
              view.setColumns([0, 1,
                               { calc: "stringify",
                                 sourceColumn: 1,
                                 type: "string",
                                 role: "annotation" },
                               2]);

              var options = {
                title: "Most Borrowed Items",
                width: 900,
                height: 500,
                bar: {groupWidth: "95%"},
                legend: { position: "none" },
              };
              var chart = new google.visualization.ColumnChart(document.getElementById("most_borrowed_items_div"));
              chart.draw(view, options);
            }
            
            
        </script>
  

          <div class="container-fluid">
       
              
              <!-- ROW 1 -->
              <div style="height: 50px">
              </div>
              
              
            <!-- ROW 3 -->
            <div class="row">
                <div class="col">
                    <div class="row">
                        
                        <!-- report summary div -->
                        <div class="col">
                            <div style="padding-left:20px; padding-bottom:60px">
                                <div class="border border-5   shadow-lg mb-5 bg-white rounded" style="width: 810px; height: 510px; padding-left:80px" id="report_summary_chart_div">
                                </div> 
                            </div>
                        </div>

                        <!-- most borrowed items div -->
                        <div class="col">
                            <div style="padding-bottom:60px">
                                <div class="border border-5   shadow-lg mb-5 bg-white rounded" style="" id="most_borrowed_items_div">
                            </div> 
                            </div>
                        </div>
                
                </div>
              </div>
            </div>

              
              <!-- ROW 2 -->
            <div class="row">

                <div class="col">
                    <div class="row">
                        <!-- available assets div -->
                        <div class="col" style="padding-left:60px">
                            <div class="card  shadow-lg mb-5 bg-white rounded">
                                <div class="card-header">
                                    <h5 style="text-align:center">AVAILABLE ITEMS</h5>
                                </div>
                                <div class="card-block">
                                    <strong style="text-align:left ; padding-left:10px">Total Available Assets :</strong> 
                                </div>
                                <div class="card-block">
                                    <h3 style="text-align:right ; padding-right:20px"><?php echo $count_avail_items ?></h3>                    
                                </div>
                                <div class="card-block">
                                    
                                    <div class="col" style="overflow:scroll ; height:650px">
                                <!-- Table Grid-->
                                    <table class="table table-hover border-dark" border=1>

                                        <thead>
                                            <tr style="text-align:center" padding: 70px 0;>    
                                                <th style="font-size:13px">CONTROL NUMBER</th>
                                                <th style="font-size:13px">ASSET TAG NUMBER</th>
                                                <th style="font-size:13px">ITEM NUMBER</th>
                                                <th style="font-size:13px">CATEGORY</th>
                                                <th style="font-size:13px">SERIAL NUMBER</th>
                                                <th style="font-size:13px">ITEM DETAILS</th>
                                                <th style="font-size:13px">REMARKS</th>
                                                <th style="font-size:13px">STATUS</th>

                                            </tr>
                                        </thead>

                                        <tbody style="text-align:center">

                                            <?php echo $tr_borrow ?>

                                        </tbody>

                                    </table>
                                    </div>                   
                                </div>
                            </div>
                        </div>
                        <!-- borrowed assets div -->
                        <div class="col">
                            <div class="card    shadow-lg mb-5 bg-white rounded">
                                <div class="card-header">
                                    <h5 style="text-align:center">BORROWED ITEMS</h5>
                                </div>
                                <div class="card-block">
                                    <strong style="text-align:left ; padding-left:10px">Total Borrowed Assets :</strong> 
                                </div>
                                <div class="card-block">
                                    <h3 style="text-align:right ; padding-right:20px"><?php echo $count_borrowed_items ?></h3>                    
                                </div>
                                <div class="card-block">
                                    <div class="col" style="overflow:scroll ; height:650px">
                                <!-- Table Grid-->
                                    <table class="table table-hover border-dark" border=1>

                                        <thead>
                                            <tr style="text-align:center" padding: 70px 0;>
                                                <th>CONTROL NUMBER</th>
                                                <th>ASSET TAG NUMBER</th>
                                                <th>ITEM NUMBER</th>
                                                <th>CATEGORY</th>
                                                <th>SERIAL NUMBER</th>
                                                <th>ITEM DETAILS</th>
                                                <th>REMARKS</th>
                                                <th>STATUS</th>
                                                <th>CURRENTLY BORROWED BY</th>

                                            </tr>
                                        </thead>

                                        <tbody style="text-align:center">

                                            <?php echo $tr_return ?>

                                        </tbody>

                                    </table>
                                    </div>                   
                                </div>
                            </div>
                        </div>
                        <!-- on-going assets div -->
                        <div class="col">
                            <div class="card    shadow-lg mb-5 bg-white rounded">
                                <div class="card-header">
                                    <h5 style="text-align:center">ON-GOING REPAIR</h5>
                                </div>
                                <div class="card-block">
                                    <strong style="text-align:left ; padding-left:10px">Total On-Going Repair Assets :</strong> 
                                </div>
                                <div class="card-block">
                                    <h3 style="text-align:right ; padding-right:20px"><?php echo $count_ongoingRepair_items ?></h3>                  
                                </div>
                                <div class="card-block">
                                    <div class="col" style="overflow:scroll ; height:650px">
                                <!-- Table Grid-->
                                    <table class="table table-hover border-dark" border=1>

                                        <thead>
                                            <tr style="text-align:center" padding: 70px 0;>
                                                <th>CONTROL NUMBER</th>
                                                <th>ASSET TAG NUMBER</th>
                                                <th>ITEM NUMBER</th>
                                                <th>CATEGORY</th>
                                                <th>SERIAL NUMBER</th>
                                                <th>ITEM DETAILS</th>
                                                <th>STATUS</th>
                                            </tr>
                                        </thead>

                                        <tbody style="text-align:center">

                                            <?php echo $tr_showOnGoingRepair ?>

                                        </tbody>

                                    </table>
                                    </div>                   
                                </div>
                            </div>
                        </div>
                        <!-- for disposal assets div -->
                        <div class="col">
                            <div class="card    shadow-lg mb-5 bg-white rounded">
                                <div class="card-header">
                                    <h5 style="text-align:center">FOR DISPOSAL</h5>
                                </div>
                                <div class="card-block">
                                    <strong style="text-align:left ; padding-left:10px">Total For Disposal Assets :</strong> 
                                </div>
                                <div class="card-block">
                                    <h3 style="text-align:right ; padding-right:20px"><?php echo $count_forDisposal_items ?></h3>                    
                                </div>
                                <div class="card-block">
                                    <div class="col" style="overflow:scroll ; height:650px">
                                <!-- Table Grid-->
                                    <table class="table table-hover border-dark" border=1>

                                        <thead>
                                            <tr style="text-align:center" padding: 70px 0;>
                                                <th>CONTROL NUMBER</th>
                                                <th>ASSET TAG NUMBER</th>
                                                <th>ITEM NUMBER</th>
                                                <th>CATEGORY</th>
                                                <th>SERIAL NUMBER</th>
                                                <th>ITEM DETAILS</th>
                                                <th>STATUS</th>
                                            </tr>
                                        </thead>

                                        <tbody style="text-align:center">

                                            <?php echo $tr_showForDisposal ?>

                                        </tbody>

                                    </table>
                                    </div>                   
                                </div>
                            </div>
                        </div>
                        <!-- disposed assets div -->
                        <div class="col">
                            <div class="card    shadow-lg mb-5 bg-white rounded">
                                <div class="card-header">
                                    <h5 style="text-align:center">DISPOSED</h5>
                                </div>
                                <div class="card-block">
                                    <strong style="text-align:left ; padding-left:10px">Total Disposed Assets :</strong> 
                                </div>
                                <div class="card-block">
                                    <h3 style="text-align:right ; padding-right:20px"><?php echo $count_Disposed_items ?></h3>                    
                                </div>
                                <div class="card-block">
                                    <div class="col" style="overflow:scroll ; height:650px">
                                <!-- Table Grid-->
                                    <table class="table table-hover border-dark" border=1>

                                        <thead>
                                            <tr style="text-align:center" padding: 70px 0;>
                                                <th>CONTROL NUMBER</th>
                                                <th>ASSET TAG NUMBER</th>
                                                <th>ITEM NUMBER</th>
                                                <th>CATEGORY</th>
                                                <th>SERIAL NUMBER</th>
                                                <th>ITEM DETAILS</th>
                                                <th>STATUS</th>
                                            </tr>
                                        </thead>

                                        <tbody style="text-align:center">

                                            <?php echo $tr_showDisposed ?>

                                        </tbody>

                                    </table>
                                    </div>                   
                                </div>
                            </div>
                        </div>
                        
                            
                            
                            
                    </div>

                </div>

            </div>
              

         

       
                  
                  
                  
    </div>
              
   
     
    </body>
    
    
</html>
