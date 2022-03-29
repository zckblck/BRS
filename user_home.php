<?php

require_once('nav.php');

?>







<html>
    <head>
        <title>Borrowing System</title>
    </head>
    
    
    
    
    <body>
        
        <style>
            
            body{
                background: linear-gradient(141deg, #f9f9f7 11%, #efeee8 22%, #e5e3d9 51%, #dad8ca 75%, #d0cdbb 88%);
            }
        
        </style>


          <div class="container-fluid">
              
              
              <!-- ROW 1 -->
              <div class="row" style="padding-top:40px">
                  
                  <div class="col">
                      <div class="row">
                          <div class="col" style="height:750px; padding-left:150px">
                              <a type="button" class="btn btn-warning btn-lg   shadow-lg rounded" name="btn_borrow"  style="height:50% ; width:600px" data-bs-toggle="modal" data-bs-target="#BORROW_MODAL" data-bs-whatever="@mdo"><br><br><br><br><br><br><h3>Borrow</h3></a>
                              <div class="row" style="height:15px"></div>
                              <?php 
                              if($_SESSION['ROLE'] == "USER"){ 
                              ?>
                              <a type="button" class="btn btn-danger btn-lg    shadow-lg rounded" name="btn_return" style="height:50% ; width:600px" data-bs-toggle="modal" data-bs-target="#RETURN_MODAL" data-bs-whatever="@mdo"><br><br><br><br><br><br><h3>Return</h3></a> 
                              <?php 
                              } 
                              if($_SESSION['ROLE'] == "LDAP_USER"){
                              ?>
                              <a type="button" class="btn btn-lg     shadow-lg rounded" style="height:50% ; width:600px; background-color:#8c8b95"  disabled><br><br><br><br><br><h3>"You can only Return on Authorized Department Returner"</h3></a>
                              <?php
                              }
                              ?>
                          </div>
                      </div>
                  </div>
                  
                  <div class="col" style="position:right; padding-right:150px">
                      
                    
                      
                      
                      <div class="border border-5   shadow-lg mb-5 bg-white rounded" style="" id="">
                                    <div class="card">
                                      <div class="card-header" style="background-color: #15616d ; color: #dbe2ef">
                                          <strong>SELECT TO VIEW AVAILABLE ITEMS</strong>

                                            <form method="post">
                                                <div class="row">
                                                    <div class="col">
                                                        <?php echo create_select_dropdown("SELECT * from categories ",$connection,"dropdown_categories","category","category","form-control") ?> 
                                                    </div>
                                                    <div class="col">
                                                        <button class="btn btn-success" type="submit" name="btn_filter">Check Availability</button>
                                                    </div> 
                                                </div>
                                            </form>
                                          
                                        </div>
                                      <div class="card-body">  
                                        <div class="col" style="overflow:scroll ; height:600px">
                                            <!-- Table Grid-->
                                            <table class="table table-hover border-dark" border=1>

                                                <thead>
                                                    <tr style="text-align:center" padding: 70px 0; class="gray">
                                                        <th style="font-size:13px">CONTROL NUMBER</th>
                                                        <th style="font-size:13px">ASSET TAG NUMBER</th>
                                                        <th style="font-size:13px">ITEM NUMBER</th>
                                                        <th style="font-size:13px">CATEGORY</th>
                                                        <th style="font-size:13px">SERIAL NUMBER</th>
                                                        <th style="font-size:13px">ITEM DETAILS</th>
                                                        <th style="font-size:13px">STATUS</th>

                                                    </tr>
                                                </thead>

                                                <tbody style="text-align:center">

                                                    <?php echo $tr_item ?>

                                                </tbody>

                                            </table>
                                        </div>
                                      </div>
                                    </div>
                                </div>
                      
                      
                    
                      

                  </div> 
              </div>
       
         </div>
   
     
    </body>
    
    
</html>
