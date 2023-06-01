let numClassifier;
let canvas;
let resultsDiv;
let inputImage;
let clearButton;
let guess;
let confidence;

//P5.js functions
 function setup() {


//Canvas setup
  canvas = createCanvas(400, 400);
  canvas.parent("p5Canvas");
  pixelDensity(1);
  background(255);

//Clear btn
  clearButton = document.getElementById("deleteBtn");
  clearButton.addEventListener("click", () => { 
  background(255);
  });


 //ML
  let options = {
    task: 'imageClassification',
  };
  numClassifier = ml5.neuralNetwork(options);
  const modelDetails = {
    model: 'model/model.json',
    metadata: 'model/model_meta.json',
    weights: 'model/model.weights.bin',
  };
  numClassifier.load(modelDetails, modelLoaded);

   
 //resultsDiv = createDiv('Loading Model');
  inputImage = createGraphics(100, 100);
}

function modelLoaded() {
  console.log('model ready!');
  classifyImage();
}

function classifyImage() {
  inputImage.copy(canvas, 0, 0, 400, 400, 0, 0, 100, 100);
  numClassifier.classify(
    {
      image: inputImage,
    },
    gotResults
  );
}

function gotResults(err, results) {
  if (err) {
    console.error(err);
    return;
  }

  guess = results[0].label;
  confidence = nf(100 * results[0].confidence, 2, 1);

  
  document.getElementById(
   "result"
 ).innerText = `Guess: ${guess} 
 ${confidence}% of confidence`;
 classifyImage();
 }



function draw() {
  if (mouseIsPressed) {
    strokeWeight(10);
    stroke(100);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
