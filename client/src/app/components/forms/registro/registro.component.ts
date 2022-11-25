import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { Localizacion } from 'src/app/models/localizacion';
import { AuthService } from 'src/app/services/auth.service';
import { EmpleoyeeService } from 'src/app/services/empleoyee.service';
import { IconsService } from 'src/app/services/icons.service';

@Component({
  selector: 'app-registro',
  templateUrl: './registro.component.html',
  styleUrls: ['./registro.component.css'],
})
export class RegistroComponent implements OnInit {
  @Input() show: boolean = true;
  @Input() title: string = 'registrarse';
  @Output() flag = new EventEmitter<boolean>();

  signupForm: FormGroup = this.initForm();
  localizacion: Localizacion[] = [];

  constructor(
    public icons: IconsService,
    private authSvc: AuthService,
    private readonly fb: FormBuilder,
    private router: Router,
    private empSvc: EmpleoyeeService
  ) {}

  ngOnInit(): void {
    this.signupForm = this.initForm();
    this.getLoc();
  }

  showHidden() {
    this.show = !this.show;
    if (this.title === 'registrarse' || this.title === 'nuevo empleado') {
      this.signupForm.reset();
    }
  }

  initForm(): FormGroup {
    return this.fb.group({
      idDocente: [0],
      nombreCompleto: [''],
      correoE: [''],
      codigoDocente: ['', Validators.required],
      nombreUsuario: [''],
      contrasenia: [''],
    });
  }

  data(empleado: any) {
    this.signupForm.patchValue(empleado);
    this.showHidden();
  }

  submit() {
    if (this.title === 'registrarse') {
      this.authSvc.signUp(this.signupForm.value).subscribe({
        next: (res: any) => {
          alert(res);
          this.router.navigate(['']);
        },
      });
    } else if (this.title === 'editar empleado') {
      this.empSvc.updateOneEmpleado(this.signupForm.value).subscribe({
        next: (res) => {
          alert(res);
          this.flag.emit(true);
          this.showHidden();
        },
      });
    } else if (this.title === 'nuevo empleado') {
      this.empSvc.createOneEmpleado(this.signupForm.value).subscribe({
        next: (res) => {
          alert(res);
          this.flag.emit(true);
          this.showHidden();
        },
      });
    }
  }

  valid(): boolean {
    return this.title === 'registrarse';
  }

  validPass(): boolean {
    return this.title === 'registrarse' || this.title === 'nuevo empleado';
  }

  getLoc() {
    this.empSvc.getLocalizacion().subscribe({
      next: (res: any) => {
        this.localizacion = res;
      },
      error(err) {
        alert('a habido un error');
      },
    });
  }
}
