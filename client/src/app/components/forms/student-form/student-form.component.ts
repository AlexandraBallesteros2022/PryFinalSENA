import { Component, Input, OnInit } from '@angular/core';

@Component({
  selector: 'app-student-form',
  templateUrl: './student-form.component.html',
  styleUrls: ['./student-form.component.css']
})
export class StudentFormComponent implements OnInit {
  @Input() show: boolean = true;
  @Input() title: string = 'nuevo estudiante';

  constructor() {}

  ngOnInit(): void {}

  showHidden() {
    this.show = !this.show;
  }
}
