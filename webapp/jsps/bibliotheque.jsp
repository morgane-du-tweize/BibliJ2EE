<%@ page import="models.Livre" %>
<%@ page import="java.util.ArrayList" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<title>Ma bibliotheque</title>
	</head>
	<body>
	
	<% ArrayList<Livre> livres = (ArrayList<Livre>) request.getAttribute("livres"); %>
	
		<h1>Bienvenue dans ma bibliotheque</h1>
	
		<table>
			<tr>
				<th>Référence</th>
				<th>Titre</th>
				<th>Auteur</th>
			</tr>
			
			<tr>
				<td>00001</td>
				<td>Carrie au al du diable</td>
				<td>Stephen King</td>
			</tr>
	
			<tr>
				<td>00002</td>
				<td>Ring</td>
				<td>Koji Suzuki</td>
			</tr>
		
			<tr>
				<td>00003</td>
				<td>Chtulhu</td>
				<td>H P Lovecraft</td>
			</tr>
		</table>
		
		<form method="POST" action="#">
			<h2>Ajouter un nouveau livre :</h2>
			<div>
				<label for="reference">Reference</label>
				<input type="text" id="reference" name="reference">
			</div>

			<div>
				<label for="titre">Titre</label>
				<input type="titre" id="titre" name="titre">
			</div>

			<div>
				<label for="auteur">Auteur</label>
				<input type="auteur" id="auteur" name="auteur">
			</div>
		</form>	
	
	</body>
</html>