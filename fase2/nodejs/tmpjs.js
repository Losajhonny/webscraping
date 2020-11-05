//Realizar un stored procedure que la temporada (id o año) y que devuelva el historial
//de los equipos que han ocupado el primer puesto de la liga de inicio a fin de
//temporada, con fechas y puntos.

const { MongoClient } = require("mongodb"),
        uri = "mongodb+srv://admin:admin@bbva.ylbtn.mongodb.net/bbva?retryWrites=true&w=majority",
        client = new MongoClient(uri, { useUnifiedTopology: true });

        async function inciso_g(year_temporada) {
         try {
             await client.connect();
             const database = client.db("bbva");
             const collection = database.collection("partido");
     
             const cursor = collection.aggregate([
               { $match: {temporada: { $eq: year_temporada }, numeroJornada: {$lte:37}}}, //coincido  las temporadas 
               {
                  $group:{
                     _id: {equipo:"$equipo1"},
                     pts: {
                        $sum: {
                            $switch: {
                                branches: [
                                    { case: { $gt: [ "$gf", "$gc" ] }, then: {
                                            $switch: {
                                                branches: [
                                                    { case: { $lte: ["$temporada", 1994] }, then: 2 }
                                                ],
                                                default: 3
                                            }
                                        }
                                    },
                                    { case: { $eq: [ "$gf", "$gc" ] }, then: 1 }
                                ],
                                default: 0
                            }
                        }
                    }
                  }
               }
             ])
             ;
             
             const array = await cursor.toArray(); //convierto a arrar el cursor 
             const res = [];

             console.log(array);
     
         } catch (error) {
             console.log(error);
         } finally {
             await client.close();
         }
     }
     
     inciso_g(2019);