const { MongoClient } = require("mongodb"),
        uri = "mongodb+srv://admin:admin@bbva.ylbtn.mongodb.net/bbva?retryWrites=true&w=majority",
        client = new MongoClient(uri, { useUnifiedTopology: true });

        async function inciso_g() {
         try {
             await client.connect();
             const database = client.db("bbva");
             const collection = database.collection("partido");
     
             const cursor = collection.aggregate([
                 {
                     $group: {
                        _id:{equipo1: "$equipo1",equipo2: "$equipo2",gf: "$gf",gc: "$gc",juego:"$juegoDe"},
                         dif:  { $max: { $abs: { $subtract : [ "$gf", "$gc" ] }}},
                     }
                 },
                 { $sort: {dif:-1, "_id.gf": -1  } }
             ]);
             
             let mayorDif = 0;
             const array = await cursor.toArray(); //convierto a arrar el cursor 
             const res = [];
            //sacando la mayor diferencia de goles
             mayorDif = array[0].dif;
             
             //ahora se filstran los datos 
             array.map( x => {
                if(mayorDif === x.dif && x._id.juego === "local"){
                    res.push({
                        local: x._id.equipo1,
                        visita: x._id.equipo2,
                        goles_local: x._id.gf,
                        goles_visita: x._id.gc
                    });
                }
             });
             //console.log(array);
             console.log(res);
     
         } catch (error) {
             console.log(error);
         } finally {
             await client.close();
         }
     }
     
     inciso_g();