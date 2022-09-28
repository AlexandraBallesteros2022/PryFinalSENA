import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';
import { Router } from '@angular/router';
import { AuthService } from 'src/app/services/auth.service';
import { IconsService } from 'src/app/services/icons.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css'],
})
export class LoginComponent implements OnInit {
  loginForm: FormGroup = this.initForm();

  constructor(
    public icons: IconsService,
    private authSvc: AuthService,
    private readonly fb: FormBuilder,
    private router: Router
  ) {}

  ngOnInit(): void {
    this.loginForm = this.initForm();
    sessionStorage.setItem('session', 'false');
  }

  initForm(): FormGroup {
    return this.fb.group({
      nombreUsuario: [''],
      contrasenia: [''],
    });
  }

  submit() {
    console.log(this.loginForm.value);

    this.authSvc.login(this.loginForm.value).subscribe({
      next: (res: any) => {
        sessionStorage.setItem('session', 'true');
        this.router.navigate(['/main']);
      },
    });
  }
}
