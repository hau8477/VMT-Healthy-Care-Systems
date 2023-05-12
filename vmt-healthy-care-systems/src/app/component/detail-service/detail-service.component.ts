import {Component, OnInit} from '@angular/core';
import {ActivatedRoute, Router} from '@angular/router';
import {ServicesService} from '../../service/services.service';
import {CategoryService} from '../../service/category.service';
import {TokenStorageService} from '../../service/token-storage.service';
import {CustomerService} from '../../service/customer.service';
import {CartService} from '../../service/cart.service';
import {Customer} from '../../model/customer';
import {Services} from '../../model/services';
import {CartDto} from '../../model/dto/cart-dto';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-detail-service',
  templateUrl: './detail-service.component.html',
  styleUrls: ['./detail-service.component.css']
})
export class DetailServiceComponent implements OnInit {
  idService?: number;
  customer?: Customer;
  role?: string;
  username: string;
  services?: Services;
  quantity = 1;

  constructor(private activatedRoute: ActivatedRoute,
              private servicesService: ServicesService,
              private categoryService: CategoryService,
              private tokenStorageService: TokenStorageService,
              private customerService: CustomerService,
              private cartService: CartService,
              private route: Router) {
    this.activatedRoute.paramMap.subscribe(paramMap => {
      this.idService = +paramMap.get('id');
      this.findById();
    });
    if (this.tokenStorageService.getToken() !== null) {
      this.role = this.tokenStorageService.getUser().roles[0];
      this.username = this.tokenStorageService.getUser().username;
      this.findUser();
    }
  }

  ngOnInit(): void {
    this.view();
  }

  findById() {
    this.servicesService.findById(this.idService).subscribe(services => {
      this.services = services;
    });
  }

  findUser() {
    this.customerService.findTCustomerByEmail(this.username).subscribe(customer => {
      this.customer = customer;
    });
  }

  view(): void {
    window.scrollTo(0, 0);
  }

  increaseQuantity() {
    this.quantity++;
  }

  decreaseQuantity() {
    if (this.quantity > 1) {
      this.quantity--;
    }
  }

  addToCart() {
    console.log(this.quantity);
    console.log(this.services);
    console.log(this.customer);
    const cart: CartDto = {
      id: null,
      flagDelete: false,
      quantity: this.quantity,
      customerId: this.customer.id,
      servicesId: this.services.id
    };

    if (this.quantity <= 0) {
      Swal.fire({
        title: 'Thêm vào giỏ hàng không thành công, số lượng không được nhỏ hơn 0!',
        icon: 'error',
        confirmButtonText: 'OK',
        confirmButtonColor: '#1977cc',
      });
      return;
    } else if (this.quantity > this.services.quantity) {
      Swal.fire({
        title: 'Thêm vào giỏ hàng không thành công, số lượng không được lớn hơn số lượng còn lại của dịch vụ!',
        icon: 'error',
        confirmButtonText: 'OK',
        confirmButtonColor: '#1977cc',
      });
      return;
    }

    console.log(cart);

    this.cartService.save(cart).subscribe(() => {
      Swal.fire({
        title: 'Thêm vào giỏ hàng thành công!',
        icon: 'success',
        confirmButtonText: 'OK',
        confirmButtonColor: '#1977cc',
      });
      this.customerService.customerChanged();
      this.route.navigateByUrl('/cart');
    }, error => {
      console.log(error);
      Swal.fire({
        title: 'Thêm vào giỏ hàng không thành công!',
        icon: 'error',
        confirmButtonText: 'OK',
        confirmButtonColor: '#1977cc',
      });
    });
  }

}
