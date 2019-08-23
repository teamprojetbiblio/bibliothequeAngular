import { Component, OnInit } from '@angular/core';
declare var $: any;
@Component({
  selector: 'app-catalogue',
  templateUrl: './catalogue.component.html',
  styleUrls: ['./catalogue.component.css']
})
export class CatalogueComponent implements OnInit {

  constructor() { }

  ngOnInit() {
    //Check the scroll position
    $(window).scroll(function () {
      if ($(this).scrollTop() > 100) {
        event.preventDefault();
        $(".scrollToTop").css({ 'transform': 'translate(0px, 0px)' });
      } else {
        $(".scrollToTop").css({ 'transform': 'translate(80px, 0px)' });
      }
    });


    //Click and scrolls top effect
    $('.scrollToTop').click(function () {
      $('html, body').animate({ scrollTop: 0 }, 800);
      return false;
    });


    // function that detects if the scroll has stopped
    // $.fn.scrollEnd = function (callback, timeout) {
    //   $(this).scroll(function () {
    //     var $this = $(this);
    //     if ($this.data('scrollTimeout')) {
    //       clearTimeout($this.data('scrollTimeout'));
    //     }
    //     $this.data('scrollTimeout', setTimeout(callback, timeout));
    //   });
    // };
    //If the function has stopped, we hide the scroll btn
    // $(window).scrollEnd(function () {
    //   $(".scrollToTop").css({ 'transform': 'translate(80px, 0px)' });
    // }, 1500);
  }

}
