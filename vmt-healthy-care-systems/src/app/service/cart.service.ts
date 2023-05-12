import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {Cart} from '../model/cart';

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

  save(cart: Cart): Observable<Cart> {
    return this.httpClient.post('http://localhost:8080/api/carts/save', cart);
  }

  increaseQuantity(cartId: number): Observable<any> {
    return this.httpClient.get<any>(`http://localhost:8080/api/carts/increase-quantity/${cartId}`);
  }

  decreaseQuantity(cartId: number): Observable<any> {
    return this.httpClient.get<any>(`http://localhost:8080/api/carts/decrease-quantity/${cartId}`);
  }

  payment(cartIds: number[]): Observable<any> {
    return this.httpClient.post<any>('http://localhost:8080/api/carts/payment', cartIds);
  }
}
