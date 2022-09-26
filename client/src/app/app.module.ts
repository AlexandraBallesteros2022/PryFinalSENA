import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';
import { ReactiveFormsModule } from '@angular/forms';
import { FontAwesomeModule } from '@fortawesome/angular-fontawesome';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatTableModule } from '@angular/material/table';
import { MatPaginatorModule } from '@angular/material/paginator';

//base
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderBarComponent } from './components/header-bar/header-bar.component';
import { LoginComponent } from './components/forms/login/login.component';

//forms
import { RegistroComponent } from './components/forms/registro/registro.component';
import { StudentFormComponent } from './components/forms/student-form/student-form.component';

//tables
import { StudentTableComponent } from './components/tables/student-table/student-table.component';
import { EmpleoyeeTableComponent } from './components/tables/empleoyee-table/empleoyee-table.component';
import { StudentsTableComponent } from './components/tables/students-table/students-table.component';

//pages
import { StudentComponent } from './pages/student/student.component';
import { StudentsComponent } from './pages/students/students.component';
import { EmpleoyeeComponent } from './pages/empleoyee/empleoyee.component';
import { EmpleoyeesComponent } from './pages/empleoyees/empleoyees.component';
import { MainComponent } from './pages/main/main.component';

@NgModule({
  declarations: [
    AppComponent,
    RegistroComponent,
    HeaderBarComponent,
    StudentFormComponent,
    StudentTableComponent,
    EmpleoyeeTableComponent,
    StudentsTableComponent,
    EmpleoyeesComponent,
    EmpleoyeeComponent,
    StudentsComponent,
    StudentComponent,
    LoginComponent,
    MainComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FontAwesomeModule,
    ReactiveFormsModule,
    BrowserAnimationsModule,
    MatTableModule,
    MatPaginatorModule,
  ],
  exports: [MatTableModule, MatPaginatorModule],
  providers: [],
  bootstrap: [AppComponent],
})
export class AppModule {}
