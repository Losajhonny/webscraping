const { MongoClient } = require("mongodb"),
        uri = "mongodb+srv://admin:admin@bbva.ylbtn.mongodb.net/bbva?retryWrites=true&w=majority",
        client = new MongoClient(uri, { useUnifiedTopology: true });

async function inciso_d(temporada) {
    try {
        await client.connect();
        const database = client.db("bbva");
        const collection = database.collection("partido");

        const cursor = collection.aggregate([
            { $match: { $or: [ { temporada: { $eq: temporada } }, { temporada: { $eq: (temporada-1) } } ]  } },
            { $group:
                { 
                    _id: { temporada: "$temporada", equipo: "$equipo1"},
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
                    dif: { $sum: { $subtract: [ "$gf", "$gc" ] } }
                }
            },
            { $sort: { "_id.temporada": -1, pts: -1, dif: -1, gf: -1 } }
        ])
        .group({
              _id: "$_id.equipo",
              temporada: { $sum: "$_id.temporada" }
        })
        .match({ temporada: { $eq: (temporada-1) }});

        const res = await cursor.toArray();
        console.log(res);

    } catch (error) {
        console.log(error);
    } finally {
        await client.close();
    }
}

inciso_d(2019);
