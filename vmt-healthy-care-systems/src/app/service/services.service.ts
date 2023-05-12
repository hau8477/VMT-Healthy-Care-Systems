import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {Services} from '../model/services';

@Injectable({
  providedIn: 'root'
})
export class ServicesService {

  constructor(private httpClient: HttpClient) {
  }

  findAllByCategoryAndName(categoryId: number, name: string, page: number, size: number): Observable<any> {
    return this.httpClient.get<any>(
      'http://localhost:8080/api/services/findAll/' + categoryId + '?name=' + name + '&page=' + page + '&size=' + size);
  }

  findById(id: number): Observable<Services> {
    return this.httpClient.get<Services>('http://localhost:8080/api/services/public/details/' + id);
  }
}
