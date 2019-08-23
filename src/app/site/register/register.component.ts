import { Component, OnInit } from '@angular/core';
import { Adherent } from 'src/model/model.adherent';
import { AdherentService } from 'src/services/adherents.service';
import { HttpClient } from '@angular/common/http';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {
  adherent: Adherent = new Adherent();
  idAdherent: number;

  constructor(public adherentService: AdherentService) { }

  ngOnInit() {
  }
  onSaveAdherent() {
    // this.adherentService.saveAdherent(this.adherent).subscribe(data => {
    //   console.log(data)
    // })
    console.log(this.adherent)
  }
}
