import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Adherent } from 'src/model/model.adherent';

@Injectable()
export class AdherentService {
  dataJson: any;
  constructor(public http: HttpClient) {
  }
  getAdherents(motCle: string, page: number, size: number) {
    return this.http.get("http://localhost:8080/chercherAdherents?mc=" + motCle + "&size=" + size + "&page=" + page);
    // return this.http.get("http://localhost:8080/chercherAdherents?size=5&page=0");
  }
  saveAdherent(adherent: Adherent) {
    return this.http.post("http://localhost:8080/adherents", adherent)
  }
  getAdherent(id: number) {
    return this.http.get("http://localhost:8080/adherents/" + id)
  }
  updateAdherent(adherent:Adherent) {
    return this.http.put("http://localhost:8080/adherents/" + adherent.id,adherent)
  }
  deleteAdherent(id:number){
    return this.http.delete("http://localhost:8080/adherents/" + id)
  }
}