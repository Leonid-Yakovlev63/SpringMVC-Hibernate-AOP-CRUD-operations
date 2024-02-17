<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Сотрудники</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
      body {
        background-color: #f5f5f5;
        font-family: Arial, sans-serif;
        padding: 20px;
      }
      th, td {
        text-align: center;
      }

      table {
        margin-top: 20px;
      }
      .nav a{
        color: black !important;
        }
        .nav a:hover, .blueBtn:hover{
        color: blue !important;
        transition: 0.2s;
        cursor: pointer;
        }
        .liquidate:hover{
            color: red !important;
            transition: 0.2s;
        }
    </style>
  </head>
  <body>
    <div class="container">
    <ul class="nav justify-content-center">
      <li class="nav-item">
        <a class="nav-link" href="#">Главная</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" onClick="window.location.href='addNewEmployee'">Добавить нового сотрудника</a>
      </li>
    </ul>
      <h2 class="text-center mt-4 mb-4">Сотрудники</h2>
      <table class="table">
        <thead>
          <tr>
            <th>Имя</th>
            <th>Фамилия</th>
            <th>Отдел</th>
            <th>Зарплата</th>
            <th>Действия</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="emp" items="${allEmps}">
            <c:url var="updateButton" value="/updateInfo">
                <c:param name="empId" value="${emp.id}" />
            </c:url>

            <c:url var="deleteButton" value="/deleteEmployee">
                <c:param name="empId" value="${emp.id}" />
            </c:url>
            <tr>
              <td>${emp.name}</td>
              <td>${emp.surName}</td>
              <td>${emp.department}</td>
              <td>${emp.salary}</td>
              <td>
                <button class="blueBtn" onClick="window.location.href='${updateButton}'">Обновить</button>
                <button class="liquidate" onClick="window.location.href='${deleteButton}'">Удалить</button>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
      <button class="blueBtn" onClick="window.location.href='addNewEmployee'"/>Добавить</button>
    </div>
  </body>
</html>
