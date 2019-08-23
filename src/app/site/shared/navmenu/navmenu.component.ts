import { Component, OnInit } from '@angular/core';
import { Adherent } from 'src/model/model.adherent';
import { AdherentService } from 'src/services/adherents.service';

declare var $: any;

@Component({
  selector: 'app-navmenu',
  templateUrl: './navmenu.component.html',
  styleUrls: ['./navmenu.component.css']
})
export class NavmenuComponent implements OnInit {
  adherent: Adherent = new Adherent();
  idAdherent: number;

  constructor(public adherentService: AdherentService) { }

  ngOnInit() {
    // var mn = $(".main-nav");
    let smLogo = "smallerLogo";
    let bgLogo = "biggerLogo";
    let smLogoTitle="smallerLogoTitle";
    let bgLogoTitle="biggerLogoTitle";
    // let header=$("header");
    let logo=$("#logo");
    let logoTitle=$("#logoTitle");


    $(window).scroll(function () {
      if ($(this).scrollTop() > 100) {
        logo.addClass(smLogo);
         logo.removeClass(bgLogo);
         logoTitle.addClass(smLogoTitle);
         logoTitle.removeClass(bgLogoTitle);
       
      }
      else {
         logo.removeClass(smLogo);
         logo.addClass(bgLogo);
          logoTitle.removeClass(smLogoTitle);
         logoTitle.addClass(bgLogoTitle);
      }
    });
 
  }
 onSaveAdherent() {
    this.adherentService.saveAdherent(this.adherent).subscribe(data => {
      console.log(data)
    })

  }
}
