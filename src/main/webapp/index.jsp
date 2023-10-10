<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="models.ResultBean" %>
<%@ page import="models.Point" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
<head>
    <title>Results Table</title>
    <link rel="stylesheet" href="styles/main.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">
</head>

<body>

<table class="main-table">

    <thead>
    <tr>
        <th class="header-text">
            Nazemtsev Sergei Dmitryevitch P3211 3102
        </th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td class="canvas-row">
            <canvas id="canvas" class="draw">Unsupported</canvas>
        </td>
    </tr>


    <tr>
        <td>
            <form id="myForm">
                <table class="form-container">
                    <tr>
                        <td>
                            <label for="xValue">Coordinate X ((-3; 5))</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="xValue" id="xValue" class="coords-input" maxlength="10">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="yValue">Coordinate Y</label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <div id="yValue" style="width: 150px; margin-left: 3%">
                                <input type="button" class="y-button" value="-3">
                                <input type="button" class="y-button" value="-2">
                                <input type="button" class="y-button" value="-1">
                                <input type="button" class="y-button" value="0">
                                <input type="button" class="y-button" value="1">
                                <input type="button" class="y-button" value="2">
                                <input type="button" class="y-button" value="3">
                                <input type="button" class="y-button" value="4">
                                <input type="button" class="y-button" value="5">

                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <fieldset style="width: 185%; max-width: 200px">
                                <legend>Range R</legend>

                                <input type="checkbox" id="rValue1" name="rValue" value="1">
                                <label for="rValue1">1</label> <br>

                                <input type="checkbox" id="rValue2" name="rValue" value="1.5">
                                <label for="rValue2">1.5</label> <br>

                                <input type="checkbox" id="rValue3" name="rValue" value="2">
                                <label for="rValue3">2</label> <br>

                                <input type="checkbox" id="rValue4" name="rValue" value="2.5">
                                <label for="rValue4">2.5</label> <br>

                                <input type="checkbox" id="rValue5" name="rValue" value="3">
                                <label for="rValue5">3</label> <br>
                            </fieldset>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label for="user">User (s######)</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="user" id="user" class="coords-input" maxlength="10">
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <input type="button" value="Send" class="submit-btn"><br>
                        </td>
                    </tr>
                </table>
            </form>
        </td>
    </tr>
    <tr>
        <% ResultBean resultBean = (ResultBean) request.getSession().getAttribute("resultBean");
            if (resultBean == null) {
        %>

        <td>
            <table id="resultsTable">
                <tr>
                    <th>X</th>
                    <th>Y</th>
                    <th>R</th>
                    <th>Result</th>
                </tr>

            </table>

        <% } else {
            DecimalFormat df = new DecimalFormat("0.########");%>
        <td>
            <table id="resultsTable">
                <tr>
                    <th>X</th>
                    <th>Y</th>
                    <th>R</th>
                    <th>Result</th>
                </tr>

                <% for (Point point : resultBean.getResults()) { %>
                <tr>
                    <td>
                        <%= df.format(point.getX())%>
                    </td>

                    <td>
                        <%= df.format(point.getY())%>
                    </td>

                    <td>
                        <%=df.format(point.getR())%>
                    </td>

                    <td>
                        <%= point.isInArea() ? "<span>In</span>" : "<span>Out</span>"%>
                    </td>
                </tr>
                <% } %>
            </table>
            <% } %>
        </td>

    </tr>

    </tbody>


</table>


<script type="module" src="scripts/render.js"></script>
<script type="text/javascript" src="scripts/init.js"></script>
<script type="text/javascript" src="scripts/drawing.js"></script>
<script type="text/javascript" src="scripts/sendRequest.js"></script>
<script type="text/javascript" src="scripts/yActions.js"></script>
<script type="text/javascript" src="scripts/checkBoxes.js"></script>
<script type="text/javascript" src="scripts/canvasClickHandle.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
</body>
</html>


<script>

</script>