const { MongoClient } = require("mongodb"),
        uri = "mongodb+srv://admin:admin@bbva.ylbtn.mongodb.net/bbva?retryWrites=true&w=majority",
        client = new MongoClient(uri, { useUnifiedTopology: true });

async function inciso_c() {
    try {
        await client.connect();
        const database = client.db("bbva");
        const collection = database.collection("partido");

        const cursor = collection.aggregate([
            {
                $group: { 
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
        
        let res = [];

        //filtro pos 1
        array.map(x => {
            if(x._id.temporada <= 2019 && x._id.temporada >= 1999) {
                numAnt = numAct;
                numAct = x._id.temporada;

                if(numAct == numAnt)
                    cont++;
                else
                    cont = 1;

                if(cont == 1) {
                    res.push({ year: numAct, pos: cont, equipo: x._id.equipo, pts: x.pts });
                }
            }
        });

        // filtro sum
        let aux = [];
        let temp = [];
        cont = 0;
        res.map(x => {
            if (!aux.includes(x.equipo)) {
                res.map(y => {
                    if (x.equipo === y.equipo) {
                        cont++;
                    }
                });
                aux.push(x.equipo);
                temp.push({ equipo: x.equipo, no: cont });
                cont = 0;
            }
        });

        // sort
        res = temp.sort((a, b) => {
            if(a.no > b.no) {
                return -1;
            }
            else if(a.no < b.no) {
                return 1;
            }
            return 0;
        });

        console.log(res);
        
    } catch (error) {
        console.log(error);
    } finally {
        await client.close();
    }
}

inciso_c();
