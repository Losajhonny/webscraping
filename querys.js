db.partido.find({})
   .projection({})
   .sort({_id:-1})
   .limit(100)

use "bbva"

db.partido.aggregate(
    { $match: { temporada: 1980
        /*$and: [
            { temporada: { $eq: 1980 } },
            { numeroJornada: { $lte: 1 } }
        ]*/}
    },
    { $group: { 
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
)
