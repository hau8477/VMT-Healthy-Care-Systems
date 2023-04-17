import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { SharedRoutingModule } from './shared-routing.module';
import { HeaderComponent } from './header/header.component';
import { ContentComponent } from './content/content.component';
import { FooterComponent } from './footer/footer.component';
import { HomeComponent } from './home/home.component';
import { TestComponent } from './test/test.component';


@NgModule({
    declarations: [HeaderComponent, ContentComponent, FooterComponent, HomeComponent, TestComponent],
  exports: [
    HeaderComponent,
    FooterComponent
  ],
    imports: [
        CommonModule,
        SharedRoutingModule
    ]
})
export class SharedModule { }
