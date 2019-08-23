import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import {RouterModule,Routes} from '@angular/router';

import {SharedModule} from './site/shared/shared.module';
import { HttpClientModule } from '@angular/common/http';
import { AdherentService } from 'src/services/adherents.service';
import {HomeModule} from './site/home/home.module';
import {CatalogueModule} from './site/catalogue/catalogue.module';
import {ErrorModule} from './site/error/error.module';
import { HomeComponent } from './site/home/home.component';
import { RegisterModule } from './site/register/register.module';

// const appRoutes:Routes=[  
// ]


@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    // RouterModule.forRoot(appRoutes),
    SharedModule,
    HomeModule,
    CatalogueModule,
    ErrorModule,
    HttpClientModule,
    RegisterModule
  ],
  providers: [AdherentService],
  bootstrap: [AppComponent]
})
export class AppModule { }
