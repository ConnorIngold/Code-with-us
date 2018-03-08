var ProgressBar = require('progressbar.js');
console.log(ProgressBar);
// progressbar.js@1.0.0 version is used
// Docs: http://progressbarjs.readthedocs.org/en/1.0.0/
var svgPath = document.getElementById('progress');
var bar = new ProgressBar.Path(svgPath, {
  strokeWidth: 1000,
  easing: 'easeInOut',
  duration: 3000,
  color: '#7FD89B',
  trailColor: '#eee',
  trailWidth: 1,
<<<<<<< HEAD
  svgStyle: {width: '100%', height: '100%'},
  text: {
    style: {
      // Text color.
      // Default: same as stroke color (options.color)
      color: '#999',
      position: 'absolute',
      right: '0',
      top: '30px',
      padding: 10,
      margin: 5,
      transform: null
    },
    autoStyleContainer: false
  },
  from: {color: '#FFEA82'},
  to: {color: '#ED6A5A'},
  step: (state, bar) => {
    bar.setText(Math.round(bar.value() * 100) + ' %');
  }
=======
  svgStyle: {width: '100%', height: '100%'}
>>>>>>> aad0bdf429439c4c3d871247bb5707f51a4caa75
});


bar.animate(1.0);  // Number from 0.0 to 1.0
