//Vista que muestre, cuántos goles se anotaron en cada temporada, que equipo anoto
//más, que equipo anoto menos.

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
                    _id: { temporada: "$temporada"},
                }   
            },
            { $sort: { "_id.temporada": 1 } } //orden ascendente
        ]);

        const array = await cursor.toArray(); 



        var resultados1 = [];
        var resultados2 = [];
        array.map( x =>{
             cursor2 = collection.aggregate([
                { $match: { temporada: { $eq: x._id.temporada } } }, //coincido  las temporadas 
                { $group:
                    { 
                        _id: {  equipo: "$equipo1"},
                        temporada: {$first:"$temporada"},
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
                        },
                        gf:  { $sum: "$gf" },
                        gc:  { $sum: "$gc" },
                        dif: { $sum: { $subtract: [ "$gf", "$gc" ] } },
                        ta:  { $sum: "$ta" },
                        tr:  { $sum: "$tr" }
                    }
                },
                { $sort: { pts: -1, dif: -1, gf: -1, ta: 1, tr: 1 } },
                { $limit : 1 },
                { $project :{temporada:1,gf:1}}
            ]);
            resultados1.push(cursor2);
        });
        //RESULTADOS 2
        array.map( x =>{
         cursor3 = collection.aggregate([
            { $match: { temporada: { $eq: x._id.temporada } } }, //coincido  las temporadas 
            { $group:
                { 
                    _id: {  equipo: "$equipo1"},
                    temporada: {$first:"$temporada"},
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
                    },
                    gf:  { $sum: "$gf" },
                    gc:  { $sum: "$gc" },
                    dif: { $sum: { $subtract: [ "$gf", "$gc" ] } },
                    ta:  { $sum: "$ta" },
                    tr:  { $sum: "$tr" }
                }
            },
            { $sort: { pts: 1, dif: 1, gf: 1, ta: -1, tr: -1 } },
            { $limit : 1 },
            { $project :{temporada:1,gf:1}}
        ]);
        resultados2.push(cursor3);
    });
        for(let i=0; i < resultados1.length; i++){
            var arr = await resultados1[i].toArray();
            var arr2 = await resultados2[i].toArray();
            console.log(`--------------------------- Temporada:${arr[0].temporada}  -----------------------------------`);
            console.log(arr);
            console.log(arr2);
        }
        

    } catch (error) {
        console.log(error);
    } finally {
        await client.close();
    }
}

inciso_j();