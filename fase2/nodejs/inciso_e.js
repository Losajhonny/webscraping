const { MongoClient } = require("mongodb"),
        uri = "mongodb+srv://admin:admin@bbva.ylbtn.mongodb.net/bbva?retryWrites=true&w=majority",
        client = new MongoClient(uri, { useUnifiedTopology: true });

async function inciso_e(equipo) {
    try {
        await client.connect();
        const database = client.db("bbva");
        const collection = database.collection("partido");

        const cursor = collection.aggregate([
            { $group: { 
                    _id: { equipo1: "$equipo1", equipo2: "$equipo2" },
                    pg:  {
                        $sum: {
                            $switch: {
                                branches: [
                                    { case: { $gt: [ "$gf", "$gc" ] }, then: 1 }
                                ],
                                default: 0
                            }
                        }
                    }
                }
            },
            { $sort: { pg: -1 } }
        ]);
        
        const res = await cursor.toArray();
        
        if(equipo != null && equipo != undefined) {
            const r = res.filter(x => {
                return x._id.equipo1 === equipo;
            });
            console.log(r);
        }
        else {
            console.log(res);
        }

    } catch (error) {
        console.log(error);
    } finally {
        await client.close();
    }
}

//inciso_e("Real Madrid");
inciso_e();
