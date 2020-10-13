Favorite.destroy_all
Tree.destroy_all
User.destroy_all

trees = [
    {common_name: "American sycamore", binomial_name: "platanus occidentalis", image: "https://s3.amazonaws.com/cdn0.gurneys.com/images/500/04487.jpg"},
    {common_name: "Red oak", binomial_name: "quercus rubra", image: "https://shop2.arborday.org/data/default/images/catalog/600/Turnkey/1/4-877.jpg"},
    {common_name: "Loblolly pine", binomial_name: "pinus taeda", image: "https://s3.amazonaws.com/mygardenlife.com/plant-library/full/5535_18.jpg"},
    {common_name: "Red maple", binomial_name: "acer rubrum", image: "https://cdn10.bigcommerce.com/s-z923x0f/products/1945/images/2380/file_395_11__26229.1455553048.800.1280.jpg?c=2"},
    {common_name: "Chinese elm", binomial_name: "ulmus parvifolia", image: "https://shop2.arborday.org/data/default/images/catalog/600/Turnkey/1/2-838.jpg"},
    {common_name: "River birch", binomial_name: "betula nigra", image: "https://www.horsfordnursery.com/wp-content/uploads/2017/02/Betula-nigra-Heritage-clump.jpg"},
    {common_name: "Tuliptree", binomial_name: "liriodendron tulipfera", image: "https://www.alsipnursery.com/wp-content/uploads/2019/04/1805197a.jpg"},
    {common_name: "Southern wax myrtle", binomial_name: "myrica cerifera", image: "https://treasurecoastnatives.files.wordpress.com/2012/02/myr-close2.jpg?w=300&h=300"},
    {common_name: "Pawpaw", binomial_name: "asimina triloba", image: "https://images.squarespace-cdn.com/content/v1/59d3dc2549fc2ba55d7e838b/1511762811640-UPAZPEUU5W6COG07XYH6/ke17ZwdGBToddI8pDm48kITWbvzGC-kVAmZO_v4guVJ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UaEWkoFrW0fwY1Eft-yl-Z_D9EWwON2IAPePrrRBOw9QnPzR0nrfinS3CiGrQlulfw/beautiful+cluster+of+pawpaws.jpg"},
    {common_name: "Water oak", binomial_name: "quercus nigra", image: "https://705254.smushcdn.com/1559413/wp-content/uploads/2019/11/Water-Oak-1.jpg?size=429x429&lossy=1&strip=1&webp=1"}
]

users = [
    {name: "Shannon Nabors", office: "President", image_url: "https://ca.slack-edge.com/T02FZRG24-ULFE2EN01-648b4306b95a-512"},
    {name: "Adam Johnson", office: "Treasurer", image_url: "https://ca.slack-edge.com/T02FZRG24-U01BC94BZDH-e677a9d9a0b7-512"},
    {name: "Paul Nicholsen", office: "Member", image_url: "https://ca.slack-edge.com/T02MD9XTF-U9ZRW52TY-5f1673160915-512"},
    {name: "Matteo Ricci", office: "Member", image_url: "https://ca.slack-edge.com/T02MD9XTF-USAM1A3MH-3708872f5317-512"}
]

users.each do |user|
    User.create(user)
end

trees.each do |tree|
    Tree.create(tree)
end