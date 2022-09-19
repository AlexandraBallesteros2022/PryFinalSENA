import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

//form
import { LoginComponent } from './components/forms/login/login.component';
import { RegistroComponent } from './components/forms/registro/registro.component';
import { StudentFormComponent } from './components/forms/student-form/student-form.component';

//pages
import { StudentComponent } from './pages/student/student.component';
import { StudentsComponent } from './pages/students/students.component';
import { EmpleoyeeComponent } from './pages/empleoyee/empleoyee.component';
import { EmpleoyeesComponent } from './pages/empleoyees/empleoyees.component';

import { MainComponent } from './pages/main/main.component';

const routes: Routes = [
  { path: '', component: LoginComponent },
  { path: 'main', component: MainComponent },
  { path: 'estudiante/:idEstudiante', component: StudentComponent },
  { path: 'estudiantes', component: StudentsComponent },
  { path: 'empleado/:idDocente', component: EmpleoyeeComponent },
  { path: 'empleados', component: EmpleoyeesComponent },
  { path: 'registro', component: RegistroComponent },
  { path: 'nuevo-estudiante', component: StudentFormComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
