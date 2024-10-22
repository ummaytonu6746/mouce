	@extends($activeTemplate . 'layouts.master')
@section('content')
   
	<style>
	* {
	margin: 0;
	padding: 0;
	text-decoration: none;
	list-style: none;
	user-select: none;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
	-moz-outline-style: none;
}

input,
button {
	border: none;
	outline: none;
}
html{
    text-align: center;
}
body {
    width: 100%;
    height: 100%;
	background: #fff;
	overflow-x: hidden;
    overflow-y: auto;
    max-width: 640px;
    margin: 0 auto;
}

.clear {
	clear: both;
}

.bba_login_bg {
	width: 100%;
	height: 100vh;
	position: fixed;
	top: 0;
	left: 0;
	z-index: -1;
	background: url(../img/bg.png) no-repeat;
	background-size: cover;
}

.bba_cash_bg {
	width: 100%;
	height: 100vh;
	position: fixed;
	top: 0;
	left: 0;
	z-index: -1;
	background: url(../img/sbg.png) no-repeat;
	background-size: cover;
}

.bba_login_logo {
	height: 5rem;
	width: 100%;
	display: flex;
	justify-content: center;
	margin: 5rem 0 3rem;
}

.bba_login_logo img {
	height: 5rem;
}

.bba_login_form {
	width: 88%;
	margin-left: 6%;
}

.bba_login_form .input {
	width: 100%;
	height: 3rem;
	background: rgba(0, 0, 0, 0.5);
	margin-bottom: 1rem;
	padding: 0 1rem;
	box-sizing: border-box;
	position: relative;
	border-radius: 3rem;
}

.bba_login_form .input .icon {
	height: 1.5rem;
	display: flex;
	justify-content: space-between;
	align-items: center;
	width: 3.25rem;
	position: absolute;
	top: 0.75rem;
	left: 1rem;
	z-index: 66;
}

.bba_login_form .input .icon img {
	height: 1.25rem;
	width: auto;
	flex-shrink: 0;
}

.bba_login_form .input .icon p {
	color: #fff;
}

.bba_login_form .input input {
	width: 100%;
	height: 3rem;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 77;
	background: transparent;
	padding-left: 3rem;
	box-sizing: border-box;
	font-size: 14px;
	color: #fff;
}

.bba_login_form .input:nth-child(1) input {
	padding-left: 5rem;
	box-sizing: border-box;
}

.bba_login_form .input input::placeholder {
	color: #fff;
	font-size: 14px;
}

.bba_login_form .input button {
	height: 3rem;
	position: absolute;
	bottom: 0;
	right: 0;
	font-size: 15px;
	background: rgba(0, 0, 0, 0.5);
	border-radius: 3rem;
	color: #fff;
	padding: 0 1rem;
}

.bba_login_form .more {
	display: flex;
	justify-content: space-between;
	font-size: 14px;
	color: #fff;
}

.bba_login_form .more a {
	color: #fff;
}

.bba_login_form .btn {
	width: 70%;
	height: 2.5rem;
	line-height: 2.5rem;
	background: url(../img/lbtn.png) no-repeat;
	background-size: 100% 100%;
	display: block;
	font-size: 16px;
	margin: 2rem 15%;
	border-radius: 2.5rem;
	color: #fff;

}

.bba_login_downaap {
	width: 50%;
	height: 2rem;
	background: rgba(0, 0, 0, 0.3);
	position: fixed;
	bottom: 4rem;
	border-radius: 2rem;
	display: flex;
	justify-content: center;
	align-items: center;
	left: 25%;
}

.bba_login_downaap img {
	height: 1rem;
}

.bba_login_downaap p {
	font-size: 14px;
	color: #fff;
	margin-left: 1rem;
}

.bba_home_logo img,
.bba_home_video img {
	width: 100%;
	float: left;
}

.bba_home_nav {
	width: 100%;
}

.bba_home_nav li {
	width: 25%;
	flex-shrink: 0;
	float: left;
	padding: 1.5rem 0;
	box-sizing: border-box;
}

.bba_home_nav li .icon {
	width: 3rem;
	height: 3rem;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 0.5rem;
	margin: 0 auto;
}

.bba_home_nav li:nth-child(1) .icon {
	background: #5b67f1;
}

.bba_home_nav li:nth-child(2) .icon {
	background: #ff7141;
}

.bba_home_nav li:nth-child(3) .icon {
	background: #ffab2f;
}

.bba_home_nav li:nth-child(4) .icon {
	background: #02a7f9;
}

.bba_home_nav li .icon img {
	height: 1.5rem;
}

.bba_home_nav li p {
	font-size: 14px;
	text-align: center;
	margin-top: 0.5rem;
}

.bba_home_notice {
	width: 92%;
	height: 2.5rem;
	display: flex;
	justify-content: flex-start;
	margin-left: 4%;
	align-items: center;
	border-top: 1px #a3a3a3 dashed;
	border-bottom: 1px #a3a3a3 dashed;
}

.bba_home_notice img {
	height: 1rem;
	margin-right: 0.5rem;
}

.bba_home_notice p {
	font-size: 14px;
	color: #333;
}

.bba_home_product_title {
	display: flex;
	justify-content: space-between;
	margin: 2.5rem 0 1.5rem;
	padding-left: 4%;
	box-sizing: border-box;
	height: 2rem;
}

.bba_home_product_title .left {
	height: 2rem;
	display: flex;
	justify-content: flex-start;
	align-items: center;
	color: #02389a;
}

.bba_home_product_title .left span {
	height: 1rem;
	width: 0.25rem;
	background: #02389a;
	border-radius: 2rem;
	margin-right: 0.5rem;
}

.bba_home_product_title img {
	height: 2rem;
}


.bba_home_product {
	width: 92%;
	margin: 1.5rem 4%;
}

.bba_home_product li {
	width: 100%;
	padding: 1rem;
	box-sizing: border-box;
	background: #f5f5ff;
	filter: drop-shadow(0px 4px 5px rgba(0, 0, 255, 0.2));
	border-radius: 0.5rem;
	display: flex;
	justify-content: space-between;
	margin-bottom: 1.5rem;
}

.bba_home_product img {
	height: 8.5rem;
	flex-shrink: 0;
	max-width: 7rem;
}

.bba_home_product .text {
	width: 100%;
}

.bba_home_product .text h2 {
	width: 100%;
	height: 2rem;
	line-height: 2rem;
	margin-bottom: 0.5rem;
}

.bba_home_product .text p {
	width: 100%;
	height: 1.5rem;
	line-height: 1.5rem;
	font-size: 14px;
	color: #666;
}

.footer {
	width: 100%;
	height: 5rem;
}

footer {
	width: 100%;
	background: #fff;
	position: fixed;
	bottom: 0;
	left: 0;
	z-index: 96;
}

footer ul {
	display: flex;
	justify-content: space-between;
}

footer li {
	width: 25%;
	padding: 0.5rem 0;
	box-sizing: border-box;
	flex-shrink: 0;
}

footer li .icon {
	width: 1.5rem;
	height: 1.5rem;
	margin: 0 auto;
}

footer li:nth-child(1) .icon {
	background: url(../img/home.png) no-repeat;
	background-size: 100% 100%;
}

footer li:nth-child(2) .icon {
	background: url(../img/devie.png) no-repeat;
	background-size: 100% 100%;
}

footer li:nth-child(3) .icon {
	background: url(../img/team.png) no-repeat;
	background-size: 100% 100%;
}

footer li:nth-child(4) .icon {
	background: url(../img/mine.png) no-repeat;
	background-size: 100% 100%;
}

footer li:nth-child(1).active .icon {
	background: url(../img/home_active.png) no-repeat;
	background-size: 100% 100%;
}

footer li:nth-child(2).active .icon {
	background: url(../img/devie_active.png) no-repeat;
	background-size: 100% 100%;
}

footer li:nth-child(3).active .icon {
	background: url(../img/team_active.png) no-repeat;
	background-size: 100% 100%;
}

footer li:nth-child(4).active .icon {
	background: url(../img/mine_active.png) no-repeat;
	background-size: 100% 100%;
}

footer li p {
	width: 100%;
	font-size: 13px;
	text-align: center;
	margin-top: 0.25rem;
	color: #9c9c9c;
}

footer li.active p {
	color: #4485fd;
}

.bba_home_popou {
	width: 100%;
	height: 100vh;
	background: rgba(0, 0, 0, 0.5);
	position: fixed;
	top: 0;
	left: 0;
	z-index: 99;
	display: flex;
	justify-content: center;
	align-items: center;
	display: none;
}

.bba_home_popous {
	width: 92%;
	height: 22rem;
	background: url(../img/po.png) no-repeat;
	background-size: 100% 100%;
	position: relative;
}

.bba_home_popous .text {
	width: 70%;
	height: 11rem;
	line-height: 1.75rem;
	font-size: 14px;
	color: #999;
	position: absolute;
	overflow: scroll;
	bottom: 2rem;
	left: 14%;
}

.bba_device_nas {
	width: 92%;
	margin: 1.5rem 4%;
}

.bba_device_nas li {
	width: 100%;
	height: 4rem;
	background: #fff;
	margin-bottom: 1.5rem;
	-webkit-border-before: 0.5rem;
	display: flex;
	justify-content: flex-start;
	position: relative;
	padding: 0.75rem;
	box-sizing: border-box;
	align-items: center;
	border-radius: 0.5rem;
	filter: drop-shadow(0px 4px 5px rgba(0, 0, 255, 0.1));
}

.bba_device_nas li img {
	height: 2.5rem;
	margin-right: 1rem;
}

.bba_device_nas li p {
	font-size: 16px;
}

.bba_device_nas li a {
	height: 2rem;
	line-height: 2rem;
	position: absolute;
	top: 1rem;
	right: 0.75rem;
	font-size: 12px;
	background: #ff7800;
	padding: 0 1rem;
	border-radius: 2rem;
	color: #fff;
}

.bba_home_product_tab {
	width: 92%;
	height: 3rem;
	background-image: linear-gradient(-180deg, #eee 0%, #f6f6f8 100%);
	filter: drop-shadow(0px 4px 5px rgba(0, 0, 0, 0.2));
	border-radius: 3rem;
	margin: -1rem 4% 0;
	padding: 0.5rem;
	box-sizing: border-box;
	display: flex;
	justify-content: center;
}

.bba_home_product_tab a {
	width: 48%;
	height: 2rem;
	line-height: 2rem;
	color: #333;
	border-radius: 2rem;
	font-size: 14px;
	text-align: center;
}

.bba_home_product_tab a.active {
	color: #fff;
	background-image: linear-gradient(-180deg, #0f39ff 0%, #2878ff 100%);
}

.bba_home_product_list {
	width: 92%;
	margin: 1.5rem 4%;
}

.bba_home_product_list li {
	width: 100%;
	filter: drop-shadow(0px 4px 5px rgba(0, 0, 255, 0.1));
	padding: 0.75rem;
	box-sizing: border-box;
	background: #fff;
	border-radius: 0.5rem;
}

.bba_home_product_list li h4:nth-child(1) {
	width: 100%;
	height: 1.5rem;
	display: flex;
	justify-content: flex-start;
	align-items: center;
}

.bba_home_product_list li h4:nth-child(1) span {
	padding: 0 0.5rem;
	height: 1.5rem;
	font-size: 12px;
	font-weight: normal;
	line-height: 1.5rem;
	background-image: linear-gradient(-180deg, #0f39ff 0%, #2878ff 100%);
	margin-left: 0.5rem;
	border-radius: 2rem;
	color: #fff;
}

.bba_home_product_list li h4:nth-child(2) {
	margin-top: 1rem;
	width: 100%;
	font-size: 15px;
	display: flex;
	color: #4485fd;
	justify-content: space-between;
}

.bba_home_product_list li p span:nth-child(2) {
	width: 50%;
	text-align: center;
}

.bba_home_product_list li h4:nth-child(2) span:nth-child(2) {
	width: 50%;
	flex-shrink: 0;
	text-align: center;
	flex-shrink: 0;
}

.bba_home_product_list li h4:nth-child(2) span {
	width: 25%;
}

.bba_home_product_list li h4:nth-child(2) span:nth-child(3) {
	text-align: right;
}

.bba_home_product_list li p {
	margin-top: 0.5rem;
	width: 100%;
	font-size: 13px;
	display: flex;
	color: #4485fd;
	justify-content: space-between;
	color: #999;
}

.bba_home_product_list li p span {
	width: 25%;
}

.bba_home_product_list li p span:nth-child(3) {
	text-align: right;
}

.bba_home_product_list li button {
	width: 100%;
	height: 2.5rem;
	color: #fff;
	line-height: 2.5rem;
	font-size: 16px;
	color: #fff;
	background-image: linear-gradient(-180deg, #0f39ff 0%, #2878ff 100%);
	text-align: center;
	margin-top: 1rem;
	border-radius: 2.5rem;
}

.bba_team_top {
	width: 100%;
	padding: 1rem 4%;
	box-sizing: border-box;
	background: #0160bf;
}

.bba_team_top .logo {
	height: 2rem;
	display: block;
	margin: 0 auto;
}

.bba_team_top .share {
	width: 100%;
	background: #fff;
	padding: 1rem;
	box-sizing: border-box;
	margin: 1rem 0;
	border-radius: 0.5rem;
}

.bba_team_top .share h4 {
	width: 100%;
	text-align: center;
}

.bba_team_top .banner img {
	width: 100%;
}

.bba_team_top .share span {
	padding: 0 1rem;
	height: 2rem;
	line-height: 2rem;
	display: inline-block;
	text-align: center;
	box-sizing: border-box;
	width: 40%;
	margin: 1rem 30%;
	letter-spacing: 4px;
	background: #dbdbdb;
	font-weight: bold;
	border-radius: 0.25rem;
}

.bba_team_top .share .url {
	width: 100%;
	background: #dbdbdb;
	height: 2.5rem;
	border-radius: 0.25rem;
	position: relative;
}

.bba_team_top .share .url input {
	width: 100%;
	height: 2.5rem;
	font-size: 14px;
	background: transparent;
	padding: 0 1rem;
	box-sizing: border-box;
}

.bba_team_top .share .url button {
	padding: 0 1rem;
	border-radius: 0 0.25rem 0.25rem 0;
	height: 2.5rem;
	font-size: 16px;
	background: #68caff;
	color: #fff;
	position: absolute;
	top: 0;
	right: 0;
	font-weight: bold;
}

.bba_team_top .btns {
	display: flex;
	justify-content: space-between;
	margin-bottom: 1rem;
}

.bba_team_top .btns p {
	width: 48%;
	height: 2.5rem;
	line-height: 2.5rem;
	font-size: 14px;
	text-align: center;
	border-radius: 0.25rem;
	color: #333;
	background: #fff;
}

.bba_team_list {
	width: 92%;
	margin-left: 4%;
}

.bba_team_list .top {
	width: 100%;
	display: flex;
	justify-content: space-between;
}

.bba_team_list .top .lis {
	width: 48%;
	padding: 0.75rem;
	box-sizing: border-box;
	background: #f5f5ff;
	filter: drop-shadow(0px 2px 3px rgba(0, 0, 255, 0.1));
	border-radius: 0.5rem;
}

.bba_team_list .top .lis h4 {
	font-size: 20px;
	text-align: center;
}

.bba_team_list .top .lis p {
	width: 100%;
	color: #999;
	font-size: 14px;
	text-align: center;
	margin-top: 0.5rem;
}

.bba_team_list li {
	width: 100%;
	padding: 1rem;
	box-sizing: border-box;
	background: #f5f5ff;
	filter: drop-shadow(0px 2px 3px rgba(0, 0, 255, 0.1));
	border-radius: 0.5rem;
	margin-top: 1rem;
	display: flex;
	justify-content: space-between;
}

.bba_team_list li img {
	height: 3.25rem;
}

.bba_team_list li h4 {
	font-size: 20px;
	height: 1.5rem;
	line-height: 1.5rem;
	color: #038dd7;
	text-align: center;
}

.bba_team_list li p {
	font-size: 14px;
	text-align: center;
	height: 1.5rem;
	line-height: 1.5rem;
	color: #999;
	margin-top: 0.25rem;
}

.bba_team_share_list {
	width: 92%;
	margin-left: 4%;
}

.bba_team_share_list li {
	width: 100%;
	padding: 0.75rem;
	box-sizing: border-box;
	background: #f5f5ff;
	filter: drop-shadow(0px 2px 3px rgba(0, 0, 255, 0.1));
	border-radius: 0.5rem;
	margin-top: 1rem;
	display: flex;
	justify-content: space-between;
}

.bba_team_share_list li p {
	width: 100%;
	height: 3rem;
	line-height: 1.5rem;
	font-size: 14px;
	color: #666;
	overflow: hidden;
}

.bba_team_share_list li .btn {
	padding: 0 1rem;
	box-sizing: border-box;
	background: #25b0fb;
	height: 2.5rem;
	border-radius: 3rem;
	display: flex;
	justify-content: center;
	flex-wrap: wrap;
}

.bba_team_share_list li h4 {
	margin-top: 0.15rem;
	color: #fff;
}

.bba_team_share_list li span {
	display: block;
	width: 100%;
	font-size: 12px;
	text-align: center;
	margin-top: -0.25rem;
	color: #fff;
}

.bba_team_tips {
	width: 92%;
	margin: 1rem 4%;
	padding: 1rem;
	box-sizing: border-box;
	background: #fff;
}

.bba_team_tips h4 {
	text-align: center;
}

.bba_team_tips p {
	line-height: 1.5rem;
	font-size: 14px;
	color: #999;
	margin-top: 1rem;
}

.bba_mine_top {
	width: 100%;
	padding: 2rem 4% 3rem;
	box-sizing: border-box;
	background: #2a86f3;
}

.bba_mine_top img {
	height: 4rem;
	display: block;
	margin: 0 auto;
}

.bba_mine_top h3 {
	margin-top: 0.75rem;
	color: #fff;
	text-align: center;
}

.bba_mine_top p {
	width: 100%;
	text-align: center;
	margin-top: 0.75rem;
	color: #fff;
}

.bba_mine_top .btn {
	width: 80%;
	margin: 1rem 10%;
	display: flex;
	justify-content: space-between;
}

.bba_mine_top a {
	width: 48%;
	height: 2.5rem;
	line-height: 2.5rem;
	font-size: 14px;
	text-align: center;
	color: #fff;
	border-radius: 2rem;
	background: #ffa200;
}

.bba_mine_top a:nth-child(2) {
	background: #25b0fb;
}

.bba_mine_banner {
	width: 92%;
	margin: -2rem 4% 0;
	position: relative;
	z-index: 66;
}

.bba_mine_banner img {
	width: 100%;
	float: left;
}

.bba_mine_list {
	width: 92%;
	margin: 1rem 4%;
}

.bba_mine_list ul {
	padding: 0.75rem;
	box-sizing: border-box;
	background: #fff;
	border-radius: 0.5rem;
}

.bba_mine_list li {
	width: 100%;
	height: 3rem;
	display: flex;
	justify-content: flex-start;
	border-bottom: 1px #eee solid;
}

.bba_mine_list li img {
	height: 1.5rem;
	width: 1.5rem;
	display: inline-block;
	margin-top: 0.75rem;

}

.bba_mine_list li p {
	height: 3rem;
	line-height: 3rem;
	font-size: 14px;
	margin-left: 1rem;
}

.bba_mine_list button {
	width: 100%;
	height: 3rem;
	background: #2a86f3;
	margin-top: 1rem;
	border-radius: 0.5rem;
	font-size: 16px;
	color: #fff;
	font-weight: bold;
}

.bba_team_levs {
	width: 92%;
	margin: 1rem 4%;
}

.bba_team_levs ul {
	display: flex;
	justify-content: space-between;
}

.bba_team_levs li {
	position: relative;
}

.bba_team_levs li h4 {
	position: relative;
	z-index: 66;
}

.bba_team_levs li span {
	width: 100%;
	height: 6px;
	background: #2a86f3;
	display: block;
	position: absolute;
	bottom: 0;
	left: 0;
	z-index: 55;
	display: none;
	color: #999;
}

.bba_team_levs li.active {
	color: #333;
}

.bba_team_levs li.active span {
	display: block;
}

.bba_team_levss {
	width: 92%;
	margin: 1.5rem 4%;
	background: #fff;
	border-radius: 0.5rem;
}

.bba_team_levss p {
	width: 100%;
	display: flex;
	justify-content: space-between;
	height: 2.5rem;
	line-height: 2.5rem;
	border-bottom: 1px #eee solid;
}

.bba_team_levss p:nth-child(1) {
	background: #2a86f3;
	border-bottom: none;
	border-radius: 0.5rem 0.5rem 0 0;
}

.bba_team_levss p:nth-child(1) span {
	color: #fff;
}

.bba_team_levss p span {
	width: 33.33%;
	height: 2.5rem;
	line-height: 2.5rem;
	text-align: center;
	font-size: 14px;
	background: transparent;
}

.bba_cash_title {
	width: 100%;
	padding: 6rem 4%;
	box-sizing: border-box;
	color: #02f5ff;
	font-weight: bold;
}

.bba_cash_title h1 {
	font-size: 26px;
}

.bba_cash_img img {
	height: 12.5rem;
	position: fixed;
	top: 3rem;
	right: 0rem;
}

.bba_cash_link {
	width: auto;
	display: inline-block;
	background: #ff691f;
	height: 2rem;
	line-height: 2rem;
	padding: 0 1rem;
	font-size: 14px;
	color: #fff;
	border-radius: 0.5rem;
	position: fixed;
	top: 11rem;
	left: 4%;
}

.bba_cash_box {
	width: 88%;
	margin: 1rem 6%;
	background: url(../img/box.png) no-repeat;
	background-size: 100% 100%;
	position: relative;
	padding: 3rem 1rem 2rem 1rem;
	box-sizing: border-box;
	margin-bottom: 3rem;
}

.bba_cash_box .title {
	height: 3rem;
	line-height: 3rem;
	text-align: center;
	padding: 0 5rem 0 3.75rem;
	background: url(../img/title.png) no-repeat;
	background-size: 100% 100%;
	color: #fff;
	font-size: 16px;
	font-weight: bold;
	position: absolute;
	top: -1.5rem;
	left: 0;
}

.bba_cash_box .text {
	width: 100%;
	height: 3rem;
	line-height: 3rem;
	color: #fff;
	display: flex;
	justify-content: flex-start;
	align-items: center;
}

.bba_cash_box .text h4 {
	margin-left: 0.5rem;
}

.bba_team_top .header {
	width: 100%;
	height: 44px;
	position: relative;
}

.bba_team_top .header img {
	position: absolute;
	top: 12px;
	left: 0;
	height: 20px;
}

.bba_team_top .header h4 {
	width: 100%;
	height: 44px;
	line-height: 44px;
	text-align: center;
	color: #fff;
}

.bba_team_top .money {
	background-image: linear-gradient(-180deg, #0094ff 0%, #0cbcff 100%);
	padding: 1rem;
	box-sizing: border-box;
	position: relative;
	margin-top: 1rem;
}

.bba_team_top .money img {
	height: 4rem;
	position: absolute;
	top: 1rem;
	right: 1rem;
}

.bba_team_top .money h2 {
	width: 100%;
	height: 2rem;
	line-height: 2rem;
	color: #fff;
}

.bba_team_top .money p {
	width: 100%;
	height: 1.5rem;
	line-height: 1.5rem;
	font-size: 14px;
	color: #fff;
	margin-top: 0.5rem;
	s
}

.bba_team_boxs {
	width: 92%;
	margin: 1.5rem 4%;
	background: #fff;
	padding: 1rem;
	box-sizing: border-box;
	border-radius: 0.5rem;
}

.bba_team_boxs p {
	width: 100%;
	font-size: 14px;
}

.bba_team_boxs input {
	width: 100%;
	height: 2.5rem;
	margin: 1rem 0;
	padding-left: 1rem;
	box-sizing: border-box;
	font-size: 14px;
	color: #999;
	background: #e8edff;
	border-radius: 0.25rem;
}

.bba_team_boxs .btns {
	width: 100%;
	height: 2rem;
	line-height: 2rem;
	padding: 0 1rem;
	box-sizing: border-box;
	font-size: 14px;
	background: #e8edff;
	margin-top: 1rem;
	position: relative;
}

.bba_team_boxs .btns span {
	height: 1rem;
	width: 1rem;
	background: url(../img/p.png) no-repeat;
	display: block;
	background-size: 100% 100%;
	position: absolute;
	top: 0.5rem;
	right: 1rem;
	display: none;
}

.bba_team_boxs .btns.active span {
	display: block;
}

.bba_team_boxs a {
	margin-top: 1rem;
	display: block;
	font-size: 14px;
	text-align: right;
	color: #2a86f3;
}

.bba_team_boxs button {
	width: 100%;
	height: 3rem;
	background-color: #1e9df6;
	font-size: 16px;
	color: #fff;
	border-radius: 0.25rem;
}

.bba_details_img {
	width: 92%;
	background: #fff;
	margin: 1rem 4%;
	padding: 2rem;
	box-sizing: border-box;
	display: flex;
	justify-content: center;
	border-radius: 0.5rem;
}

.bba_details_img img {
	width: 50%;
}

.bba_details_name {
	width: 100%;
	height: 4rem;
	color: #fff;
	padding: 0 4%;
	box-sizing: border-box;
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-image: linear-gradient(90deg, #3e4df8 0%, #36abfe 100%);

}

.bba_details_bos {
	width: 92%;
	margin: 1rem 4%;
	background: #fff;
	border-radius: 0.5rem;
}

.bba_details_bos ul {
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
}
.bba_details_bos li{
	width: 50%;
	padding: 1.5rem;
	box-sizing: border-box;
}

.bba_details_bos li h4{
	width: 100%;
	text-align: center;
	font-size: 20px;
	color: #2a86f3;
}
.bba_details_bos li  p{
	width: 100%;
	text-align: center;
	font-size: 14px;
	margin-top: 0.5rem;
}
	
	
	
	
	</style>
	
	<style type="text/css" media="screen and (min-width: 640px)">
		html{
		    background: #f5f5f5;
		}
		footer{
		    width: 100%;
		    max-width: 640px;
		    left: 50%;
		    margin-left: -320px;
		}
		</style>
	</head>
	<body >
		
	<div class="appHeader" style="background-color:#0160bf;margin-bottom:30px">
    <div class="left">
        <!--<a href="javascript:;" class="icon goBack">-->
        <!--    <i class="icon ion-ios-arrow-back"></i>-->
        <!--</a>-->
    </div>
    <div class="pageTitle">My team</div>
</div>
<div class="bba_team_top" style="text-align:center;background: linear-gradient(180deg, #0160bf 0%, #ffffff 100%);padding-top:90px" >

    <!--<img src="/static/img/tlogo.png" class="logo">-->

    <div class="bba_team_list">
        <div class="top">
            <div class="lis">
                <h4>
           
                   {{ $general->cur_sym }}{{showAmount(refTotalDeposit($user->id))}}                  </h4>
                <p>Team Recharge</p>
            </div>
            <div class="lis">
                <h4> {{refTotalCount($user->id)}}</h4>
                <p>Total People</p>
            </div>
        </div>
        <ul>
            <li  onclick="location=" >
                <img src="{{asset ('core/img/lev1.png')}}">
                <div class="ce" >
                    <h4>{{teamSize($user->id, 1)}}</h4>
                    <p>Team Members                        <span style="color:blue; font-weight: bold;"> (25%)</span>
                    </p>
                </div>
                <div style="
                    margin-top:25px;
                    width: 2px; /* 竖线的宽度 */
                    height: 25px; /* 竖线的高度 */
                    background-color: gray; /* 竖线的颜色 */">

                </div>
                <div class="ce" style="margin-right:20px" >
                    <h4>
                      
                         {{ $general->cur_sym }}{{showAmount(teamDeposit($user->id, 1))}}                      </h4>
                    <p>Rebate Income</p>
                </div>
            </li>
            <li onclick="location=">
                <img src="{{asset ('core/img/lev2.png')}}">
                <div class="ce">
                    <h4>{{teamSize($user->id, 2)}}</h4>
                    <p>Team Members                        <span style="color:blue; font-weight: bold;"> (3%)</span>
                    </p>
                </div>
                <div style="
                    margin-top:25px;
                    width: 2px; /* 竖线的宽度 */
                    height: 25px; /* 竖线的高度 */
                    background-color: gray; /* 竖线的颜色 */">

                </div>
                <div class="ce" style="margin-right:20px" >
                    <h4>
                    
                                                  {{ $general->cur_sym }}{{showAmount(teamDeposit($user->id, 2))}}                        </h4>
                    <p>Rebate Income</p>
                </div>
            </li>
            <li onclick="">
                <img src="{{asset ('core/img/lev3.png')}}">
                <div class="ce">
                    <h4>{{teamSize($user->id, 3)}}</h4>
                    <p>Team Members                        <span style="color:blue; font-weight: bold;"> (2%)</span>
                    </p>
                </div>
                <div style="
                    margin-top:25px;
                    width: 2px; /* 竖线的宽度 */
                    height: 25px; /* 竖线的高度 */
                    background-color: gray; /* 竖线的颜色 */">

                </div>
                <div class="ce" style="margin-right:20px" >
                    <h4>
                                                    {{ $general->cur_sym }}{{showAmount(teamDeposit($user->id, 3))}}              
                    </h4>
                    <p>Rebate Income</p>
                </div>
            </li>
        </ul>
    </div>