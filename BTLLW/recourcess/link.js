const id = document.getElementById("pId");
function redirectToCart(type) 
{
        let directLink = `./themvaogiohang.aspx?id=${id.innerText}&type=${type}`;
        window.open(directLink, '_self');
}
