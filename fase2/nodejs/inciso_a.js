const { MongoClient } = require("mongodb"),
        uri = "mongodb+srv://admin:admin@bbva.ylbtn.mongodb.net/bbva?retryWrites=true&w=majority",
        client = new MongoClient(uri, { useUnifiedTopology: true });

async function inciso_a(year, jornada, fecha) {
    let match = null;

    if (jornada != null) {
        match = {
            $match: {
                $and: [
                    { temporada: { $eq: year } }, 
                    { numeroJornada: { $lte: jornada } }
                ]
            }
        }
    }

    if (fecha != null) {
        let date = fecha.split("/");
        date = (new Date(date[2] + "-" + date[1] + "-" + date[0])).toISOString();
        match = {
            $match : {
                $and: [
                    { temporada: { $eq: year } }, 
                    { fecha: { $lte: date } }
                ] 
            }
        }
    }

    if(jornada == null && fecha == null) {
        match = { $match : { temporada: { $eq: year } } }
    }

    try {
        await client.connect();
        const database = client.db("bbva");
        const collection = database.collection("partido");

        const cursor = collection.aggregate([
            match,
            { 
                $group: { 
                    _id: "$equipo1",
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
                    pj:  { $sum: 1 },
                    pg:  {
                        $sum: {
                            $switch: {
                                branches: [
                                    { case: { $gt: [ "$gf", "$gc" ] }, then: 1 }
                                ],
                                default: 0
                            }
                        }
                    },
                    pe:  {
                        $sum: {
                            $switch: {
                                branches: [
                                    { case: { $eq: [ "$gf", "$gc" ] }, then: 1 }
                                ],
                                default: 0
                            }
                        }
                    },
                    pp:  {
                        $sum: {
                            $switch: {
                                branches: [
                                    { case: { $lt: [ "$gf", "$gc" ] }, then: 1 }
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
            { $sort: { pts: -1, dif: -1, gf: -1 } }
        ]);

        const res = await cursor.toArray();
        console.log(res);

    } catch (error) {
        console.log(error);
    } finally {
        await client.close();
    }
}

inciso_a(2019, null, null);
//inciso_a(2019, 1, null);
//inciso_a(2019, null, '02/12/2019');
//inciso_a(2019, 1, '25/12/2019');