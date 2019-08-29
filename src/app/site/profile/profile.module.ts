import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ProfileComponent } from './profile.component';
import { FormsModule } from '@angular/forms';
import{RouterModule} from '@angular/router';


@NgModule({
  declarations: [ProfileComponent],
  imports: [
    CommonModule,
    FormsModule,
     RouterModule.forChild([
       
      {path:'profil/:id', component:ProfileComponent}
 
    ])
  ]
})
export class ProfileModule { }
