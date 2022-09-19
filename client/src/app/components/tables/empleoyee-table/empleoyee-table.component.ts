import { Component, Input, OnInit } from '@angular/core';

@Component({
  selector: 'app-empleoyee-table',
  templateUrl: './empleoyee-table.component.html',
  styleUrls: ['./empleoyee-table.component.css'],
})
export class EmpleoyeeTableComponent implements OnInit {
  @Input() title!: string;

  constructor() {}

  ngOnInit(): void {}
}
