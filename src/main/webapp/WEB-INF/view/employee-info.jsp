<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Добавить нового сотрудника</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
      body {
        background-color: #f5f5f5;
        font-family: Arial, sans-serif;
        padding: 20px;
      }
      .form > div{
        padding: 15px;
      }
      .nav a{
              color: black !important;
              }
              .nav a:hover, button:hover{
              color: blue !important;
              transition: 0.2s;
              cursor: pointer;
              }
    </style>
  </head>
  <body>
    <div class="container">
    <ul class="nav justify-content-center">
          <li class="nav-item">
            <a class="nav-link" onClick="window.location.href='/'">Главная</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Добавить нового сотрудника</a>
          </li>
        </ul>
        <h2 class="text-center mt-4 mb-4">Информация о сотруднике</h2>
        <form:form class="form" action ="saveEmployee" modelAttribute="employee">
            <form:hidden path="id"/>
            <div class="name">
                Имя <form:input path="name" required="required"/>
            </div>
            <div class="surName">
                 Фамилия <form:input path="surName" required="required"/>
            </div>
            <div class="department">
                 Отдел <form:input path="department" required="required"/>
            </div>
            <div class="salary">
                 Зарплата <form:input path="salary"/>
            </div>
            <div class="submit">
                <button type="submit">OK</button>
            </div>
        </form:form>
    </div>
  </body>
</html>
