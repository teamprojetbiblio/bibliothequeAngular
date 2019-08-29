import { Component, OnInit } from '@angular/core';
import { LivreService } from 'src/services/livres.service';
import { Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';

declare var $: any;
@Component({
  selector: 'app-catalogue',
  templateUrl: './catalogue.component.html',
  styleUrls: ['./catalogue.component.css']
})
export class CatalogueComponent implements OnInit {
  pageLivres: any;
  motCle: string;
  size: number = 12;
  currentPage: number = 0;
  pages: any;
  categorie: string;

  constructor(public http: HttpClient, public livreService: LivreService, public router: Router) { }

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

  doSearch() {
    // this.http.get("http://localhost:8080/chercherAdherents?mc=jaja&size=5&page=0")
    //this.http.get("http://localhost:8080/chercherAdherents?size=5&page=0")
    this.livreService.getLivres(this.motCle, this.currentPage, this.size).subscribe(data => {
      this.pageLivres = data;
      this.pages = new Array(this.pageLivres.totalPages);
    },
      err => console.log(err));
  }

    doSearchByCat() {
    // this.http.get("http://localhost:8080/chercherAdherents?mc=jaja&size=5&page=0")
    //this.http.get("http://localhost:8080/chercherAdherents?size=5&page=0")
    this.livreService.getLivresByCat(this.categorie, this.currentPage, this.size).subscribe(data => {
      this.pageLivres = data;
      this.pages = new Array(this.pageLivres.totalPages);
console.log(this.categorie);
    },
      err => console.log(err));
  }
  chercher() {
    this.doSearch();
  }
  goToPage(i: number) {
    this.currentPage = i;
    this.doSearch();
  }

}
