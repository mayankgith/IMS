<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Page Description">
    <title>Feedback Page</title>
</head>

<body>
    <link href = "style.css" type = "text/css" rel = "stylesheet" />
<h1>Feedback Page </h1>
<form action="input.php" method="post">
    <fieldset>
        <legend>Student Enquiry Form</legend>
        <p>
            <label for="input_text">Subject:</label>
            <input name ="Subject" id ="input_text" type="text" placeholder="Text">
        </p>
        <p>
            <label for="textarea_comments">Have a Comments..?</label>
            <textarea name="textarea" id="textarea" rows="10" cols="100" placeholder="Your Comments here..?"></textarea>
        </p>
    </fieldset>
    <p><input type="submit">    <input type="reset"></p>
</form>
</body>
</html>