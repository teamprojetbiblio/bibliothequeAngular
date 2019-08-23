import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { CatalogueComponent } from './catalogue.component';

import{RouterModule} from '@angular/router';



@NgModule({
  declarations: [CatalogueComponent],
  imports: [
    CommonModule,
    RouterModule.forChild([
      {path:'catalogue',component:CatalogueComponent}
    ])
  ]
})
export class CatalogueModule { }
