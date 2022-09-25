import { Component, Input, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { AuthService } from 'src/app/services/auth.service';
import { IconsService } from 'src/app/services/icons.service';

@Component({
  selector: 'app-registro',
  templateUrl: './registro.component.html',
  styleUrls: ['./registro.component.css'],
})
export class RegistroComponent implements OnInit {
  @Input() show: boolean = true;
  @Input() title: string = 'registrarse';

  signupForm: FormGroup = this.initForm();

  constructor(
    public icons: IconsService,
    private authSvc: AuthService,
    private readonly fb: FormBuilder,
    private router: Router
  ) {}

  ngOnInit(): void {
    this.signupForm = this.initForm();
  }

  showHidden() {
    this.show = !this.show;
  }

  initForm(): FormGroup {
    return this.fb.group({
      nombreCompleto: [''],
      correoE: [''],
      codigoDocente: ['', Validators.required],
      nombreUsuario: [''],
      contrasenia: [''],
    });
  }

  submit() {
    this.authSvc.signUp(this.signupForm.value).subscribe({
      next: (res: any) => {
        alert(res);
        this.router.navigate(['']);
      },
    });
  }
}
