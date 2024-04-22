export default class PeopleData{
  name : string;
  sex? : string;
  miniName? : boolean

  constructor(name:string,sex:string,miniName:boolean) {
    this.name = name;
    this.sex = sex;
    this.miniName = miniName;
  }
}