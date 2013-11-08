{* Smarty *}
<html>
{include file="adminhead.tpl"}
{*<meta http-equiv="Content-Type" content="text/html; charset=utf-8">*}
Problem List


<table>
{if $pc == 'Cexercise'}
<tr><th>exerciseno</th><th>exercisename</th><th>content</th><th>answer</th><th>score</th><th>stage</th><th>chaptername</th><th>knowledgename</th></tr>
{foreach $problemlist as $item}
	<tr><td>{$item[0]}</td><td>{$item[2]}</td><td>{$item[3]}</td><td>{$item[4]}</td><td>{$item[5]}</td><td>{$item[7]}</td><td>{$item[9]}</td><td>{$item[11]}</td></tr>
{/foreach}
{elseif $pc == 'Pexercise'}
<tr><th>exerciseno</th><th>content</th><th>answer</th><th>intxt</th><th>outtxt</th><th>score</th><th>stage</th><th>chaptername</th><th>knowledgename</th></tr>
{foreach $problemlist as $item}
	<tr><td>{$item[0]}</td><td>{$item[2]}</td><td>{$item[3]}</td><td>{$item[4]}</td><td>{$item[5]}</td><td>{$item[6]}</td><td>{$item[7]}</td><td>{$item[10]}</td><td>{$item[12]}</td></tr>
{/foreach}
{/if}
</table>

<form action='showAllProblem.php' method=POST>
	<tr>
	<td>请输入题目类型</td>
	<select name="pc">
		<option value='Cexercise'>Cexercise</option>
		<option value='Pexercise'>Pexercise</option>
	</select>
	</tr>
	<tr>
	<td>请输入范围起点</td>
	<td><input type=number name=beg min=1></td>
	</tr>
	<tr>
	<td>请输入范围结束</td>
	<td><input type=number name=end min=1></td>
	</tr>

<input type=submit name='submit' value='提交'><br/></form>
 
<form action='showAllProblem.php' method=POST>
	<tr>
	<td>删除题目类型</td>
	<select name="dpc">
		<option value='Cexercise'>Cexercise</option>
		<option value='Pexercise'>Pexercise</option>
	</select>
	</tr>
	<tr>
	<td>ID</td>
	<td><input type=text name=pid></td>
	</tr>
 <input type=submit name='submit' value='提交'><br/></form>
 
<form action='updateProblem.php' method=POST>
	<tr>
	<td>update题目类型</td>
	<select name="upc">
		<option value='Cexercise'>Cexercise</option>
		<option value='Pexercise'>Pexercise</option>
	</select>
	</tr>
	<tr>
	<td>ID</td>
	<td><input type=text name=upid></td>
	</tr>
<input type=submit name='submit' value='提交'><br/></form>
 
 </html>