const { MongoClient } = require("mongodb"),
        uri = "mongodb+srv://admin:admin@bbva.ylbtn.mongodb.net/bbva?retryWrites=true&w=majority",
        client = new MongoClient(uri, { useUnifiedTopology: true });

async function inciso_b() {
    try {
        await client.connect();
        const database = client.db("bbva");
        const collection = database.collection("partido");

        const cursor = collection.aggregate([
            { $group: { 
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
            { $sort: { "_id.temporada": -1, pts: -1, dif: -1, gf: -1 } }
        ]);
        
        let cont = 0;
        let numAct = 2019;
        let numAnt = 2019;

        const array = await cursor.toArray();
        const res = [];
        let temp = [];

        array.map(x => {
            numAnt = numAct;
            numAct = x._id.temporada;

            if(numAct == numAnt)
                cont++;
            else
                cont = 1;

            if(cont < 4) {
                temp.push({ year: numAct, pos: cont, equipo: x._id.equipo, pts: x.pts });
            }
            else if (cont == 4) {
                temp.push({ year: numAct, pos: cont, equipo: x._id.equipo, pts: x.pts });
                res.push(temp);
                temp = [];
            }
        });

        console.log(res);
    } catch (error) {
        console.log(error);
    } finally {
        await client.close();
    }
}

inciso_b();
