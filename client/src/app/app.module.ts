import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';
import { FontAwesomeModule } from '@fortawesome/angular-fontawesome';

//base
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderBarComponent } from './components/header-bar/header-bar.component';
import { LoginComponent } from './components/forms/login/login.component';

//forms
import { RegistroComponent } from './components/forms/registro/registro.component';
import { NewStudentComponent } from './components/forms/new-student/new-student.component';
import { EditStudentComponent } from './components/forms/edit-student/edit-student.component';
import { EditEmpleoyeeComponent } from './components/forms/edit-empleoyee/edit-empleoyee.component';

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
    HeaderBarComponent,
    RegistroComponent,
    NewStudentComponent,
    EditStudentComponent,
    EditEmpleoyeeComponent,
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
  ],
  providers: [],
  bootstrap: [AppComponent],
})
export class AppModule {}
