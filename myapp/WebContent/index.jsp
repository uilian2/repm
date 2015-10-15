<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>jQuery Ajax POST data Request and Response Example</title>
 
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="app.js"></script>
 
</head>
<body>
 
    <form id="myAjaxRequestForm">
        <fieldset>
            <legend>jQuery Ajax Form data Submit Request</legend>
 
                <p>
                    <label for="countryCode">Country Code:</label>
 
                    <input id="countryCode" type="text" name="countryCode" />
                </p>
                <p>
                    <input id="myButton" type="button" value="Submit" />
                </p>
        </fieldset>
    </form>
    <div id="anotherSection">
        <fieldset>
            <legend>Response from jQuery Ajax Request</legend>
                 <div id="ajaxResponse"></div>
        </fieldset>
    </div>   
 
</body>
</html>