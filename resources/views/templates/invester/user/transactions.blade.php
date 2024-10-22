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
	
	
		<style>
.tooltip {
  position: relative;
  display: inline-block;
}

.tooltip .tooltiptext {
  visibility: hidden;
  width: 140px;
  background-color: #555;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 5px;
  position: absolute;
  z-index: 1;
  bottom: 150%;
  left: 50%;
  margin-left: -75px;
  opacity: 0;
  transition: opacity 0.3s;
}

.tooltip .tooltiptext::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #555 transparent transparent transparent;
}

.tooltip:hover .tooltiptext {
  visibility: visible;
  opacity: 1;
}
</style>
	<div style="display:none;">
<input type="text" value="{{ route('home') }}?reference={{ auth()->user()->refCode }}" id="myInput">
</div>



	
	
<script>
function myFunction() {
  var copyText = document.getElementById("myInput");
  copyText.select();
  copyText.setSelectionRange(0, 99999);
  navigator.clipboard.writeText(copyText.value);
  
  var tooltip = document.getElementById("myTooltip");
  tooltip.innerHTML = "Copied "  ;
}

function outFunc() {
  var tooltip = document.getElementById("myTooltip");
  tooltip.innerHTML = "Copy";
}
</script>


                      
                 
                 
	
	
	
	
	
	
	
	
	
	
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
    <div class="pageTitle">My Link</div>
</div>
<div class="bba_team_top" style="text-align:center;background: linear-gradient(180deg, #0160bf 0%, #ffffff 100%);padding-top:90px" >

    <!--<img src="/static/img/tlogo.png" class="logo">-->
<div class="mb-1 mt-3" style="width:100%; background-color:white; height: 140px; border-radius: 4px;text-align:left">
        <div style="width: 100%;height: 70px;color: black;">
            <!--<span></span>-->
            <div style="float:left;margin:10px;width:60%"><span style="line-height: 50px; font-weight: bold;">Invite Code：{{ auth()->user()->refCode }}</span>
            </div>
            <span style="font-weight: bold;"></span>&nbsp;&nbsp;&nbsp;&nbsp;
            <div style="float:right;margin:20px"><image  id="myTooltip"     onclick="myFunction()" onmouseout="outFunc()"  style="width: 30px; border-radius: 5px; background-color: #f8f9fa" data-clipboard-text="0A6Z7w" id="copyCode" src="{{asset ('core/img/copy_inc.png')}}"></image>
            </div>
        </div>
        <div style="width: 100%;height: 70px;  color: black;  border-top:1px solid #8da2b5">

            <div style="float:left;margin:10px;width:60%"><span style="display: inline-block;font-size: 14px;width:200px;height:50px;font-weight: bold;">
               {{ route('home') }}?reference={{ auth()->user()->refCode }}<br>
            
                </span></div>
            <div style="float:right;margin:20px"><image   id="myTooltip"     onclick="myFunction()" onmouseout="outFunc()"  style="width: 30px; border-radius: 5px; background-color: #f8f9fa"  src="{{asset ('core/img/copy_inc.png')}}"></image></div>
        </div>
    </div>
    <div class="btns">
        <p style="margin:auto; font-family: 'Microsoft YaHei', sans-serif;
        font-weight: bold;" onclick="location='{{ route('user.referrals') }}'" >View My Team >></p>
        <!--<p>Team size: 0</p>-->
    </div>
    <div class="banner" onclick="location=">
        <img src="{{asset ('core/img/tbanner.png')}}">
    </div>
    <div style="background-color: #ffffff; border-radius: 4px;padding:10PX 20PX 40px 20px;color:black">
        <p style="text-wrap: wrap; text-align: center;"><span style="font-family: &quot;arial black&quot;, &quot;avant garde&quot;; font-size: 24px; white-space-collapse: preserve; color: rgb(0, 0, 0);">Team reward introduction</span></p><p style="text-wrap: wrap;"></p><p style="text-align: left; text-wrap: wrap;"><span style="white-space-collapse: preserve;"><span style="color: rgb(0, 0, 0); font-family: &quot;andale mono&quot;;">1. Team levels are divided into level 1, level 2 , level 3.<br/></span></span></p><p style="text-align: left; text-wrap: wrap;"><span style="color: rgb(0, 0, 0); font-family: &quot;andale mono&quot;;">2. A invites B to invest ₹10,000, and A can get a 25% cashback bonus, which is ₹2,500.<br/></span></p><p style="text-align: left; text-wrap: wrap;"><span style="font-family: &quot;andale mono&quot;;">3. B invites C to invest ₹10,000. B can get 25% and A can get 3%, which is ₹300.</span></p><p style="text-align: left; text-wrap: wrap;"><span style="font-family: &quot;andale mono&quot;;">4. C invites D to invest ₹10,000. C can get 25%, B can get 3%, and A can get 2%, which is ₹200.</span></p><p style="text-align: left; text-wrap: wrap;"><span style="font-family: &quot;andale mono&quot;;">If the number of people in the team at level 3 and the amount of investment reach the corresponding level, you can get the team bonus.</span></p><p><br/></p>    </div>
</div>
		<!--<div class="bba_home_product_title" style="margin: 1rem 0;"> -->
		<!--	<div class="left"><span></span>Invite friends for extra rebate</div>-->
		<!--</div>-->
		<!--<div class="bba_team_share_list">-->
		<!--	<ul>-->
		<!--	        				<li>-->
  <!--  					<div style="font-size: 14px;color: #666;height:4.8rem">-->
  <!--  					    <p>Team level 1, level 2, and level 3 investment reaches 200,000 RS, get 5000 RS</p>-->
  <!--  					    <p>Investment：0.00</p>-->
  <!--  					</div>-->
    					
  <!--  					        					<div class="btn" style="margin-top:1.1rem">-->
  <!--      						<h4>₹5000.00</h4>-->
  <!--      						<span>Not reached</span>-->
  <!--      					</div>-->
  <!--  					    				</li>-->
		<!--		    				<li>-->
  <!--  					<div style="font-size: 14px;color: #666;height:4.8rem">-->
  <!--  					    <p>Team level 1, level 2, and level 3 investment reaches 1,000,000 RS, get 30,000 RS</p>-->
  <!--  					    <p>Investment：0.00</p>-->
  <!--  					</div>-->
    					
  <!--  					        					<div class="btn" style="margin-top:1.1rem">-->
  <!--      						<h4>₹1000000.00</h4>-->
  <!--      						<span>Not reached</span>-->
  <!--      					</div>-->
  <!--  					    				</li>-->
		<!--		    				<li>-->
  <!--  					<div style="font-size: 14px;color: #666;height:4.8rem">-->
  <!--  					    <p>Invite 5 subordinate to invest in the first equipment, you will get: 380RS	</p>-->
  <!--  					    <p>Investment：0.00</p>-->
  <!--  					</div>-->
    					
  <!--  					        					<div class="btn" style="margin-top:1.1rem">-->
  <!--      						<h4>₹380.00</h4>-->
  <!--      						<span>Not reached</span>-->
  <!--      					</div>-->
  <!--  					    				</li>-->
		<!--		    				<li>-->
  <!--  					<div style="font-size: 14px;color: #666;height:4.8rem">-->
  <!--  					    <p>Invite 1 subordinate to invest in the first equipment, you will get: 100RS</p>-->
  <!--  					    <p>Investment：0.00</p>-->
  <!--  					</div>-->
    					
  <!--  					        					<div class="btn" style="margin-top:1.1rem">-->
  <!--      						<h4>₹100.00</h4>-->
  <!--      						<span>Not reached</span>-->
  <!--      					</div>-->
  <!--  					    				</li>-->
		<!--		    				<li>-->
  <!--  					<div style="font-size: 14px;color: #666;height:4.8rem">-->
  <!--  					    <p>Invite 30 subordinate to invest in the first equipment, you will get: 2000RS	</p>-->
  <!--  					    <p>Investment：0.00</p>-->
  <!--  					</div>-->
    					
  <!--  					        					<div class="btn" style="margin-top:1.1rem">-->
  <!--      						<h4>₹2000.00</h4>-->
  <!--      						<span>Not reached</span>-->
  <!--      					</div>-->
  <!--  					    				</li>-->
								
		<!--	</ul>-->
		<!--</div>-->
		
		
		</div>

		<style>
		    .kefu {
                width: 60px;
                height: 60px;
                border-radius: 50%;
                position: fixed;
                bottom: 60px;
                right: 0;
                z-index: 100;
            }
            .kefu a {
                display: inline-block;
            }
            .kefu img {
                height: 60px;
                width: auto;
            }
		</style>

		
		
	<script src="/static/js/jquery-3.4.1.min.js"></script>
		<script src="/static/js/app.js"></script>
		<script src="/static/js/clipboard.min.js"></script>
		
		<script src="/static/js/mui.min.js"></script>
		<script type="text/javascript">

	<div id="think_page_trace" style="position: fixed;bottom:0;right:0;font-size:14px;width:100%;z-index: 999999;color: #000;text-align:left;font-family:'微软雅黑';">
    <div id="think_page_trace_tab" style="display: none;background:white;margin:0;height: 250px;">
        <div id="think_page_trace_tab_tit" style="height:30px;padding: 6px 12px 0;border-bottom:1px solid #ececec;border-top:1px solid #ececec;font-size:16px">
                        <span style="color:#000;padding-right:12px;height:30px;line-height:30px;display:inline-block;margin-right:3px;cursor:pointer;font-weight:700">基本</span>
                        <span style="color:#000;padding-right:12px;height:30px;line-height:30px;display:inline-block;margin-right:3px;cursor:pointer;font-weight:700">文件</span>
                        <span style="color:#000;padding-right:12px;height:30px;line-height:30px;display:inline-block;margin-right:3px;cursor:pointer;font-weight:700">流程</span>
                        <span style="color:#000;padding-right:12px;height:30px;line-height:30px;display:inline-block;margin-right:3px;cursor:pointer;font-weight:700">错误</span>
                        <span style="color:#000;padding-right:12px;height:30px;line-height:30px;display:inline-block;margin-right:3px;cursor:pointer;font-weight:700">SQL</span>
                        <span style="color:#000;padding-right:12px;height:30px;line-height:30px;display:inline-block;margin-right:3px;cursor:pointer;font-weight:700">调试</span>
                    </div>
        <div id="think_page_trace_tab_cont" style="overflow:auto;height:212px;padding:0;line-height: 24px">
                        <div style="display:none;">
                <ol style="padding: 0; margin:0">
                    <li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">请求信息 : 2023-10-18 18:12:51 HTTP/1.1 GET : http://172.247.228.130:9956/team.html</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">运行时间 : 0.077930s [ 吞吐率：12.83req/s ] 内存消耗：4,625.09kb 文件加载：102</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">查询信息 : 16 queries 0 writes </li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">缓存信息 : 4 reads,0 writes</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">会话信息 : SESSION_ID=b3mnurq08j946bbiktggsk1l56</li>                </ol>
            </div>
                        <div style="display:none;">
                <ol style="padding: 0; margin:0">
                    <li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/public/index.php ( 1.05 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/base.php ( 1.71 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Loader.php ( 12.70 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/composer/autoload_static.php ( 8.28 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Error.php ( 4.00 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Container.php ( 17.20 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkcmf/cmf/src/App.php ( 29.43 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Env.php ( 2.85 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Config.php ( 9.71 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/convention.php ( 11.73 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/helper.php ( 20.40 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkcmf/cmf-app/src/app.php ( 5.33 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkcmf/cmf-app/src/database.php ( 0.91 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkcmf/cmf-app/src/template.php ( 2.04 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkcmf/cmf-app/src/paginate.php ( 0.17 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkcmf/cmf-app/src/tags.php ( 1.35 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Hook.php ( 5.58 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkcmf/cmf/src/behavior/InitHookBehavior.php ( 2.15 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/data/config/database.php ( 0.50 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/data/config/template.php ( 0.07 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/ezyang/htmlpurifier/library/HTMLPurifier.composer.php ( 0.10 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/topthink/think-captcha/src/helper.php ( 1.54 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/facade/Route.php ( 3.84 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Facade.php ( 3.44 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Route.php ( 25.84 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Request.php ( 57.54 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/route/Domain.php ( 7.08 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/route/RuleGroup.php ( 16.45 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/route/Rule.php ( 28.92 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/route/RuleItem.php ( 8.84 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/route/RuleName.php ( 3.92 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/facade/Validate.php ( 4.83 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Validate.php ( 43.93 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/ralouphie/getallheaders/src/getallheaders.php ( 1.60 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/symfony/polyfill-intl-normalizer/bootstrap.php ( 0.71 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/symfony/polyfill-php72/bootstrap.php ( 1.89 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkcmf/cmf/src/common.php ( 89.29 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/guzzlehttp/promises/src/functions_include.php ( 0.16 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/guzzlehttp/promises/src/functions.php ( 9.89 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/guzzlehttp/psr7/src/functions_include.php ( 0.15 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/guzzlehttp/psr7/src/functions.php ( 13.09 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/symfony/polyfill-intl-idn/bootstrap.php ( 4.52 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/guzzlehttp/guzzle/src/functions_include.php ( 0.16 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/guzzlehttp/guzzle/src/functions.php ( 9.70 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/topthink/think-helper/src/helper.php ( 2.88 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Db.php ( 7.67 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Lang.php ( 7.38 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/data/route/route.php ( 1.60 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/facade/Cache.php ( 2.06 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Cache.php ( 3.27 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/cache/driver/File.php ( 7.99 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/cache/Driver.php ( 8.64 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/db/Connection.php ( 58.93 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkcmf/cmf/src/Log.php ( 8.96 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/log/driver/File.php ( 8.97 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/db/connector/Mysql.php ( 6.22 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/db/builder/Mysql.php ( 5.85 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/db/Builder.php ( 36.76 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/db/Query.php ( 105.00 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Debug.php ( 7.57 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Collection.php ( 13.60 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkcmf/cmf/src/behavior/LangBehavior.php ( 2.49 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/facade/Lang.php ( 1.75 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/facade/Env.php ( 1.17 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkcmf/cmf-app/src/admin/lang/en.php ( 9.17 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkcmf/cmf/src/route/dispatch/Module.php ( 5.15 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/route/Dispatch.php ( 9.26 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Middleware.php ( 5.34 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Cookie.php ( 7.35 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/View.php ( 5.74 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/view/driver/Think.php ( 6.12 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Template.php ( 47.31 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/template/driver/File.php ( 2.29 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Session.php ( 14.13 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/app/home/lang/en.php ( 26.38 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkcmf/cmf/src/behavior/InitAppHookBehavior.php ( 2.06 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/model/Collection.php ( 3.23 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/app/home/controller/UserController.php ( 61.48 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkcmf/cmf/src/controller/UserBaseController.php ( 2.07 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkcmf/cmf/src/controller/HomeBaseController.php ( 8.39 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkcmf/cmf/src/controller/BaseController.php ( 7.42 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Controller.php ( 7.53 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/traits/controller/Jump.php ( 4.76 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/facade/Config.php ( 1.52 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/facade/Hook.php ( 1.46 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/facade/Cookie.php ( 1.58 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/facade/View.php ( 1.76 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkcmf/cmf/src/behavior/HomeLangBehavior.php ( 1.53 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/facade/Session.php ( 2.05 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkcmf/cmf-app/src/admin/model/ThemeModel.php ( 8.14 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Model.php ( 28.52 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/model/concern/Attribute.php ( 17.64 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/model/concern/RelationShip.php ( 20.60 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/model/concern/ModelEvent.php ( 6.04 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/model/concern/TimeStamp.php ( 2.58 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/model/concern/Conversion.php ( 7.84 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkcmf/cmf/src/model/ThemeFileModel.php ( 0.91 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/data/runtime/temp/1e83728ab62c794356a89589892121c4.php ( 7.26 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/facade/Url.php ( 1.13 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Url.php ( 13.22 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/Response.php ( 9.68 KB )</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">/www/wwwroot/dingzhi2.com/vendor/thinkphp/library/think/debug/Html.php ( 4.02 KB )</li>                </ol>
            </div>
                        <div style="display:none;">
                <ol style="padding: 0; margin:0">
                    <li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ DB ] INIT mysql</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ LANG ] /www/wwwroot/dingzhi2.com/vendor/thinkcmf/cmf-app/src/admin/lang/en.php</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ LANG ] /www/wwwroot/dingzhi2.com/app/home//lang/en.php</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ ROUTE ] array (
  'rule' =&gt; 'team',
  'route' =&gt; 'home/user/team',
  'option' =&gt; 
  array (
    'merge_rule_regex' =&gt; false,
  ),
  'var' =&gt; 
  array (
  ),
)</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ HEADER ] array (
  'cookie' =&gt; 'admin_username=admin; PHPSESSID=b3mnurq08j946bbiktggsk1l56; thinkphp_show_page_trace=0|0',
  'accept-language' =&gt; 'zh-CN,zh;q=0.9',
  'accept-encoding' =&gt; 'gzip, deflate',
  'accept' =&gt; 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7',
  'user-agent' =&gt; 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.5735.289 Safari/537.36',
  'upgrade-insecure-requests' =&gt; '1',
  'connection' =&gt; 'keep-alive',
  'host' =&gt; '172.247.228.130:9956',
  'content-type' =&gt; '',
  'content-length' =&gt; '',
)</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ PARAM ] array (
)</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ VIEW ] /www/wwwroot/dingzhi2.com/public/themes/default/home/user/team.html [ array (
  0 =&gt; 'site_info',
  1 =&gt; 'userData',
  2 =&gt; 'config',
  3 =&gt; 'invite_url',
  4 =&gt; 'team',
  5 =&gt; 'user_slide',
  6 =&gt; 'rule',
  7 =&gt; 'theme_vars',
  8 =&gt; 'theme_widgets',
) ]</li>                </ol>
            </div>
                        <div style="display:none;">
                <ol style="padding: 0; margin:0">
                                    </ol>
            </div>
                        <div style="display:none;">
                <ol style="padding: 0; margin:0">
                    <li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ DB ] CONNECT:[ UseTime:0.000415s ] mysql:host=127.0.0.1;port=3306;dbname=dingzhi2;charset=utf8mb4</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ SQL ] SHOW COLUMNS FROM `cmf_hook` [ RunTime:0.001396s ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ SQL ] SELECT `hook` FROM `cmf_hook` WHERE  `type` = 1 OR (  `type` = 3  AND ( `app` = '' or `app` = 'cmf' ) ) [ RunTime:0.000326s ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ EXPLAIN : array (
  'id' =&gt; 1,
  'select_type' =&gt; 'SIMPLE',
  'table' =&gt; 'cmf_hook',
  'type' =&gt; 'ALL',
  'possible_keys' =&gt; NULL,
  'key' =&gt; NULL,
  'key_len' =&gt; NULL,
  'ref' =&gt; NULL,
  'rows' =&gt; 57,
  'extra' =&gt; 'Using where',
) ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ SQL ] SHOW COLUMNS FROM `cmf_hook_plugin` [ RunTime:0.001132s ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ SQL ] SELECT `hook`,`plugin` FROM `cmf_hook_plugin` WHERE  `status` = 1  AND `hook` IN ('app_begin','module_init','action_begin','view_filter','app_end','log_write','response_end','admin_init','home_init','send_mobile_verification_code','body_start','before_head_end','footer_start','before_footer','before_footer_end','before_body_end','left_sidebar_start','before_left_sidebar_end','right_sidebar_start','before_right_sidebar_end','comment','guestbook','switch_theme','after_content','before_content','log_write_done','switch_admin_theme','captcha_image') ORDER BY `list_order` ASC [ RunTime:0.000378s ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ EXPLAIN : array (
  'id' =&gt; 1,
  'select_type' =&gt; 'SIMPLE',
  'table' =&gt; 'cmf_hook_plugin',
  'type' =&gt; 'ALL',
  'possible_keys' =&gt; NULL,
  'key' =&gt; NULL,
  'key_len' =&gt; NULL,
  'ref' =&gt; NULL,
  'rows' =&gt; 1,
  'extra' =&gt; 'Using where; Using filesort',
) ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ SQL ] SHOW COLUMNS FROM `cmf_user` [ RunTime:0.001636s ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ SQL ] SELECT * FROM `cmf_user` WHERE  `id` = 114426 LIMIT 1 [ RunTime:0.000439s ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ EXPLAIN : array (
  'id' =&gt; 1,
  'select_type' =&gt; 'SIMPLE',
  'table' =&gt; 'cmf_user',
  'type' =&gt; 'const',
  'possible_keys' =&gt; 'PRIMARY,id',
  'key' =&gt; 'PRIMARY',
  'key_len' =&gt; '8',
  'ref' =&gt; 'const',
  'rows' =&gt; 1,
  'extra' =&gt; NULL,
) ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ SQL ] SHOW COLUMNS FROM `cmf_user_relations` [ RunTime:0.001148s ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ SQL ] SELECT COUNT(*) AS tp_count FROM `cmf_user_relations` WHERE  `p1_user_id` = 114426 [ RunTime:0.000209s ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ EXPLAIN : array (
  'id' =&gt; 1,
  'select_type' =&gt; 'SIMPLE',
  'table' =&gt; 'cmf_user_relations',
  'type' =&gt; 'ref',
  'possible_keys' =&gt; 'p1_user_id',
  'key' =&gt; 'p1_user_id',
  'key_len' =&gt; '4',
  'ref' =&gt; 'const',
  'rows' =&gt; 1,
  'extra' =&gt; 'Using index',
) ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ SQL ] SELECT COUNT(*) AS tp_count FROM `cmf_user_relations` WHERE  `p2_user_id` = 114426 [ RunTime:0.000208s ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ EXPLAIN : array (
  'id' =&gt; 1,
  'select_type' =&gt; 'SIMPLE',
  'table' =&gt; 'cmf_user_relations',
  'type' =&gt; 'ref',
  'possible_keys' =&gt; 'p2_user_id',
  'key' =&gt; 'p2_user_id',
  'key_len' =&gt; '4',
  'ref' =&gt; 'const',
  'rows' =&gt; 1,
  'extra' =&gt; 'Using index',
) ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ SQL ] SELECT COUNT(*) AS tp_count FROM `cmf_user_relations` WHERE  `p3_user_id` = 114426 [ RunTime:0.000154s ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ EXPLAIN : array (
  'id' =&gt; 1,
  'select_type' =&gt; 'SIMPLE',
  'table' =&gt; 'cmf_user_relations',
  'type' =&gt; 'ref',
  'possible_keys' =&gt; 'p3_user_id',
  'key' =&gt; 'p3_user_id',
  'key_len' =&gt; '4',
  'ref' =&gt; 'const',
  'rows' =&gt; 1,
  'extra' =&gt; 'Using index',
) ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ SQL ] SHOW COLUMNS FROM `cmf_user_balance_log` [ RunTime:0.001120s ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ SQL ] SELECT SUM(`change`) AS tp_sum FROM `cmf_user_balance_log` WHERE  `type` = 2  AND `user_id` = 114426 [ RunTime:0.000318s ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ EXPLAIN : array (
  'id' =&gt; 1,
  'select_type' =&gt; 'SIMPLE',
  'table' =&gt; 'cmf_user_balance_log',
  'type' =&gt; 'ref',
  'possible_keys' =&gt; 'user_id',
  'key' =&gt; 'user_id',
  'key_len' =&gt; '8',
  'ref' =&gt; 'const',
  'rows' =&gt; 53,
  'extra' =&gt; 'Using where',
) ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ SQL ] SHOW COLUMNS FROM `cmf_invite_task` [ RunTime:0.001163s ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ SQL ] SELECT * FROM `cmf_invite_task` ORDER BY `id` ASC [ RunTime:0.000241s ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ EXPLAIN : array (
  'id' =&gt; 1,
  'select_type' =&gt; 'SIMPLE',
  'table' =&gt; 'cmf_invite_task',
  'type' =&gt; 'index',
  'possible_keys' =&gt; NULL,
  'key' =&gt; 'PRIMARY',
  'key_len' =&gt; '4',
  'ref' =&gt; NULL,
  'rows' =&gt; 3,
  'extra' =&gt; NULL,
) ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ SQL ] SHOW COLUMNS FROM `cmf_theme_file` [ RunTime:0.001284s ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ SQL ] SELECT `more` FROM `cmf_theme_file` WHERE  `theme` = 'default'  AND (  `is_public` = 1 OR `file` = 'home/user/team' ) [ RunTime:0.000261s ]</li><li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">[ EXPLAIN : array (
  'id' =&gt; 1,
  'select_type' =&gt; 'SIMPLE',
  'table' =&gt; 'cmf_theme_file',
  'type' =&gt; 'ALL',
  'possible_keys' =&gt; NULL,
  'key' =&gt; NULL,
  'key_len' =&gt; NULL,
  'ref' =&gt; NULL,
  'rows' =&gt; 1,
  'extra' =&gt; 'Using where',
) ]</li>                </ol>
            </div>
                        <div style="display:none;">
                <ol style="padding: 0; margin:0">
                                    </ol>
            </div>
                    </div>
    </div>
    <div id="think_page_trace_close" style="display:none;text-align:right;height:15px;position:absolute;top:10px;right:12px;cursor:pointer;"><img style="vertical-align:top;" src="data:image/gif;base64,R0lGODlhDwAPAJEAAAAAAAMDA////wAAACH/C1hNUCBEYXRhWE1QPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNS4wLWMwNjAgNjEuMTM0Nzc3LCAyMDEwLzAyLzEyLTE3OjMyOjAwICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M1IFdpbmRvd3MiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MUQxMjc1MUJCQUJDMTFFMTk0OUVGRjc3QzU4RURFNkEiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MUQxMjc1MUNCQUJDMTFFMTk0OUVGRjc3QzU4RURFNkEiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDoxRDEyNzUxOUJBQkMxMUUxOTQ5RUZGNzdDNThFREU2QSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDoxRDEyNzUxQUJBQkMxMUUxOTQ5RUZGNzdDNThFREU2QSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PgH//v38+/r5+Pf29fTz8vHw7+7t7Ovq6ejn5uXk4+Lh4N/e3dzb2tnY19bV1NPS0dDPzs3My8rJyMfGxcTDwsHAv769vLu6ubi3trW0s7KxsK+urayrqqmop6alpKOioaCfnp2cm5qZmJeWlZSTkpGQj46NjIuKiYiHhoWEg4KBgH9+fXx7enl4d3Z1dHNycXBvbm1sa2ppaGdmZWRjYmFgX15dXFtaWVhXVlVUU1JRUE9OTUxLSklIR0ZFRENCQUA/Pj08Ozo5ODc2NTQzMjEwLy4tLCsqKSgnJiUkIyIhIB8eHRwbGhkYFxYVFBMSERAPDg0MCwoJCAcGBQQDAgEAACH5BAAAAAAALAAAAAAPAA8AAAIdjI6JZqotoJPR1fnsgRR3C2jZl3Ai9aWZZooV+RQAOw==" /></div>
</div>
<div id="think_page_trace_open" style="height:30px;float:right;text-align:right;overflow:hidden;position:fixed;bottom:0;right:0;color:#000;line-height:30px;cursor:pointer;">
    <div style="background:#232323;color:#FFF;padding:0 6px;float:right;line-height:30px;font-size:14px">0.083229s </div>
    <img width="30" style="" title="ShowPageTrace" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjVERDVENkZGQjkyNDExRTE5REY3RDQ5RTQ2RTRDQUJCIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjVERDVENzAwQjkyNDExRTE5REY3RDQ5RTQ2RTRDQUJCIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NURENUQ2RkRCOTI0MTFFMTlERjdENDlFNDZFNENBQkIiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NURENUQ2RkVCOTI0MTFFMTlERjdENDlFNDZFNENBQkIiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz5fx6IRAAAMCElEQVR42sxae3BU1Rk/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">
</div>
	<script src="/static/js/clipboard.min.js"></script>
<script type="text/javascript">
   window.onload=function (){
                var clipboard = new Clipboard('#copyText');
                clipboard.on('success', function(e) {
                    mui.alert("Copy successfully");
                    e.clearSelection();
                });


                var copyCode = new Clipboard('#copyCode');
                copyCode.on('success', function(e) {
                    mui.alert("Copy successfully");
                    e.clearSelection();
                });
            };
    (function(){
        var tab_tit  = document.getElementById('think_page_trace_tab_tit').getElementsByTagName('span');
        var tab_cont = document.getElementById('think_page_trace_tab_cont').getElementsByTagName('div');
        var open     = document.getElementById('think_page_trace_open');
        var close    = document.getElementById('think_page_trace_close').children[0];
        var trace    = document.getElementById('think_page_trace_tab');
        var cookie   = document.cookie.match(/thinkphp_show_page_trace=(\d\|\d)/);
        var history  = (cookie && typeof cookie[1] != 'undefined' && cookie[1].split('|')) || [0,0];
        open.onclick = function(){
            trace.style.display = 'block';
            this.style.display = 'none';
            close.parentNode.style.display = 'block';
            history[0] = 1;
            document.cookie = 'thinkphp_show_page_trace='+history.join('|')
        }
        close.onclick = function(){
            trace.style.display = 'none';
            this.parentNode.style.display = 'none';
            open.style.display = 'block';
            history[0] = 0;
            document.cookie = 'thinkphp_show_page_trace='+history.join('|')
        }
        for(var i = 0; i < tab_tit.length; i++){
            tab_tit[i].onclick = (function(i){
                return function(){
                    for(var j = 0; j < tab_cont.length; j++){
                        tab_cont[j].style.display = 'none';
                        tab_tit[j].style.color = '#999';
                    }
                    tab_cont[i].style.display = 'block';
                    tab_tit[i].style.color = '#000';
                    history[1] = i;
                    document.cookie = 'thinkphp_show_page_trace='+history.join('|')
                }
            })(i)
        }
        parseInt(history[0]) && open.click();
        tab_tit[history[1]].click();
    })();
</script>
</body>
	<script src="/static/js/jquery.js"></script>
    <script src="/static/js/layer.js"></script>
    <script>
        var index_load;
        $('.receive').click(function(){
            index_load = layer.load(3);
            $.ajax({
    			url: "/home/user/receive_invite_income.html",
    			type: 'post',
    			async: true, // 异步 || 同步
    			dataType: 'json',
    			data: {id:$('.receive').attr('data-id')},
    			success: function(response) {
    			    response = JSON.parse(response);
    			    layer.close(index_load);
    			    if (response.code === 1) {
                        
                        layer.msg(response.msg, {time: 2500, anim: 2}, function () {
                            location.reload()
                        });
                        
                        return false;
                    }
                    layer.msg(response.msg, {time: 2500, anim: 6});
    			},
    			error: function() {
    				// $.alert(serverError,siteTitle);
    			}
    		});
        })
        
    	function copy_url(e){
    	    const input = document.createElement('input');
            document.body.appendChild(input);
            input.setAttribute('value', e);
            input.select();
            if (document.execCommand('copy')) {
                document.execCommand('copy');
                layer.msg('Copy Success', {time: 2500, anim: 3})
            }
            document.body.removeChild(input); 
    	}
	    
    </script>
</html>

   