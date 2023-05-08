import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Customer} from '../model/customer';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CustomerService {

  constructor(private httpClient: HttpClient) {
  }

  saveCustomer(customer: Customer): Observable<Customer> {
    return this.httpClient.post<Customer>(`http://localhost:8080/api/customers/save`, customer);
  }

  findTCustomerByEmail(email: string): Observable<Customer> {
    return this.httpClient.get<Customer>(`http://localhost:8080/api/customers/details/${email}`);
  }
}

