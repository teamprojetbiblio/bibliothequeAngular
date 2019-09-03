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
   getAdhrentByEmailAndPsw(email:string,password:string) {
    return this.http.get("http://localhost:8080/chercherAdherent?email="+email+"&psw="+password)
  }
  updateAdherent(adherent:Adherent) {
    return this.http.put("http://localhost:8080/adherents/" + adherent.id_adh,adherent)
  }
  deleteAdherent(id:number){
    return this.http.delete("http://localhost:8080/adherents/" + id)
  }

  //connexion :
getAdherentByEmail(email:string, adherent:Adherent)
{
  return this.http.get("http://localhost:8080/chercherAdherentLog?email="+email);
}


}