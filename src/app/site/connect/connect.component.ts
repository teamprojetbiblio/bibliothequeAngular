import { Component, OnInit } from '@angular/core';
import { Adherent } from 'src/model/model.adherent';
import { AdherentService } from 'src/services/adherents.service';

@Component({
  selector: 'app-connect',
  templateUrl: './connect.component.html',
  styleUrls: ['./connect.component.css']
})
export class ConnectComponent implements OnInit {
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
