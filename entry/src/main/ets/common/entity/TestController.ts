import ItemData from './ItemData';
export class Test{
  static  getData() : Array<ItemData>{
    let data : ItemData[] = [
      new ItemData('123','http://118.24.87.123:9000/imgadmin/03cb4119755f4f439d3113f2409246e8.png',null),
      new ItemData('1234','http://118.24.87.123:9000/imgadmin/03cb4119755f4f439d3113f2409246e8.png',null),
      new ItemData('123123','http://118.24.87.123:9000/imgadmin/03cb4119755f4f439d3113f2409246e8.png',null),
      new ItemData('23','http://118.24.87.123:9000/imgadmin/03cb4119755f4f439d3113f2409246e8.png',null),
      new ItemData('345','http://118.24.87.123:9000/imgadmin/03cb4119755f4f439d3113f2409246e8.png',null),
      new ItemData('er','http://118.24.87.123:9000/imgadmin/03cb4119755f4f439d3113f2409246e8.png',null),
      new ItemData('234','http://118.24.87.123:9000/imgadmin/03cb4119755f4f439d3113f2409246e8.png',null),
      new ItemData('12345','http://118.24.87.123:9000/imgadmin/03cb4119755f4f439d3113f2409246e8.png',true),
      new ItemData('1234335','http://118.24.87.123:9000/imgadmin/03cb4119755f4f439d3113f2409246e8.png',true),
      new ItemData('1232245','http://118.24.87.123:9000/imgadmin/03cb4119755f4f439d3113f2409246e8.png',true)
    ]
    return data;
  }

}
export default  Test;


