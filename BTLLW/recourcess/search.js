const productList = [
    {
        id: 1,
        name: "Iphone 14 Pro Max",
        price: 26900000
    },
    {
        id: 2,
        name: "Iphone 15 Pro",
        price: 32900000
    }, {
        id: 3,
        name: "Iphone 15 Pro Max",
        price: 43900000
    },
    {
        id: 4,
        name: "Samsung S23 Ultra",
        price: 21900000
    },
    {
        id: 5,
        name: "Samsung Zflip 5",
        price: 28900000
    },
    {
        id: 6,
        name: "CasperInverter 458 lít RS 460PG",
        price: 9900000
    },
    {
        id: 7,
        name: "Samsung Inverter 208 lít RT20HAR8",
        price: 5900000
    },
    {
        id: 8,
        name: "Samsung Inverter 488 lít RT20HAR8",
        price: 16900000
    },
    {
        id: 9,
        name: "Samsung Inverter 655 lít",
        price: 16990000
    },
    {
        id: 10,
        name: "LG Inverter 519 lít GR - B256JDS",
        price: 12990000
    }
];


function timkiem() {
    var timkiem = document.getElementById("search");
    for (i = 0; i < productList.length; ++i) {
        if (productList[i].name.toLowerCase().includes(timkiem.value)) {
            document.getElementById("search-result").innerHTML += `<a style="text-decoration: none" href="trangconchitiet.aspx?id=${productList[i].id}"><div class="result">${productList[i].name} - ${productList[i].price}</div ></a>`;
        }
    }
}
