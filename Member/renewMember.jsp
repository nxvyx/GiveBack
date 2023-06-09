<!DOCTYPE html>
<html>
     <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Renew MemberShip</title>

</head>
<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
    }
    
    * {
        box-sizing: border-box;
    }
    /* Full-width input fields */
    
    input[type=text],
    input[type=password],
    input[type=email],
    input[type=date],
    select {
        width: 100%;
        padding: 15px;
        margin: 5px 0 22px 0;
        display: inline-block;
        border: none;
        background: #f1f1f1;
    }
    /* Add a background color when the inputs get focus */
    
    input[type=text]:focus,
    input[type=password]:focus,
    input[type=email]:focus,
    input[type=date]:focus,
    select:focus {
        background-color: #ddd;
        outline: none;
    }
    /* Set a style for all buttons */
    
    button {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
        opacity: 0.9;
    }
    
    button:hover {
        opacity: 1;
    }
    /* Float cancel and signup buttons and add an equal width */
    
    .donatebtn {
        float: left;
        width: 100%;
    }
    /* Add padding to container elements */
    
    .container {
        padding: 26px;
    }
    /* The Modal (background) */
    
    .modal {
        position: fixed;
        /* Stay in place */
        z-index: 1;
        /* Sit on top */
        left: 0;
        top: 0;
        width: 100%;
        /* Full width */
        height: 100%;
        /* Full height */
        overflow: auto;
        /* Enable scroll if needed */
        background-color: #474e5d;
        padding-top: 50px;
    }
    /* Modal Content/Box */
    
    .modal-content {
        background-color: #fefefe;
        margin: 5% auto 15% auto;
        /* 5% from the top, 15% from the bottom and centered */
        border: 1px solid #888;
        width: 80%;
        /* Could be more or less, depending on screen size */
    }
    /* Style the horizontal ruler */
    
    hr {
        border: 1px solid #f1f1f1;
        margin-bottom: 25px;
    }
    /* Clear floats */
    
    .clearfix::after {
        content: "";
        clear: both;
        display: table;
    }
    
    @media screen and (min-width: 991px) {
        .modal-content {
            width: 60%;
        }
    }
</style>

<body>
     <%
            String username=(String)session.getAttribute("username");
            if(username==null)
            {
                response.sendRedirect("/minorProject/index.html");
            }
        %>
    <div id="id01" class="modal">
        <form class="modal-content" action="/minorProject/RenewMemberChecker" Method="POST">
            <div class="container">
                <h1 style="text-align: center;color: orange;">Renew or extends MemberShip</h1>
                <p style="text-align: center;margin-top: -10px;">Small things makes bigger on unity</p>
                <hr>
                <label for="optradio"><b style="font-family: serif;font-size: large;">Select Your Plan</b> : </label>
                <label class="radio-inline">
                  <input type="radio" name="optradio" value="1000" checked>1 Month
                </label>
                <label class="radio-inline">
                  <input type="radio" name="optradio" value="2850">3 Months
                </label>
                <label class="radio-inline">
                  <input type="radio" name="optradio" value="5700">6 Months
                </label>
                <label class="radio-inline">
                  <input type="radio" name="optradio" value="11000">1 year
                </label>
                <br/>
                <br/>

                <label for="charge"><b>Paying : </b></label>
                <input type="text" style="width: auto;" value="1000" id="charge" name="charge" readonly><br/>

                <p>By creating an account you agree to our <a href="" onclick="alert('Coming Soon');" style="color:dodgerblue">Terms & Privacy</a>.</p>

                <div class="clearfix">
                    <button type="submit" id="submit" class="donatebtn">Donate</button>
                </div>
            </div>
        </form>
    </div>
    <script>
        var ps = document.getElementsByName("optradio");
        var wgs = document.getElementById("charge");
        for (let k = 0; k < ps.length; k++) {
            //var rad = ps[k].querySelectorAll("li>input");
            var prev = null;

            ps[k].addEventListener('change', function() {
                (prev) ? prev.value: null;
                if (this !== prev) {
                    prev = this;
                }
                //console.log(this.value);//prints the value of the selcted radio element
                wgs.value = parseInt(this.value);
            });

        }
    </script>
</body>

</html>