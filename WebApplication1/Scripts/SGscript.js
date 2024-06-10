var blockSize = 25;
var total_row = 17; //total rows
var total_col = 17; //total coloums
var board;
var context;
var points = 0;

//set the total number of rows and coloums
var snakeX = blockSize * 5;
var snakeY = blockSize * 5;

//speed of snake in x and y coordinates
var speedX = 0;
var speedY = 0;

var snakeBody = [];

var foodX;
var foodY;

var gameOver = false;

window.onload = function () {

    //sets board height and width
    board = document.getElementById("board");
    board.height = total_row * blockSize;
    board.width = total_col * blockSize;
    context = board.getContext("2d");

    placeFood();
    document.addEventListener("keyup", changeDirection);

    //set snake speed
    setInterval(update, 1000 / 10);
}

function update() {
    if (gameOver) {
        location.reload();
        return;
    }

    //background of game
    context.fillStyle = "green";
    context.fillRect(0, 0, board.width, board.height);

    //set food color and position
    context.fillStyle = "yellow";
    context.fillRect(foodX, foodY, blockSize, blockSize);

    if (snakeX == foodX && snakeY == foodY) {
        snakeBody.push([foodX, foodY]);
        document.getElementById('points').innerHTML = (points += 5);
        placeFood();
    }


    //body of snake will grow
    for (let i = snakeBody.length - 1; i > 0; i--) {
        //it will store previous part of snake to the current part
        snakeBody[i] = snakeBody[i - 1];
    }

    if (snakeBody.length) {
        snakeBody[0] = [snakeX, snakeY];
    }

    context.fillStyle = "white";
    snakeX += speedX * blockSize;//updates snake position in x coordinate
    snakeY += speedY * blockSize;//update snake position in y coordinate
    context.fillRect(snakeX, snakeY, blockSize, blockSize);
    for (let i = 0; i < snakeBody.length; i++) {
        context.fillRect(snakeBody[i][0], snakeBody[i][1], blockSize, blockSize);
    }
    if (snakeX < 0 || snakeX > total_col * blockSize || snakeY < 0 || snakeY > total_row * blockSize) {
        gameOver = true;
        //out of ound condition
        alert("Game Over");
    }
    for (let i = 0; i < snakeBody.length; i++) {
        if (snakeX == snakeBody[i][0] && snakeY == snakeBody[i][1]) {

            //snake eats own body
            gameOver = true;
            alert("Game Over");
        }
    }
}

//movement of snake - we are using addEventListener
function changeDirection(e) {
    if (e.code == "ArrowUp" && speedY != 1) {
        speedX = 0;
        speedY = -1;
    }
    else if (e.code == "ArrowDown" && speedY != -1) {
        speedX = 0;
        speedY = 1;
    }
    else if (e.code == "ArrowLeft" && speedX != 1) {
        speedX = -1;
        speedY = 0;
    }
    else if (e.code == "ArrowRight" && speedX != -1) {
        speedX = 1;
        speedY = 0;
    }
}

//randomly places food
function placeFood() {
    foodX = Math.floor(Math.random() * total_col) * blockSize;

    foodY = Math.floor(Math.random() * total_row) * blockSize;
}