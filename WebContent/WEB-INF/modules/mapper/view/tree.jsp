<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<div class="accordion" fillSpace="sideBar">
	<div class="accordionHeader">
		<h2><span>Folder</span>图像热点绘制</h2>
	</div>
	<div class="accordionContent">
		<ul class="tree treeFolder expand">
			<c:forEach var="mapper" items="${mappers}">
			<li><a href="#">${mapper.name}</a>
			<ul>
				<li><a target="navTab" rel="new_drawhotspot_${mapper.id}" external="true" reloadflag="1" href="${BaseURL}mapper/${mapper.id}/edit_draw">【添加新热点】</a></li>
				<c:forEach var="area" items="${mapper.areas}">
				<li>
					<a target="navTab" rel="drawhotspot_${area.id}" external="true" reloadflag="1" href="${BaseURL}area/${area.id}/edit_draw">${area.name}</a>
				</li>
				</c:forEach>
			</ul>
			</li>
			</c:forEach>
		</ul>
	</div>
</div>