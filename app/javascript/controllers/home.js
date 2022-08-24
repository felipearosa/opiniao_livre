let optionBtn = document.querySelectorAll('.option');
optionBtn.forEach((el) => {
  el.addEventListener('click', () => {
    optionBtn.forEach((ell) => {
      ell.classList.remove('active');
    });
    el.classList.add('active');
   })
})




// let optionBtn = documentation.querySelectorAll('.option');

// let test = optionBtn.forEach((el) => {
//   el.addEventListener('click', () => {
//     console.log("nmkvernkve")
//   })
// })


// // optionBtn.addEventListener('click', () => {
// //   console.log("onkevr")
// // })

// // $(".option").click(function(){
// //   $(".option").removeClass("active");
// //   $(this).addClass("active");

// // });
// console.log("kjbok")

// export { test }
