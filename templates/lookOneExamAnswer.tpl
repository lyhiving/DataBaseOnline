{* Smarty *}
<html>
{include file="studenthead.tpl"} 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<body  oncopy="alert('对不起，本网页禁止复制！');return false;">
<div class="container">
<center>
<table  class="table table-bordered" border="1">
<tr><td><center>题号</center></td>
<td><center>题目内容</center></td>
<td><center>标准答案</center></td>
<td><center>您的答案</center></td>
<td><center>您的得分</center></td></tr>
{foreach $problemlist as $item}
	<tr><td><center>{$item[0]}</center></td>
        <td>{$item[1]}</td>
        <td><center>{$item[2]}</center></td>
{if $item[4]==0}
        <td  style="color:red"><center>{$item[3]}</center></td>
{else}
		<td><center>{$item[3]}</center></td>
{/if}
	<td><center>{$item[4]}</center></td>
	</tr>
{/foreach}
</table>
</center>
<hr>
<p style="color:red">出错答案以红色标注,其中%为分隔符。</p>
<p style="color:red">想要提高本次测试的分数可以在参考完答案后重新答题。</p>
</div>
</body>
</html>
