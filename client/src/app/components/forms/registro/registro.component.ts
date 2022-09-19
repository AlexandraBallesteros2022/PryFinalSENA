import { Component, Input, OnInit } from '@angular/core';

@Component({
  selector: 'app-registro',
  templateUrl: './registro.component.html',
  styleUrls: ['./registro.component.css']
})
export class RegistroComponent implements OnInit {
  @Input() show: boolean = true;
  @Input() title: string = 'registrarse';

  constructor() {}

  ngOnInit(): void {}

  showHidden() {
    this.show = !this.show;
  }

}
