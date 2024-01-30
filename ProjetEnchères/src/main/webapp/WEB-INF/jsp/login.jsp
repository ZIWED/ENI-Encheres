<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ENI Enchère - Connexion</title>
</head>
<body>

<div class="head">
<h1> Se connecter</h1>
</div>
 <c:if test="${email ne null}">
 	<p>Email ou mot de passe non valide</p>
 </c:if>
 <section class="login-form">
      <form class="login" action="<%=request.getContextPath()%>/login" method="post"> 
        <div class="input-field">
          <label for="email">Email: </label>
          <input class="input" name="email" id="email" placeholder="email" required="required">
        </div>

        <div class="input-field">
          <label for="mdp">Mot De Passe: </label>
          <input class="input" name="mdp" id="mdp" type="password" placeholder="Mot De Passe"required>
        </div>
       
    
        <div>
          <button class="btn-login" type="submit">Connexion</button>
        </div>

        <div>
          <a href ="<%=request.getContextPath() %>/register"><button class="btn-login" type="button"> 
            Créer un compte
          </button></a>
        </div>
      </form>
    </section>
</body>
</html>