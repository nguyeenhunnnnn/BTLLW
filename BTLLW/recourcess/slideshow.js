var arr_hinh=[
    "./anh/banner.png",
    "./anh/banner1.png",
    "./anh/banner2.png",
    "./anh/banner3.png"
]
var arr_hinh2=[
    "./anh/banner4.png",
    "./anh/banner5.png",
    "./anh/banner6.png",
    "./anh/banner7.png"
]
var arr_hinh3=[
    "./anh/ctsp1.jpg",
    "./anh/ctsp2.jpg",
    "./anh/ctsp3.jpg",
    "./anh/ctsp4.jpg",
    "./anh/ctsp5.jpg",
    "./anh/ctsp6.jpg",
    "./anh/ctsp7.jpg",
    "./anh/ctsp8.jpg"
]
var index=0;
function pre()
{
    index--;
    if(index<-0)index=arr_hinh.length-1;
    document.getElementById("bannerimg").src=arr_hinh[index];
}
function next()
{
    index++;
    if(index==arr_hinh.length)index=0;
    document.getElementById("bannerimg").src=arr_hinh[index];
}
setInterval("next()",5000);
// =------------------------------------
function preDSSP()
{
    index--;
    if(index<-0)index=arr_hinh2.length-1;
    document.getElementById("bannerDSSP").src=arr_hinh2[index];
}
function nextDSSP()
{
    index++;
    if(index==arr_hinh2.length)index=0;
    document.getElementById("bannerDSSP").src=arr_hinh2[index];
}
setInterval("nextDSSP()",5000);
// ==============================
var indexsp=0
function preCTSP()
{
    indexsp--;
    if(indexsp<-0)indexsp=arr_hinh3.length-1;
    document.getElementById("imgCTSP").src=arr_hinh3[indexsp];
}
function nextCTSP()
{
    indexsp++;
    if(indexsp==arr_hinh3.length)indexsp=0;
    document.getElementById("imgCTSP").src=arr_hinh3[indexsp];
}
setInterval("nextCTSP()",5000);

