<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>[Server]BoostCourse Project B</title>
		<style>
						
			a:link { 
				color: black; text-decoration: none;
			}
 			a:visited { 
 				color: black; text-decoration: none;
 			}
 			a:hover { 
 				color: black; text-decoration: none;
 			}
		
		
            body{
                background: #fff;
                margin:0;
                padding:0;
            }
            .content {
                position: relative;
            }
            .up_side {
                height:60px;
            }

            .middle_side {
                margin: 0 auto;
                width: 450px;
                position: relative;
                display: block;
                height: 600px;
                padding: 20px 50px;
            }

            .comment_top {
                text-align: center;
            }

            .content_main {
                margin-top: 45px;
                padding-left: 30px;
                padding-right: 30px;
            }

            .index {
                font-size: 15px;
                color: #5f6368;
            }

            .input_context {
                border-radius: 4px;
                color: #202124;
                font-size: 17px;
                height: 28px;
                margin: 1px 1px 0 1px;
                padding: 13px 15px;
                width:90%;
                box-sizing: inherit;

            }

            .content {
                margin-top: 34px;
            }

            .button_content {
                margin-top: 45px;
                display: flex;
            }


            .input_box {
                width:100%;
                box-sizing: inherit;
                margin-top: 5px;
            }

            .span_box_1, .span_box_2 {
                border-radius: 3px;
                color: #202124;
                font-size: 14px;
                height: 18px;
                margin: 1px 7px 0 1px;
                padding: 10px 11px;
                width:70px;
                box-sizing: inherit;
                border-radius: 8px;
                border: 1px solid #dadce0;
                position: relative;
                cursor: pointer;
                display: inline-block;
                text-align: center;       
            }

            .span_box_2 {
                background: #4285f4;
                color: #fff; 
                padding-left: 12px;
            }

            .span_box_2:hover, .span_box_1:hover{
                box-shadow: 0 5px 5px 0 rgba(0,0,0,0.24),0 0 0 0 rgba(0,0,0,0.19);
            }
            .span_box_2:active, .span_box_1:active {
                outline: 5px;
                color: #fff;
                background: #91baf7;
            }

            .foot_button_left {
                width:90%;
            }

            .foot_button_right {
                width:90%;
                display: flex;
            }
            

            input:focus {
                border-radius: 2px;
            }
            
            button:focus {
            	border-radius: 2px;	
            }
            
            .footer_contet {
            	text-align: center;
            }


        </style>
		
	</head>
	<body>
		<div id="wrap">
            <div class="content">
                <div class="up_side"></div>
                <div class="middle_side">
                    <div class="comment_top">
                        <h1>
                            <span>할일 등록</span>
                        </h1>
                    </div>  
                    <div class="content_main">
                    	<form method="post" action="../bs_pbapi/todoadd">
                    	<div class="form_content">
	                        <div class="content">
	                            <span class="index">어떤일인가요?</span>
	                        </div>
	                        <div class="input_box">
	                            <input type="text" class="input_context" name="title" maxlength="24" placeholder="BoostCourse 공부하기(24자까지)" required="required">
	                        </div>
	                        
	                        <div class="content">
	                            <span class="index">누가 할일인가요?</span>
	                        </div>
	                        <div class="input_box">
	                            <input type="text" class="input_context" name="name" placeholder="홍길동" required="required">
	                        </div>
	                        <div class="content">
	                            <span class="index">우선순위를 선택하세요</span>
	                        </div>
	                        <div class="input_box">
	                            <input type="radio" class= "input_radio" name="sequence" value="1" required="required"/> 1순위
	                            <input type="radio" class= "input_radio" name="sequence" value="2"/> 2순위
	                            <input type="radio" class= "input_radio" name="sequence" value="3"/> 3순위
	                        </div>
                        </div>
                        
                        
                        <div class="button_content">
                            <div class="foot_button_left">
                                <div class="span_box_1">
                                    <span><a href="../bs_pbapi/main.html">&lt; 이전</a></span>
                                </div>
                            </div>
                            <div class="foot_button_right">
                                
                                <input type="submit" value="제출" class="span_box_2">
                                                              
                                <button type="button" class="span_box_2" onclick="clear_put()">내용지우기</button>
                            </div>					
                        </div>
                        </form>
                    </div>
                </div>
            </div>
			<footer class="footer_contet">Korconut</footer>
			
		</div>
	</body>
	<script>
		function clear_put() {
			var el_1 = document.getElementsByClassName('input_context');
			var el_2 = document.getElementsByClassName('input_radio');
			
			for (var i=0; i<el_1.length; i++){
				el_1[i].value = '';
			}
			
			for (var j=0; j<el_2.length; j++){
				el_2[j].checked = false;
			}
		}
	</script>
</html>