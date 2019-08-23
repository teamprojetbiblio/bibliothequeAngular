import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import {RouterModule} from '@angular/router';
import { NavmenuComponent } from './navmenu/navmenu.component';
import { FooterComponent } from './footer/footer.component';
import { ConnectComponent } from '../connect/connect.component';
import { RegisterComponent } from '../register/register.component';
import { FormsModule } from '@angular/forms';
import { AdherentService } from 'src/services/adherents.service';



@NgModule({
  declarations: [NavmenuComponent, FooterComponent,ConnectComponent],
  imports: [
    CommonModule,
    RouterModule,
    FormsModule
  ],
    providers: [AdherentService],
  exports:[NavmenuComponent, FooterComponent]
})
export class SharedModule { }
