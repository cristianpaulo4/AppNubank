import 'package:flutter/material.dart';
import 'package:nubank/tela.dart';

main(List<String> args) {
  runApp(MaterialApp(
    home: Home(),
    routes:{
      'pagina': (context)=>Tela()
    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

var cor = Color(0xFF700284);


class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
        backgroundColor: cor,
        
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      "https://nubank.com.br/images/nu-icon.png",
                      width: 70,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Cristian Paulo ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Icon(
                  Icons.expand_more,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                    width: MediaQuery.of(context).size.width / 1,
                    height: 400,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            width: 500,
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      Icons.redeem,
                                      size: 40,
                                      color: Colors.black38,
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(
                                    height: 60,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "28.496",
                                        style: TextStyle(
                                            color: cor,
                                            fontSize: 40,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "pts",
                                        style: TextStyle(
                                            color: cor, fontSize: 40),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            "Você acumulou",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            '2.248 pontos',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: cor,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text("Nos últimos 30 dias")
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                            height: 100,
                            width: double.infinity,
                            color: Colors.black12,
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.work,
                                    size: 40,
                                    color: Colors.black26,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    child: Text(
                                      "Para pagar compras de R\$ 260,80 em Brasil Airlines com 26.835pts",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  Icon(
                                    Icons.chevron_right,
                                    size: 40,
                                    color: Colors.black26,
                                  ),
                                ],
                              ),
                            ))
                      ],
                    )),
                SizedBox(
                  height: 15,
                ),
                Container(
                    child: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                  size: 40,
                )),
                SizedBox(
                  height: 15,
                ),

                
                   Wrap(                      
                      children: <Widget>[                       
                        op(context, 'Indicar Amigos', Icons.supervised_user_circle),
                        op(context, 'Depositar', Icons.monetization_on),
                        op(context, 'Trasnferencia', Icons.exit_to_app),
                        op(context, 'Pagar', Icons.money_off),
                        op(context, 'Enviar', Icons.expand_less),
                        op(context, 'Atendimento', Icons.phone),

                      ],
                    ),

                  

                
              ],
            ),
          ),
        ));
  }
}






Widget op(BuildContext context, String text, var icone) {
  return Padding(
    padding: EdgeInsets.all(3),
    child: ClipRRect(
    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)), 
    child: Container(
      width: 120,
      height: 150,    
      child: RaisedButton(
        color: Colors.white54,        
        onPressed: (){
          
          Navigator.pushNamed(context, 'pagina');

        },      
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 Icon(icone, size: 50,color: Colors.white70,),         
                 ],
              ),


              Container(               
              child: Text("$text", style: TextStyle(color: Colors.white70, fontSize: 14),),               
              ),
              



            ],
          ),
      
      ),
      
    )

  
  ),
  );
}