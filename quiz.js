function checkMyForm() {
  var a = document.forms["quizform"]["cu_Fname"].value;
  var aa = document.forms["quizform"]["cu_Lname"].value;

  var b = document.forms["quizform"]["price"].value;
  var c = document.forms["quizform"]["t_Fname"].value;
  var cc = document.forms["quizform"]["t_Lname"].value;

  var d = document.forms["quizform"]["cl_name"].value;

  if (!isNaN(a) | !isNaN(aa)){
    window.alert("names cannot be numbers!");
    return false;
  }
  if (!isNan(c) | !isNaN(cc)){
    window.alert("names cannot be numbers!");
    return false;
  }
  if (!isNaN(d)){
    window.alert("names cannot be numbers!");
    return false;
  }
  if (b < 0) {
    window.alert("negative prices not allowed");
    return false;
  }  else if (b % 1 == 0){
    window.alert("prices must not be integers");
    return false;
  }

}
