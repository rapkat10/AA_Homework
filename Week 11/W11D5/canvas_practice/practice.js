document.addEventListener("DOMContentLoaded", function(){
    
    const canvasEl = document.getElementById("mycanvas");
    canvasEl.width = 500;
    canvasEl.height = 500;
    const ctx = canvasEl.getContext("2d");
    ctx.fillStyle = "yellow";
    ctx.fillRect(0, 0, 500, 500);

    ctx.beginPath();
    ctx.arc(200, 150, 40, 0, 2*Math.PI, true);
    ctx.strokeStyle = "red";
    ctx.lineWidth = 15;
    ctx.stroke();
    ctx.fillStyle = "green";
    ctx.fill();

    ctx.translate(canvasEl.width / 2, canvasEl.height / 2);
    ctx.rotate(Math.PI / 4);
    ctx.translate(-(50 / 2), -(50 / 2));
    ctx.fillStyle = "blue";
    ctx.fillRect(0,0, 50, 50);

    ctx.restore();

});
