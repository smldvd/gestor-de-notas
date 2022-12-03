import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { Observable,throwError } from 'rxjs';
import { Client } from './client';
import { ClientRespon } from './clientRespon';


@Injectable({
  providedIn: 'root'
})
export class ClientService {

  private urlApi: string='';

  constructor(private http:HttpClient){
    this.urlApi=environment.apiUrl+'/api';
  }
  getClients():Observable<ClientRespon>{
    return this.http.get<ClientRespon>(this.urlApi+'/clients')
  }
}
