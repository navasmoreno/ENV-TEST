import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title = 'app';
  NOMBRE: string = "";
  constructor(){

  }
  ngOnInit():void
  {
    this.NOMBRE = process.env["NOMBRE"] ?? "";
  }
}
