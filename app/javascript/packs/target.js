var ProgressBar = require('progressbar.js');
console.log(ProgressBar);
// progressbar.js@1.0.0 version is used
// Docs: http://progressbarjs.readthedocs.org/en/1.0.0/
var svgPath = document.getElementById('progress');
var bar = new ProgressBar.Path(svgPath, {
  easing: 'easeInOut',
  duration: 3000,
  // step: function() {
  //   strokeWidth: 10,
  //   trailWidth: 2
  // }
});
bar.animate(1.0);  // Number from 0.0 to 1.0
// strokeWidth: 10,
//   trailWidth: 2,
//   color: '#7FD89B',
//   trailColor: '#eee'
