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
            
            .card_size{
                width: 300PX;
            }
            .card-header_style_5{
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
                    title: 'Item Report Summary',
                    is3D: true,
                    
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
                ["Laptop", <?php echo $count_MostBorrowed_items_Laptop; ?>, "#001524"],
                ["Desktop", <?php echo $count_MostBorrowed_items_Desktop; ?>, "#15616d"],
                ["Workstation", <?php echo $count_MostBorrowed_items_Workstation; ?>, "#6f2028"],
                ["Monitor", <?php echo $count_MostBorrowed_items_Monitor; ?>, "color: #587613"],
                ["Keyboard", <?php echo $count_MostBorrowed_items_Keyboard; ?>, "#ff7d00"],
                ["Mouse", <?php echo $count_MostBorrowed_items_Mouse; ?>, "#78290f"],
                ["Headset", <?php echo $count_MostBorrowed_items_Headset; ?>, "#001524"],
                ["Speaker", <?php echo $count_MostBorrowed_items_Speaker; ?>, "color: #15616d"],
                ["Flashdrive", <?php echo $count_MostBorrowed_items_Flashdrive; ?>, "#6f2028"],
                ["External HDD", <?php echo $count_MostBorrowed_items_ExternalHDD; ?>, "#587613"],
                ["HDMI Cable", <?php echo $count_MostBorrowed_items_HDMICable; ?>, "#ff7d00"],
                ["Display Port Cable", <?php echo $count_MostBorrowed_items_DisplayPort; ?>, "color: #78290f"],
                ["VGA Cable", <?php echo $count_MostBorrowed_items_VGA; ?>, "#001524"],
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
       
              <div style="height: 50px">
              </div>
              
              
            <!-- ROW 1 -->
            <div class="row">
                <div class="col">
                    <div class="row">
                        
                        <!-- 1st column -->
                        <div class="col">
                            <!-- report summary div -->
                            <div style="padding-left:20px; padding-bottom:60px">
                                <div class="border border-5   shadow-lg mb-5 bg-white rounded" style="width: 810px; height: 510px; padding-left:80px" id="report_summary_chart_div">
                                </div> 
                            </div>
                        </div>
                        
                        <!-- 2nd column -->
                        <div class="col">
                            <!-- most borrowed items div -->
                            <div style="padding-bottom:30px">
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
                        
                        <!-- 1st column -->
                        <div class="col">
                            <!-- div -->
                            <div style="padding-left:20px; padding-bottom:10px">
                                
                                <div class="border border-5   shadow-lg mb-5 bg-white rounded" style="" id="">
                                    <div class="card">
                                      <div class="card-header" style="background-color: #15616d ; color: #dbe2ef">
                                          <h5 style="text-align:left">RECENTLY BORROWED ITEMS</h5>
                                        </div>
                                      <div class="card-body">  
                                        <div class="col" style="overflow:scroll ; height:350px; width: 550px">
                                            <!-- Table Grid-->
                                            <table class="table table-hover border-dark" border=1>

                                                <thead>
                                                    <tr style="text-align:center" padding: 70px 0;>
                                                        <th>BORROWED DATE / TIME</th>
                                                        <th>CURRENTLY BORROWED BY</th>
                                                        <th>CONTROL NUMBER</th>
                                                        <th>ASSET TAG NUMBER</th>
                                                        <th>ITEM NUMBER</th>
                                                        <th>CATEGORY</th>
                                                        <th>SERIAL NUMBER</th>
                                                        <th>ITEM DETAILS</th>
                                                        <th>REMARKS</th>
                                                        <th>STATUS</th>

                                                    </tr>
                                                </thead>

                                                <tbody style="text-align:center">

                                                    <?php echo $tr_recent_borrowed_items ?>

                                                </tbody>

                                            </table>
                                        </div>
                                      </div>
                                    </div>
                                </div> 
                                
                            </div>
                        </div>
                        
                        <!-- 2nd column -->
                        <div class="col">
                            <!-- div -->
                            <div style="padding-bottom:60px">
                                <div class="border border-5   shadow-lg mb-5 bg-white rounded" style="" id="">
                                    
                                    
                                    
                                </div> 
                            </div>
                        </div>
                        
                        <!-- 3rd column -->
                        <div class="col">
                            <!-- div -->
                            <div style="padding-bottom:60px">
                                <div class="border border-5   shadow-lg mb-5 bg-white rounded" style="" id="">
                                </div> 
                            </div>
                        </div>
                        
                
                </div>
              </div>
            </div>
              
              
              
              

              
              <!-- ROW 3 -->
            <div class="row">

                <div class="col">
                    <div class="row" style="padding-bottom: 30px">
                        <!-- available assets div -->
                        <div class="col" style="padding-left:60px">
                            <div class="card  card_size shadow-lg mb-5 bg-white rounded">
                                <div class="card-header card-header_style_5">
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
                            <div class="card card_size shadow-lg mb-5 bg-white rounded">
                                <div class="card-header card-header_style_5">
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
                            <div class="card card_size shadow-lg mb-5 bg-white rounded">
                                <div class="card-header card-header_style_5">
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
                            <div class="card card_size shadow-lg mb-5 bg-white rounded">
                                <div class="card-header card-header_style_5">
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
                            <div class="card card_size shadow-lg mb-5 bg-white rounded">
                                <div class="card-header card-header_style_5">
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
