import {Component, OnInit} from '@angular/core';
import {ActivatedRoute} from '@angular/router';
import {ServicesService} from '../../service/services.service';
import {Services} from '../../model/services';
import {CategoryService} from '../../service/category.service';
import {Category} from '../../model/category';

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
  size = 12;
  totalPages?: number;
  category?: Category;

  constructor(private activatedRoute: ActivatedRoute,
              private servicesService: ServicesService,
              private categoryService: CategoryService) {
    this.activatedRoute.paramMap.subscribe(paramMap => {
      this.idCategory = +paramMap.get('idCategory');
    });
  }

  ngOnInit(): void {
    this.view();
    this.findAllService();
    this.findCategoryById();
    console.log(this.idCategory);
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

}
