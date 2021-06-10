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
	

		<h1>Bienvenue dans ma bibliotheque</h1>
	
	<!--   encqadrement du tableau   -->
		<table>
		
			<!--  ligne d'en tête  -->
			<tr>
				<th>Référence</th>
				<th>Titre</th>
				<th>Auteur</th>
			</tr>
			
			<!--  (for Livre unLivre : livres){    -->
			<% for (Livre unLivre : (ArrayList<Livre>) request.getAttribute("livres")) {   %>
			<tr>
			<!-- le egal signifie va afficher versus code avec point virgule "va cherher"      -->
				<td><%= unLivre.getReference() %></td>
				<td><%= unLivre.getAuteur() %></td>
				<td><%= unLivre.getTitre() %></td>

			</tr>
				
		<%	}  %>
			
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
			
			<div><input type="submit"></div>
		</form>	
	
	</body>
</html>