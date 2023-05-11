import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CartService {

  constructor(private httpClient: HttpClient) {
  }

  findAllByCustomerId(customerId: number, size: number, page: number): Observable<any> {
    return this.httpClient.get<any>('http://localhost:8080/api/carts/findAll/' + customerId + '?page=' + page + '&size=' + size);
  }

  updateCart(cartId: number): Observable<any> {
    return this.httpClient.get<any>('http://localhost:8080/api/carts/update/' + cartId);
  }
}
