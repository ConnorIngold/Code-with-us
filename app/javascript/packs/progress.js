// import ProgressBar from "progressbar.js"

//   // Number from 0.0 to 1.0
// Array.from(document.querySelectorAll(".radial-progress")).forEach((element) => {
//   const value = parseFloat(element.dataset.value);

//   const bar = new ProgressBar.Circle('#arthur-progress', {
//     color: '#aaa',
//     // This has to be the same size as the maximum width to
//     // prevent clipping
//     strokeWidth: 4,
//     trailWidth: 1,
//     easing: 'easeInOut',
//     duration: 3000,
//     text: {
//       autoStyleContainer: true
//     },
//     from: { color: '#e0111c', width: 1 },
//     to: { color: '#333', width: 4 },
//     // Set default step function for all animate calls
//     step: function(state, circle) {
//       circle.path.setAttribute('stroke', state.color);
//       circle.path.setAttribute('stroke-width', state.width);

//       var value = Math.round(circle.value() * 100);
//       if (value === 0) {
//         circle.setText('');
//       } else {
//         circle.setText(value);
//       }

//     }
//   });
//   bar.text.style.fontFamily = '"Raleway", Helvetica, sans-serif';
//   bar.text.style.fontSize = '2rem';

//   bar.animate(value);
// });
