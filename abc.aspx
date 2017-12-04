<%@ Page Language="C#" AutoEventWireup="true" CodeFile="abc.aspx.cs" Inherits="abc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
        <script src="js/jquery-1.6.js"></script>
    <script>


    
     //$(document).ready(function () {
     //         debugger;
     //         $('#ddltest').change(function () {
     //             alert("sgnf");
     //         });
     //})

     $(document).ready(function () {
         debugger;
         $('#ddltest').change(function () {

             //alert($(this).val());
             //$.ajax({
             //    type: "GET", 		//GET or POST or PUT or DELETE verb
             //    url: "abc.aspx/ABC", 		// Location of the service
             //    data: { "aaaa": $(this).val() }, 		//Data sent to server
             //    contentType: "{aaaa: '" + request.term + "'}",	 // content type sent to server
             //    dataType: "json", 	//Expected data format from server
             //    processdata: true, 	//True or False
             //    success: function (json) {//On Successful service call
             //        debugger;
             //        var result = json.name;
             //        $("#dvAjax").html(result);
             //    },
             //    error: ServiceFailed	// When Service call fails
             //});

             $.ajax({
                 type: "POST",
                 url: "AutoService.asmx/GetCurrentTime",
                 data: '{name: "' + $(this).val() + '" }',
                 contentType: "application/json; charset=utf-8",
                 dataType: "json",
                 success: OnSuccess,
                 failure: function (response) {
                     alert(response.d);
                 }
             });

             function OnSuccess(response) {
                 alert(response.d);
             }
         });
     })
        </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <select id="ddltest">
                                   <option value="1">asfdd</option>
                                    <option value="2">sfasd</option>
                               </select>

    </div>
    </form>
</body>
</html>
