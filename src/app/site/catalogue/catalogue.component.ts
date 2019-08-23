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

  }

}
