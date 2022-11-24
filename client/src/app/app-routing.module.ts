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

//guards
import { AuthGuard } from './guads/auth.guard';
import { BuscadorComponent } from './components/buscador/buscador.component';

const routes: Routes = [
  { path: '', component: LoginComponent },
  { path: 'main', component: MainComponent, canActivate: [AuthGuard] },
  {
    path: 'estudiante/:idEstudiante',
    component: StudentComponent,
    canActivate: [AuthGuard],
  },
  {
    path: 'estudiantes',
    component: StudentsComponent,
    canActivate: [AuthGuard],
  },
  {
    path: 'empleado/:idDocente',
    component: EmpleoyeeComponent,
    canActivate: [AuthGuard],
  },
  {
    path: 'empleados',
    component: EmpleoyeesComponent,
    canActivate: [AuthGuard],
  },
  { path: 'registro', component: RegistroComponent },
  { path: 'nuevo-estudiante', component: StudentFormComponent },
  { path: 'buscar/:persona', component: BuscadorComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes, { useHash: true })],
  exports: [RouterModule],
})
export class AppRoutingModule {}
