import {BrowserModule} from '@angular/platform-browser';
import {NgModule} from '@angular/core';

import {AppRoutingModule} from './app-routing.module';
import {AppComponent} from './app.component';
import {FooterComponent} from './footer/footer.component';
import {MainComponent} from './main/main.component';
import {HeaderComponent} from './header/header.component';
import {HTTP_INTERCEPTORS, HttpClientModule} from '@angular/common/http';
import {AuthInterceptor} from './model/auth.interceptor';
import {FormsModule, ReactiveFormsModule} from '@angular/forms';
import { AddCustomerComponent } from './component/add-customer/add-customer.component';
import { DetailCategoryServiceComponent } from './component/detail-category-service/detail-category-service.component';
import { VndCurrencyPipe } from './model/pipe/vnd-currency.pipe';
import { CartComponent } from './component/cart/cart.component';
import { DetailCustomerComponent } from './component/detail-customer/detail-customer.component';
import { ServicePurchasedComponent } from './component/service-purchased/service-purchased.component';
import { DetailServiceComponent } from './component/detail-service/detail-service.component';


@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    MainComponent,
    FooterComponent,
    AddCustomerComponent,
    DetailCategoryServiceComponent,
    VndCurrencyPipe,
    CartComponent,
    DetailCustomerComponent,
    ServicePurchasedComponent,
    DetailServiceComponent,
  ],
    imports: [
        BrowserModule,
        AppRoutingModule,
        HttpClientModule,
        FormsModule,
        ReactiveFormsModule
    ],
  providers: [
    {
      provide: HTTP_INTERCEPTORS,
      useClass: AuthInterceptor,
      multi: true
    }
  ],
  bootstrap: [AppComponent]
})
export class AppModule {
}
