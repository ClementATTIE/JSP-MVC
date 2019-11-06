<%-- 
    Document   : mainjsp
    Created on : 6 nov. 2019, 14:06:55
    Author     : pedago
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
			<style>
				.table
				{
					display:table;
					border-collapse:separate;
					border-spacing:2px;
				}
				.thead
				{
					display:table-header-group;
					color:white;
					font-weight:bold;
					background-color:grey;
				}
				.tbody
				{
					display:table-row-group;
				}
				.tr
				{
					display:table-row;
				}
				.td
				{
					display:table-cell;
					border:1px solid black;
					padding:1px;
				}			
		</style>		
	</head>
	<body>
		<!-- On montre le formulaire de saisie -->
		<h1>Edition des taux de remise</h1>
		<form method='GET'>
			Code : <input name="code" size="1" maxlength="1" pattern="[A-Z]{1}+" title="Une lettre en MAJUSCULES"><br/>
			Taux : <input name="taux" type="number" step="0.01" min="0.0" max="99.99" size="5"><br/>
			<input type="hidden" name="action" value="ADD">
			<input type="submit" value="Ajouter">
		</form>
		
		<div><h4>The statement was aborted because it would have caused a duplicate key value in a unique or primary key constraint or unique index identified by 'SQL191106114457040' defined on 'DISCOUNT_CODE'.</h4></div>
		
		<div class="table">
			<div class="thead"><div class="td">Code</div><div class="td">Taux</div><div class="td">Action</div></div>
			<div class="tbody">
			

                    <c:choose>
                        
                        
                        <c:when test="${empty CODE}">
				Client inconnu.			
			</c:when>
			<c:otherwise> <%-- On a trouvé --%>
				
                                
                                
                                <form class="tr" method="get">
					<div class="td"><input type="text" name="code" value=${CODE} readonly/></div>
					<div class="td"><input name="taux" type="number" step="0.01" min="0.0" max="99.99" size="5" value="16.0"/></div>
					<div class="td"><input type="submit" name="action" value="DELETE"/></div>
				</form>	  
			</c:otherwise>
			
				
                                
                                
                    </c:choose>
			
 		    
			
 		    
			  
			</div>
		</div>
	</body>        

    
    
    
    
    
    
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
