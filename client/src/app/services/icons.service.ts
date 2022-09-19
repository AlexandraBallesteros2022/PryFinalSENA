import { Injectable } from '@angular/core';
import {
  faChalkboardUser,
  faUserLock,
  faUserGraduate,
  faUserTie,
  faHouse,
  faArrowRightFromBracket,
  faIdCard,
  faQrcode,
  faEnvelopesBulk,
  faPenToSquare,
  faFloppyDisk,
  faTrashCan,
  faBan,
} from '@fortawesome/free-solid-svg-icons';

@Injectable({
  providedIn: 'root',
})
export class IconsService {
  //iconos del login
  iconsLogin = {
    usuario: faChalkboardUser,
    password: faUserLock,
  };

  //iconos del formulario de registro
  iconsRegister = {
    id: faIdCard,
    qr: faQrcode,
    correo: faEnvelopesBulk,
    usuario: faChalkboardUser,
    password: faUserLock,
  };

  //iconos para el menu del header
  iconsMenu = {
    home: faHouse,
    estudiante: faUserGraduate,
    empleado: faUserTie,
    salir: faArrowRightFromBracket,
  };

  //iconos del main
  iconsMain = {
    estudiante: faUserGraduate,
    empleado: faUserTie,
  };

  //iconos para los botones
  iconsButtons = {
    editar: faPenToSquare,
    guardar: faFloppyDisk,
    borrar: faTrashCan,
    cancelar: faBan,
  };
}
