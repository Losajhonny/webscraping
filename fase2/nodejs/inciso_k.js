//Consulta que muestre, al quipo con más victorias, más derrotas y más empates
const { MongoClient } = require("mongodb"),
   uri = "mongodb+srv://admin:admin@bbva.ylbtn.mongodb.net/bbva?retryWrites=true&w=majority",
   client = new MongoClient(uri, { useUnifiedTopology: true });

async function inciso_j() {
   try {
      await client.connect();
      const database = client.db("bbva");
      const collection = database.collection("partido");


      //obteniendo temporadas ascendente
      const cursor = collection.aggregate([
         {
            $group: {
               _id: {equipo: "$equipo1" },
               pg: {
                  $sum: {
                     $switch: {
                        branches: [
                           { case: { $gt: ["$gf", "$gc"] }, then: 1 }
                        ],
                        default: 0
                     }
                  }
               }
            }
         },
         { $sort: { pg: -1 } }, //orden ascendente
         { $limit : 1 },
      ]);

      const pg = await cursor.toArray();

      const cursor2 = collection.aggregate([
         {
            $group: {
               _id: {equipo: "$equipo1" },
               pe: {
                  $sum: {
                     $switch: {
                        branches: [
                           { case: { $eq: ["$gf", "$gc"] }, then: 1 }
                        ],
                        default: 0
                     }
                  }
               }
            }
         },
         { $sort: { pe: -1 } }, //orden ascendente
         { $limit : 1 },
      ]);

      const pe = await cursor2.toArray();


      const cursor3 = collection.aggregate([
         {
            $group: {
               _id: {equipo: "$equipo1" },
               pp: {
                  $sum: {
                     $switch: {
                        branches: [
                           { case: { $lt: ["$gf", "$gc"] }, then: 1 }
                        ],
                        default: 0
                     }
                  }
               }
            }
         },
         { $sort: { pp: -1 } }, //orden ascendente
         { $limit : 1 },
      ]);

      const pp = await cursor3.toArray();

      console.log('*****************************************');
      console.log(`Partidos Ganadados:`);
      console.log(pg);
      console.log(`Partidos Empatados:`);
      console.log(pe);
      console.log(`Partidos Perdidos:`);
      console.log(pp);
      console.log('*****************************************');

   } catch (error) {
      console.log(error);
   } finally {
      await client.close();
   }
}

inciso_j();