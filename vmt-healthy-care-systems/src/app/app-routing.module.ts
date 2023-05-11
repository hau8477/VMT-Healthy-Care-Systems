import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {MainComponent} from './main/main.component';
import {AddCustomerComponent} from './component/add-customer/add-customer.component';
import {DetailCategoryServiceComponent} from './component/detail-category-service/detail-category-service.component';
import {CartComponent} from './component/cart/cart.component';
import {DetailCustomerComponent} from './component/detail-customer/detail-customer.component';

const routes: Routes = [
  {
    path: '', component: MainComponent
  },
  {
    path: 'login', loadChildren: () => import('./login/login.module').then(module => module.LoginModule)
  },
  {
    path: 'info-customer', component: AddCustomerComponent
  },
  {
    path: 'detail-category-services/:idCategory', component: DetailCategoryServiceComponent
  },
  {
    path: 'cart', component: CartComponent
  },
  {
    path: 'detail-customer', component: DetailCustomerComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
