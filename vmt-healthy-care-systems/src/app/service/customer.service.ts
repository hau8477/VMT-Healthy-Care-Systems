import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Customer} from '../model/customer';
import {Observable, Subject} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CustomerService {
  private customerChangedSubject = new Subject();

  constructor(private httpClient: HttpClient) {
  }

  customerChanged$ = this.customerChangedSubject.asObservable();

  customerChanged() {
    this.customerChangedSubject.next();
  }

  saveCustomer(customer: Customer): Observable<Customer> {
    return this.httpClient.post<Customer>(`http://localhost:8080/api/customers/save`, customer);
  }

  findTCustomerByEmail(email: string): Observable<Customer> {
    return this.httpClient.get<Customer>(`http://localhost:8080/api/customers/details/${email}`);
  }
}

