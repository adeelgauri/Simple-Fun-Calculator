<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Fun Calculator JSP</title>
    <link rel="stylesheet" href="styles.css">
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-r from-cyan-500 to-blue-500 ">

<div class="justify-items-center">

    <script src="https://unpkg.com/@dotlottie/player-component@2.7.12/dist/dotlottie-player.mjs"
                type="module"></script><dotlottie-player
         src="https://lottie.host/33bc17ff-300a-4ceb-a43a-d4a953fb10e6/AmP8IeM7MH.json" background="transparent"
         speed="1" style="width: 30%; height: 35%" direction="1" playMode="normal" loop autoplay></dotlottie-player>
</div>

<%
    String joke = (String) session.getAttribute("joke");
%>

<div class="mb-8 justify-items-center">
    <h1 class="text-8xl font-bold">
    Joke of the day!
</h1>
</div>

<div class="mb-8 justify-items-center">
    <h3 class="text-4xl font-bold">
    <%= joke %>
</h3>
</div>


<form action="<%= application.getContextPath() %>/funCalc" >
    <div class=" text-2xl space-x-4 flex justify-center">

        <input class="rounded-lg p-3 outline-none " name="num1"
               placeholder="Enter first number">


        <input class="rounded-lg p-3 outline-none " name="num2"
               placeholder="Enter second number">

        <button class="bg-[#fafafa] rounded-lg p-3" name="bt1" value="1">
            <img src="images/addition-5-512.png" alt="+" width="30px" height="30px">
        </button>
        <button class="bg-[#fafafa] rounded-lg p-3" name="bt1" value="2">
            <img src="images/subtraction-1-512.png" alt="-" width="30px" height="30px">
        </button>
        <button class="bg-[#fafafa] rounded-lg p-3" name="bt1" value="3">
            <img src="images/Multiplication.png" alt="x" width="30px" height="30px">
        </button>
        <button class="bg-[#fafafa] rounded-lg p-3" name="bt1" value="4">
            <img src="images/Division.png" alt="/" width="30px" height="30px">
        </button>
    </div>
</form>

<%

    Integer answer = (Integer) session.getAttribute("answer");
%>

<div class="mb-5 justify-items-center">
    <h1 class="text-6xl font-bold">
    Ans = <%= answer %>
</h1>
</div>

</body>
</html>