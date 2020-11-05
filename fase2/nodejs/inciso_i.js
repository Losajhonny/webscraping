//--Realizar un stored procedure que la temporada (id o año) y que devuelva el historial
//--de los equipos que han ocupado el último puesto de la liga de inicio a fin de
//--temporada, con fechas y puntos.
const { MongoClient } = require("mongodb"),
    uri = "mongodb+srv://admin:admin@bbva.ylbtn.mongodb.net/bbva?retryWrites=true&w=majority",
    client = new MongoClient(uri, { useUnifiedTopology: true });

async function inciso_i(year_temporada) {
    try {
        await client.connect();
        const database = client.db("bbva");
        const collection = database.collection("partido");


        const cursor = collection.aggregate([
            { $match: { temporada: { $eq: year_temporada } } }, //coincido  las temporadas 
            {
                $group: {
                    _id: { jornada: "$numeroJornada"},
                }   
            },
            { $sort: { "_id.jornada": 1 } } //orden ascendente
        ]);

        const array = await cursor.toArray(); 
        //console.log(array);
        // client.close();
        let cursor2  = null;
        var resultados = [];
        array.map( x =>{
             cursor2 = collection.aggregate([
                { $match: { temporada: { $eq: year_temporada }, numeroJornada:{$lte:x._id.jornada} } }, //coincido  las temporadas 
                { $group:
                    { 
                        _id: {  equipo: "$equipo1"},
                        jornada: {$last:"$numeroJornada"},
                        fecha: {$last: "$fecha"},
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
                { $limit : 1 }
            ]);
            resultados.push(cursor2);
            //const array2 = await cursor2.toArray(); 
            //console.log(array2);
        });
        for(let i=0; i < resultados.length; i++){
            var arr = await resultados[i].toArray();
            console.log(`--------------------------- Jornada:${arr[0].jornada}  -----------------------------------`);
            console.log(arr);
        }
        

    } catch (error) {
        console.log(error);
    } finally {
        await client.close();
    }
}

inciso_i(2018);