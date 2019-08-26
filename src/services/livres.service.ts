import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable()
export class LivreService{
    dataJson:any;
    constructor(public http: HttpClient){
    }

    getLivres(motCle: string, page: number, size: number) {
    return this.http.get("http://localhost:8080/livresPages?mc=" + motCle + "&size=" + size + "&page=" + page);
    }
     getLivre(id: number) {
    return this.http.get("http://localhost:8080/livres/" + id)
  }
}