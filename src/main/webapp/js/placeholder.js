function isPlaceholder(){var a=document.createElement("input");return"placeholder" in a}if(!isPlaceholder()){$(function(){var a="#ccc";$("input").not("input[type='password']").each(function(){if($(this).val()==""&&$(this).attr("placeholder")!==""){$(this).val($(this).attr("placeholder"));var f=$(this).css("color");$(this).css({"color":a});$(this).focus(function(){if($(this).val()==$(this).attr("placeholder")){$(this).val("");$(this).css({"color":f})}});$(this).blur(function(){if($(this).val()==""){$(this).val($(this).attr("placeholder"));$(this).css({"color":a})}})}});var c=$("input[type=password]");var b=c.attr("placeholder");c.after('<input id="pwdPlaceholder" type="text" value='+b+' autocomplete="off" />');var e=$("#pwdPlaceholder");var d=e.css("color");e.css({"color":a});e.show();c.hide();e.focus(function(){e.hide();c.show().focus()});c.blur(function(){if(c.val()==""){e.show();c.hide();e.css({"color":a})}})})};