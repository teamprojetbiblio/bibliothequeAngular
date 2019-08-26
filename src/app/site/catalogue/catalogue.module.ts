import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { CatalogueComponent } from './catalogue.component';
import{RouterModule} from '@angular/router';
import { FormsModule } from '@angular/forms';



@NgModule({
  declarations: [CatalogueComponent],
  imports: [
    CommonModule,
    FormsModule,
    RouterModule.forChild([
      {path:'catalogue',component:CatalogueComponent}
    ])
  ]
})
export class CatalogueModule { }
