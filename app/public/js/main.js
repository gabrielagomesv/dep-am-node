/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, {
/******/ 				configurable: false,
/******/ 				enumerable: true,
/******/ 				get: getter
/******/ 			});
/******/ 		}
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 0);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(1);
module.exports = __webpack_require__(2);


/***/ }),
/* 1 */
/***/ (function(module, exports) {

$(document).ready(function(){
  var nav = $('header');
  
  $(window).scroll(function () {
    if ($(this).scrollTop() > 240) {
      nav.addClass("fixed");
    } else {
      nav.removeClass("fixed");
    }
  });
  // function for accordion
  $('.btn-plus').click(function(){
    var cardFaq = $(this).parent().parent();
    cardFaq.toggleClass('active');
    cardFaq.siblings().removeClass('active');
    if (cardFaq.hasClass('active')) {
      $(this).text('-');
    } else{
      $(this).text('+');
    }
  });
  // function for open modal faq
  $('.open-modal-faq').click(function(){
    $('.modal-overlay , .modal').addClass('active');  
  });
  $('.modal-overlay').click(function(){
    $('.modal-overlay , .modal').toggleClass('active');  
  });
  $('.slider-content').slick({
    infinite: true,
    slidesToShow: 4,
    slidesToScroll: 1,
    centerPadding: '0',
    centerMode: true,
    adaptiveHeight: true,
    prevArrow:"<button type='button' class='slick-prev'></button>",
    nextArrow:"<button type='button' class='slick-next'></button>",
    responsive: [
      {
        breakpoint: 760,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 1
        }
      },
      {
        breakpoint: 420,
        settings: {
          //centerMode: true,
          //centerPadding: '60px',
          //slidesToShow: 1,
          //slidesToScroll: 1
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
    ]
  }); 
});




/***/ }),
/* 2 */
/***/ (function(module, exports) {

const formName = document.querySelector('.input_name'),
      formEmail = document.querySelector('.input_email'),
      formSubject = document.querySelector('.input_subject'),
      formMessage = document.querySelector('.message-faq');


document.querySelector('.form-faq').addEventListener('submit',function(e){
  e.preventDefault();
  validateForm();
});

function validateForm() {
  // Nome válido
  if (formName.value == '') {
    document.querySelector('.error_name').style.display = 'block';
  }
  // E-mail válido
  if (formEmail.value == '') {
    document.querySelector('.error_email').style.display = 'block';
  }else if(formEmail.value.substring(0,formEmail.value.indexOf('@')) < 1){
    document.querySelector('.error_email').style.display = 'block';
  }else if(formEmail.value.substring(formEmail.value.indexOf('@')+1,formEmail.value.length < 3)){
    document.querySelector('.error_email').style.display = 'block';
  }
  // Subject válido
  if(formSubject.value == ''){
    document.querySelector('.error_subject').style.display = 'block';
  }
  // Message válida
  if(formMessage.value == ''){
    document.querySelector('.error_message').style.display = 'block';
  }
}




/***/ })
/******/ ]);