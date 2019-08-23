import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import {SharedModule} from './site/shared/shared.module';
import { HttpClientModule } from '@angular/common/http';
import { AdherentService } from 'src/services/adherents.service';
import {HomeModule} from './site/home/home.module';
import {CatalogueModule} from './site/catalogue/catalogue.module';
import {ErrorModule} from './site/error/error.module';
import { HomeComponent } from './site/home/home.component';


// const appRoutes:Routes=[  
// ]


@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    SharedModule,
    HomeModule,
    CatalogueModule,
    ErrorModule,
    HttpClientModule
  ],
  providers: [AdherentService],
  bootstrap: [AppComponent]
})
export class AppModule { }
