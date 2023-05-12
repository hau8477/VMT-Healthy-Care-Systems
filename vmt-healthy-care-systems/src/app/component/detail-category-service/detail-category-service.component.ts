import {Component, OnInit} from '@angular/core';
import {ActivatedRoute, Router} from '@angular/router';
import {ServicesService} from '../../service/services.service';
import {Services} from '../../model/services';
import {CategoryService} from '../../service/category.service';
import {Category} from '../../model/category';
import Swal from 'sweetalert2';
import {TokenStorageService} from '../../service/token-storage.service';
import {CustomerService} from '../../service/customer.service';
import {Customer} from '../../model/customer';
import {CartService} from '../../service/cart.service';
import {Cart} from '../../model/cart';
import {CartDto} from '../../model/dto/cart-dto';

@Component({
  selector: 'app-detail-category-service',
  templateUrl: './detail-category-service.component.html',
  styleUrls: ['./detail-category-service.component.css']
})
export class DetailCategoryServiceComponent implements OnInit {
  idCategory: number;
  services?: Services[];
  name = '';
  page = 0;
  size = 3;
  totalPages?: number;
  category?: Category;
  quantity = 1;
  serviceModal: Services;
  role?: string;
  username?: string;
  customer: Customer;

  constructor(private activatedRoute: ActivatedRoute,
              private servicesService: ServicesService,
              private categoryService: CategoryService,
              private tokenStorageService: TokenStorageService,
              private customerService: CustomerService,
              private cartService: CartService,
              private route: Router) {
    this.activatedRoute.paramMap.subscribe(paramMap => {
      this.idCategory = +paramMap.get('idCategory');
    });
    if (this.tokenStorageService.getToken() !== null) {
      this.role = this.tokenStorageService.getUser().roles[0];
      this.username = this.tokenStorageService.getUser().username;
      this.findUser();
    }
  }

  ngOnInit(): void {
    this.view();
    this.findAllService();
    this.findCategoryById();
    console.log(this.idCategory);
  }

  findUser() {
    this.customerService.findTCustomerByEmail(this.username).subscribe(customer => {
      this.customer = customer;
    });
  }

  findAllService() {
    this.servicesService.findAllByCategoryAndName(this.idCategory, this.name, this.page, this.size).subscribe(data => {
      this.services = data.content;
      this.totalPages = data.totalPages;
    });
  }

  findCategoryById() {
    this.categoryService.findById(this.idCategory).subscribe(category => {
      this.category = category;
    });
  }

  view(): void {
    window.scrollTo(0, 0);
  }

  nextSlide() {
    if (this.page < this.totalPages) {
      this.page++;
    }
    this.findAllService();
    this.view();
  }

  prevSlide() {
    if (this.page > 0) {
      this.page--;
    }
    this.findAllService();
    this.view();
  }

  onSearch() {
    this.page = 0;
    this.services = [];
    this.findAllService();
  }

  addToCart() {
    console.log(this.quantity);
    console.log(this.serviceModal);
    console.log(this.customer);
    const cart: CartDto = {
      id: null,
      flagDelete: false,
      quantity: this.quantity,
      customerId: this.customer.id,
      servicesId: this.serviceModal.id
    };

    if (this.quantity <= 0) {
      Swal.fire({
        title: 'Thêm vào giỏ hàng không thành công, số lượng không được nhỏ hơn 0!',
        icon: 'error',
        confirmButtonText: 'OK',
        confirmButtonColor: '#1977cc',
      });
      return;
    } else if (this.quantity > this.serviceModal.quantity) {
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

  increaseQuantity() {
    this.quantity++;
  }

  decreaseQuantity() {
    if (this.quantity > 1) {
      this.quantity--;
    }
  }

  showModal(service: Services) {
    this.serviceModal = service;
    this.quantity = 1;
    console.log(this.serviceModal);
  }
}
