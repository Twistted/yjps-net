<style>
  #img{ background: url(img/bg.jpg); width:300px;height:300px}
 </style>
<script>
function img_change(){
 var imgOn=document.getElementById("22");
 imgOn.style.backgroundImage="url(/img/ditu.png)"
 }
function img_res(){
 var imgOut=document.getElementById("22");
 imgOut.style.backgroundImage="url(img/bg.jpg)"
 }
</script>
<div id="22" onmousemove="img_change()" onmouseout="img_res()">你好</div>