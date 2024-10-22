
@extends($activeTemplate.'layouts.master')
@section('content')


  <style>
        .quick_amount p {
            display: inline-block;
            text-align: center;
            font-size: 16px;
            border: 1px #dcdada solid;
            color: #000;
            width: 32%;
            background: #f7f7f7;
            border-radius: 4px;
            padding: 6px 0;
        }

        .quick_amount {
            width: 100%;
        }

        .chen {
            font-weight: 600;
        }

        .chen i {
            display: block;
            font-size: 12px;
            font-style: normal;
            font-weight: 100;
        }

        .quick_amount p.active {
            border: #0160bf 1px solid;
            color: #fff;
            border-radius: 4px;
            background: #0160bf;

        }

        .quick_method p {
            display: inline-block;
            text-align: center;
            font-size: 16px;
            border: 1px #dcdada solid;
            color: #000;
            width: 32%;
            background: #f7f7f7;
            border-radius: 4px;
            padding: 6px 0;
        }

        .quick_method {
            width: 100%;
        }

        .quick_method p.active {
            border: #0160bf 1px solid;
            color: #fff;
            border-radius: 4px;
            background: #0160bf;

        }

        .btn-lg {
            height: 34px;
            padding: 0px 0px;
            font-size: 14px;
            border-radius: 30px;
        }

        .appContent {

            border-radius: 16px 16px 0 0;
        }
    </style>
</head>

<body>

    <!-- Page loading -->
    <div class="loading">
        <div class="spinner-grow"></div>
    </div>
    <!-- * Page loading -->

    <!-- App Header -->
    <div class="appHeader">
        <div class="left">
            <a href="{{route ('user.home')}}" class="icon goBack">
                <i class="icon ion-ios-arrow-back"></i>
            </a>
        </div>
        <!-- 使用ThinkPHP多语言模式 -->
        <div class="pageTitle">Withdrawal</div>
        <div class="right">
            <a  class="link">  
      
            </a>
        </div> 
    </div>
    <div id="appCapsule" class="pb-2">

        <div class="appContent pb-0 mt-3">




   <form action="{{route('user.withdraw.submit')}}" method="post" enctype="multipart/form-data">
        @csrf
     <div class="form-group">

                  
                
                </div>
   
   
   
   
   
   

                <div class="form-group">
        

                                <div class="my-4">
                                <center>    <p>      @php
                                echo $withdraw->method->description;
                            @endphp</p></center>
                                </div>
             
                </div>
                <div class="row form-group">
                    <div class="quick_method" style="display:none">
                                                <button  type="submit"     class="chen active" >Submit Withdraw</button>
                                            </div>
                </div>

                                          
              
     
                    <center>  



        <x-viser-form identifier="id" identifierValue="{{ $withdraw->method->form_id }}" />
        </center>
                </div>







                <div>
                          
                                                    
                                                    
                    
                    <button type="submit"  class="btn btn-primary btn-lg btn-block">
                        <!-- 使用ThinkPHP多语言模式 -->
                        
                   Submit Withdraw                </button>
                </div>

                <div class="form-group">
                    <br/>
                  
            
                        
                                                    
                                                   
                                                  
           
           
           
                    </div>
                </div>

            </form>

        </div>

    </div>


