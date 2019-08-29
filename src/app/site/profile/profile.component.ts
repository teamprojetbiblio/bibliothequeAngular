import { Component, OnInit } from '@angular/core';
import { Adherent } from 'src/model/model.adherent';
import { ActivatedRoute, Router } from '@angular/router';
import { AdherentService } from 'src/services/adherents.service';
declare var $: any;

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css']
})
export class ProfileComponent implements OnInit {
  idAdherent: number;
  adherent: Adherent;

  constructor( private router: Router,public adherentService: AdherentService, public activatedRoute: ActivatedRoute) {
    this.idAdherent = activatedRoute.snapshot.params['id'];
    this.adherentService.getAdherent(this.idAdherent).subscribe((data: any) => {
      this.adherent = data;
      console.log(this.adherent)
    })
  }

  ngOnInit() {
    // if (!this.adherent) {
    //   this.router.navigate(['home']);
    // }
  }

}
