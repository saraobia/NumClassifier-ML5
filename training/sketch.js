let ones = [];
let twos = [];
let threes = [];
let fours = [];
let fives = [];
let sixs = [];
let sevens = [];
let eights = [];
let nines = [];

function preload() {
  for (let i = 0; i < 90; i++) {
    let index = nf(i + 1, 4, 0);
    ones[i] = loadImage(`data/one${index}.png`);
    twos[i] = loadImage(`data/two${index}.png`);
    threes[i] = loadImage(`data/three${index}.png`);
    fours[i] = loadImage(`data/four${index}.png`);
    fives[i] = loadImage(`data/five${index}.png`);
    sixs[i] = loadImage(`data/six${index}.png`);
    sevens[i] = loadImage(`data/seven${index}.png`);
    eights[i] = loadImage(`data/eight${index}.png`);
    nines[i] = loadImage(`data/nine${index}.png`);
  }
}

let numClassifier;

function setup() {
  createCanvas(400, 400);
  //background(0);
  //image(squares[0], 0, 0, width, height);

  let options = {
    inputs: [100, 100, 4], //4 = aRGB
    task: 'imageClassification',
    debug: true
  };
  numClassifier = ml5.neuralNetwork(options);

  for (let i = 0; i < ones.length; i++) {
    numClassifier.addData({ image: ones[i] }, { label: '1' });
    numClassifier.addData({ image: twos[i] }, { label: '2' });
    numClassifier.addData({ image: threes[i] }, { label: '3' });
    numClassifier.addData({ image: fours[i] }, { label: '4' });
    numClassifier.addData({ image: fives[i] }, { label: '5' });
    numClassifier.addData({ image: sixs[i] }, { label: '6' });
    numClassifier.addData({ image: sevens[i] }, { label: '7' });
    numClassifier.addData({ image: eights[i] }, { label: '8' });
    numClassifier.addData({ image: nines[i] }, { label: '9' });
  }
  numClassifier.normalizeData();
  numClassifier.train({ epochs: 50 }, finishedTraining);
}

function finishedTraining() {
  console.log('finished training!');
  numClassifier.save();
}
