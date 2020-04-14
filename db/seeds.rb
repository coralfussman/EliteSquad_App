Clubhouse.create(name: "Raquet Club", tier: "gold")
Clubhouse.create(name: "Bowling Alley", tier: "bronze")

Member.create(name: "Mike", age:26, tier: "gold")
Member.create(name: "Sally", age:24, tier: "bronze")
Member.create(name: "Coral", age:25, tier: "silver")
Member.create(name: "Jake", age:25, tier: "bronze")

Record.create(members_id: m1, clubhouse_id: c2)
Record.create(members_id: m4, clubhouse_id: c1)
