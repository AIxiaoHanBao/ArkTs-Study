
export default class ItemData{
  title : string;
  img? : string;
  others? : boolean

  constructor(tital:string,img:string,others:boolean) {
    this.title = tital;
    this.img = img;
    this.others = others;
  }
}