// $(".tagwithname").click(function(){
//   $('.tagwithname').toggleClass('.tags-result.active');
// })


const tags = document.querySelectorAll('.tags-result')

tags.forEach((tag) => {
  tag.addEventListener('click', (e) => { // Everything from here below is a callback
    tag.classList.toggle('tag-active')
  })
})
