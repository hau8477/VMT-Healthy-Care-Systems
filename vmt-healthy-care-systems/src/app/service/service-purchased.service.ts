import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ServicePurchasedService {

  constructor(private httpClient: HttpClient) {
  }

  findAll(idCustomer: number, nameService: string, page: number, size: number): Observable<any> {
    return this.httpClient.get<any>(
      'http://localhost:8080/api/service-purchases/findAll/' + idCustomer + '?page=' + page + '&size=' + size);
  }
}
