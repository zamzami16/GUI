library(tcltk2)
win1<-tktoplevel()
tktitle(win1)<-"Skripsi Melati Tegarina"
win1$env$frm<-tk2frame(win1, borderwidth = 3, relief = "flat", padding = 10)
win1$env$frm2<-tk2frame(win1, borderwidth = 3, relief = "flat", padding = 10)
imgfile<-system.file("E:/TB/ua2.png", package = "tcltk2") 
image1<-tclVar()
teks1<-tkfont.create(family="courier",size=15,weight="bold")
teks2<-tkfont.create(family="times",size=11)
teks4<-tkfont.create(family="times",size=13)
teks3<-tkfont.create(family="courier",size=10,weight="bold")
teks5<-tkfont.create(family="courier",size=13,weight="bold")
tkimage.create("photo", image1, file = imgfile)
tkgrid(tk2label(win1$env$frm,text=" "))
tkgrid(tk2label(win1$env$frm,text="PROGRAM PENENTU STATUS GIZI BALITA",font=teks1))
tkgrid(tk2label(win1$env$frm,text=" "))
tkgrid(tk2label(win1$env$frm,text="SKRIPSI",font=teks5))
tkgrid(tk2label(win1$env$frm,text="Rancangan Kartu Menuju Sehat Tinggi Badan Balita di Kabupaten Bondowoso",font=teks3))
tkgrid(tk2label(win1$env$frm,text="Berdasarkan Kurva Z-Score dengan Pendekatan Regresi Nonparametrik Least Square Spline ",font=teks3))
tkgrid(tk2label(win1$env$frm,text=" "))
tkgrid(tk2label(win1$env$frm,image= image1))
tkgrid(tk2label(win1$env$frm,text=" "))
tkgrid(tk2label(win1$env$frm,text="Oleh :",font=teks2))
tkgrid(tk2label(win1$env$frm,text="------ Melati Tegarina -----",font=teks2))
tkgrid(tk2label(win1$env$frm,text="------ 081611833040 -----",font=teks2))
tkgrid(tk2label(win1$env$frm,text=" "))
tkgrid(tk2label(win1$env$frm,text="Dosen Pembimbing : ",font=teks4))
tkgrid(tk2label(win1$env$frm,text="Dr. Nur Chamidah, M.Si.",font=teks4))
tkgrid(tk2label(win1$env$frm,text="Ir. Elly Anna, M.Si.",font=teks4))
tkgrid(tk2label(win1$env$frm,text=" ")) 
tkgrid(tk2label(win1$env$frm,text="S-1 STATISTIKA",font=teks3)) 
tkgrid(tk2label(win1$env$frm,text="UNIVERSITAS AIRLANGGA",font=teks3))
tkgrid(tk2label(win1$env$frm,text="2020",font=teks3))
tkgrid(tk2label(win1$env$frm,text=" "))

panduan<-function()
{
 library(tcltk2)
 win2<-tktoplevel()
 tktitle(win2)<-"PANDUAN PENENTUAN STATUS TINGGI BADAN BALITA"
 font1<-tkfont.create(family="sans",size=13,weight="bold")
 font2<-tkfont.create(family="sans",size=12)
 tkgrid(tklabel(win2,text="Langkah-Langkah Menjalankan Program Penentuan Status Gizi dengan \n",font=font1))
 tkgrid(tklabel(win2,text="Grafik Standar Pertumbuhan Tinggi Badan Balita Berdasarkan Grafik Least Square Spline \n",font=font1))
 tkgrid(tklabel(win2,text="dan Grafik Standar Antropometri WHO 2005\n",font=font1))
 tkgrid(tklabel(win2,text="1. Masukkan data balita pada kotak yang tersedia.\n",font=font2),sticky="w")
 tkgrid(tklabel(win2,text="2. Apabila ingin mengetahui hasil status gizi ballita dengan grafik nonparametrik least square spline,\n",font=font2),sticky="w")
 tkgrid(tklabel(win2,text="   klik tombol GRAFIK SPLINE dan STATUS GIZI SPLINE.\n",font=font2),sticky="w")
 tkgrid(tklabel(win2,text="3. Apabila ingin mengetahui hasil status gizi ballita dengan grafik standar WHO 2005,\n",font=font2),sticky="w")
 tkgrid(tklabel(win2,text="   klik tombol GRAFIK WHO dan STATUS GIZI WHO.\n",font=font2),sticky="w")
 kb=tkbutton(win2,text="Kembali",command=function()tkdestroy(win2))
 tkgrid(kb)
}

topmenu=tk2menu(win1$env$frm)
tkconfigure(win1,menu=topmenu)
menu1=tk2menu(topmenu,tearoff=FALSE)
tkadd(menu1,"command",label="Panduan",command=panduan)
tkadd(topmenu,"cascade",label="Menu",menu=menu1)

tombol.plot<-tk2button(win1$env$frm,text="START PROGRAM",command=spline)
tkgrid(tombol.plot)
tkpack(win1$env$frm2, expand = TRUE, fill = "y")
tkpack(win1$env$frm, expand = TRUE, fill = "y")

spline<-function()
{
 require(tcltk2)
 win3<-tktoplevel()
 tktitle(win3)<-"Data Balita"
 teks1<-tkfont.create(family="sans",size=13,weight="bold")
 teks2<-tkfont.create(family="times",size=12)
 teks3<-tkfont.create(family="times",size=12,weight="bold")
 teks4<-tkfont.create(family="sans",size=13,weight="bold")
 tkgrid(tklabel(win3,text=""))
 tkgrid(tklabel(win3,text="-STATUS GIZI BALITA-",font=teks1))
 tkgrid(tklabel(win3,text=" 				"))
 tkgrid(tklabel(win3,text="Informasi Balita",font=teks4))
 nama=tclVar("")
 usia=tclVar("")
 tinggi=tclVar("")
 rb1<-tkradiobutton(win3)
 rb2<-tkradiobutton(win3)
 rbValue1<-tclVar("laki-laki")
 tkconfigure(rb1,variable=rbValue1,value="laki-laki")
 tkconfigure(rb2,variable=rbValue1,value="perempuan")
 na<-tkentry(win3,width="20",textvariable=nama)
 us<-tkentry(win3,width="20",textvariable=usia)
 tb<-tkentry(win3,width="20",textvariable=tinggi)
 tkgrid(tklabel(win3,text="Nama  Balita:",font=teks3),na,sticky="w")
 tkgrid(tklabel(win3,text="Usia Balita (Bulan) :",font=teks3),us,sticky="w")
 tkgrid(tklabel(win3,text="Tinggi Balita (cm)",font=teks3),tb,sticky="w")
 tkgrid(tklabel(win3,text="Jenis Kelamin :",font=teks3),sticky="w")
 tkgrid(tklabel(win3,text="Laki - Laki",font=teks2),rb1,sticky="w")
 tkgrid(tklabel(win3,text="Perempuan",font=teks2),rb2,sticky="w")

plotspline<-function()
{
 usia1<-(tclvalue(usia))
 tinggi1<-(tclvalue(tinggi))
 jk<-(tclvalue(rbValue1))
 if(usia1=="")
 {
  tkmessageBox(message="Anda belum mengisi usia",icon="warning")
 }
 if(tinggi1=="")
 {
  tkmessageBox(message="Anda belum mengisi tinggi badan",icon="warning")
 }
 else
 {
  usia2<-as.numeric(tclvalue(usia))
  tinggi2<-as.numeric(tclvalue(tinggi)) 
  jk<-(tclvalue(rbValue1))
 }
 if(jk=="laki-laki")
 {
  require(png)
  img<-readPNG("E:/TB/tb lk.png")
  r=as.raster(img[,,1:3])
  r[img[,,3]==0]
  plot(1:10,xlab="Usia (Bulan)",ylab="TB/U (cm)",axes=FALSE,type="n")
  rasterImage(r,1,1,10,10)
  op<-par(new=T)
  plot(usia1,tinggi1,pch=19,xlim=c(0,60),ylim=c(40,140),ann=FALSE,new=T,col="black") 
  par(op)
  title(main="Grafik Standar Pertumbuhan Least Square Spline")
  title(main="\n\nTB/U Balita Laki-laki") }
 else
 {
  require(png)
  img<-readPNG("E:/TB/tb pr.png")
  r=as.raster(img[,,1:3])
  r[img[,,3]==0]
  plot(1:10,xlab="Usia (Bulan)",ylab="TB/U (cm)",axes=FALSE,type="n")
  rasterImage(r,1,1,10,10)
  op<-par(new=T)
  plot(usia1,tinggi1,pch=19,xlim=c(0,60),ylim=c(40,140),ann=FALSE,new=T,col="black")
  par(op)
  title(main="Grafik Standar Pertumbuhan Least Square Spline")
  title(main="\n\nTB/U Balita Perempuan")
 }
}

hasilspline<-function()
{
 nama1<-(tclvalue(nama))
 usia1<-(tclvalue(usia)) 
 tinggi1<-(tclvalue(tinggi))
 jk<-(tclvalue(rbValue1))
 if(usia1=="") {tkmessageBox(message="Anda belum mengisi usia",icon="warning")}
 if(tinggi1=="") {tkmessageBox(message="Anda belum mengisi tinggi badan",icon="warning")}
 else
 {
  usia2<-as.numeric(tclvalue(usia))
  tinggi2<-as.numeric(tclvalue(tinggi))
  jk<-(tclvalue(rbValue1))
 }
 {
 library(tcltk2)
 win4<-tktoplevel()
 tktitle(win4)<-"HASIL STATUS GIZI BALITA MENURUT LEAST SQUARE SPLINE"
 library(foreign)
 font1<-tkfont.create(family="times",size=13)
 nama2<-(tclvalue(nama))
 usia2<-as.numeric(tclvalue(usia))
 tinggi2<-as.numeric(tclvalue(tinggi))
 jk<-(tclvalue(rbValue1))
 tkgrid(tklabel(win4,text="Nama balita\t:",font=font1),tklabel(win4,text=nama2,font=font1),sticky="w")
 tkgrid(tklabel(win4,text="Usia balita\t:",font=font1),tklabel(win4,text=usia2,font=font1),sticky="w")
 tkgrid(tklabel(win4,text="Tinggi badan\t:",font=font1),tklabel(win4,text=tinggi2,font=font1),sticky="w")
 tkgrid(tklabel(win4,text="Jenis Kelamin\t:",font=font1),tklabel(win4,text=jk,font=font1),sticky="w")
 if(jk=="laki-laki")
 {
  usia2<-as.numeric(tclvalue(usia))
  tinggi2<-as.numeric(tclvalue(tinggi))
  font1<-tkfont.create(family="times",size=13)
  library(foreign,pos=4)
  data<-as.matrix(estpa)
  colnames(data)<-tolower(colnames(data))
  n<-length(data[,1])
  for(i in 1:n)
  {
   usia2<-as.numeric(tclvalue(usia))
   tinggi2<-as.numeric(tclvalue(tinggi))
   font1<-tkfont.create(family="times",size=13)
   if(usia2==data[i,1])
   {
    if(tinggi2<data[i,2])
     {tkgrid(tklabel(win4,text="Status Gizi\t: \tSangat Pendek (Severely Stunted)",font=font1),sticky="w")}
    else if(tinggi2<=data[i,3])
     {tkgrid(tklabel(win4,text="Status Gizi\t: \tPendek (Stunted)",font=font1),sticky="w")}
    else if(tinggi2<=data[i,7])
     {tkgrid(tklabel(win4,text="Status Gizi\t: \tTinggi Normal",font=font1),sticky="w")}
    else if(tinggi2>data[i,7])
     {tkgrid(tklabel(win4,text="Status Gizi\t: \tTinggi",font=font1),sticky="w")}
   }
  }
 }
 else
 {
  library(foreign,pos=4)
  data<-as.matrix(estpi)
  colnames(data)<-tolower(colnames(data))
  usia2<-as.numeric(tclvalue(usia))
  tinggi2<-as.numeric(tclvalue(tinggi))
  n<-length(data[,1])
  for(i in 1:n)
  {
   usia2<-as.numeric(tclvalue(usia))
   tinggi2<-as.numeric(tclvalue(tinggi))
   font1<-tkfont.create(family="times",size=13)
   if(usia2==data[i,1])
   {
    if(tinggi2<data[i,2]) 
     {tkgrid(tklabel(win4,text="Status Gizi\t: \tSangat Pendek (Severely Stunted)",font=font1),sticky="w")}
    else if(tinggi2<=data[i,3]) 
     {tkgrid(tklabel(win4,text="Status Gizi\t: \tPendek (Stunted)",font=font1),sticky="w")}
    else if(tinggi2<=data[i,7])
     {tkgrid(tklabel(win4,text="Status Gizi\t: \tTinggi Normal",font=font1),sticky="w")}
    else if(tinggi2>data[i,7])
     {tkgrid(tklabel(win4,text="Status Gizi\t: \tTinggi",font=font1),sticky="w")}
   }
  }
 }
}
}

tkgrid(tklabel(win3,text=" 	"))
tkgrid(tklabel(win3,text=" Grafik Least Square Spline ",font=teks4),sticky="w")
tombol.grafik=tkbutton(win3,text="GRAFIK SPLINE",command=plotspline) 
tkgrid(tklabel(win3,text="\t\t"),tombol.grafik) 
tombol.hasil=tkbutton(win3,text="STATUS GIZI SPLINE",command=hasilspline) 
tkgrid(tklabel(win3,text="\t\t"),tombol.hasil)
 
plotwho<-function()
{
 usia1<-(tclvalue(usia))
 tinggi1<-(tclvalue(tinggi))
 jk<-(tclvalue(rbValue1))
 if(usia1=="") {tkmessageBox(message="Anda belum mengisi usia",icon="warning")}
 if(tinggi1=="") {tkmessageBox(message="Anda belum mengisi tinggi badan",icon="warning")}
 else
 {
  usia2<-as.numeric(tclvalue(usia))
  tinggi2<-as.numeric(tclvalue(tinggi))
  jk<-(tclvalue(rbValue1))
 }
 if(jk=="laki-laki")
 {
  require(png)
  img<-readPNG("E:/TB/tb lk who.png")
  r=as.raster(img[,,1:3])
  r[img[,,3]==0]
  plot(1:10,xlab="Usia (Bulan)",ylab="TB/U (cm)",axes=FALSE,type="n")
  rasterImage(r,1,1,10,10)
  op<-par(new=T)
  plot(usia1,tinggi1,pch=19,xlim=c(0,60),ylim=c(40,140),ann=FALSE,new=T,col="black")
  par(op)
  title(main="Grafik Standar Pertumbuhan TB/U Balita Laki-Laki")
  title(main="\n\nmenurut WHO")
 }
 else
 {
  require(png)
  img<-readPNG("E:/TB/tb pr who.png")
  r=as.raster(img[,,1:3])
  r[img[,,3]==0]
  plot(1:10,xlab="Usia (Bulan)",ylab="TB/U (cm)",axes=FALSE,type="n")
  rasterImage(r,1,1,10,10)
  op<-par(new=T)
  plot(usia1,tinggi1,pch=19,xlim=c(0,60),ylim=c(40,140),ann=FALSE,new=T,col="black")
  par(op)
  title(main="Grafik Standar Pertumbuhan TB/U Balita Perempuan")
  title(main="\n\nmenurut WHO")
 }
}

hasilwho<-function()
{
 nama1<-(tclvalue(nama))
 usia1<-(tclvalue(usia))
 tinggi1<-(tclvalue(tinggi))
 jk<-(tclvalue(rbValue1))
 if(usia1=="") {tkmessageBox(message="Anda belum mengisi usia",icon="warning")}
 if(tinggi1=="") {tkmessageBox(message="Anda belum mengisi tinggi badan",icon="warning")}
 else
 {
  usia2<-as.numeric(tclvalue(usia))
  tinggi2<-as.numeric(tclvalue(tinggi))
  jk<-(tclvalue(rbValue1))
 }
 library(tcltk2)
 win4<-tktoplevel()
 tktitle(win4)<-"HASIL STATUS GIZI BALITA MENURUT WHO"
 library(foreign)
 font1<-tkfont.create(family="times",size=13)
 nama2<-(tclvalue(nama))
 usia2<-as.numeric(tclvalue(usia))
 tinggi2<-as.numeric(tclvalue(tinggi))
 jk<-(tclvalue(rbValue1))
 tkgrid(tklabel(win4,text="Nama balita\t:",font=font1),tklabel(win4,text=nama2,font=font1),sticky="w")
 tkgrid(tklabel(win4,text="Usia balita\t:",font=font1),tklabel(win4,text=usia2,font=font1),sticky="w")
 tkgrid(tklabel(win4,text="Tinggi badan\t:",font=font1),tklabel(win4,text=tinggi2,font=font1),sticky="w")
 tkgrid(tklabel(win4,text="Jenis Kelamin\t:",font=font1),tklabel(win4,text=jk,font=font1),sticky="w")
 if(jk=="laki-laki")
 {
  usia2<-as.numeric(tclvalue(usia))
  tinggi2<-as.numeric(tclvalue(tinggi))
  font1<-tkfont.create(family="times",size=13)
  library(foreign,pos=4)
  data<-as.matrix(whopa)
  colnames(data)<-tolower(colnames(data))
  n<-length(data[,1])
  for(i in 1:n)
  {
   usia2<-as.numeric(tclvalue(usia))
   tinggi2<-as.numeric(tclvalue(tinggi))
   font1<-tkfont.create(family="times",size=13)
   if(usia2==data[i,1])
   {
    if(tinggi2<data[i,2]) {tkgrid(tklabel(win4,text="Status Gizi\t: \tSangat Pendek (Severely Stunted)",font=font1),sticky="w")}
    else if(tinggi2<=data[i,3]) {tkgrid(tklabel(win4,text="Status Gizi\t: \tPendek (Stunted)",font=font1),sticky="w")}
    else if(tinggi2<=data[i,5]) {tkgrid(tklabel(win4,text="Status Gizi\t: \tTinggi Normal",font=font1),sticky="w")}
    else {tkgrid(tklabel(win4,text="Status Gizi\t: \tTinggi",font=font1),sticky="w")}
   }
  }
 }
 else
 {
  library(foreign,pos=4)
  data<-as.matrix(whopi)
  colnames(data)<-tolower(colnames(data))
  usia2<-as.numeric(tclvalue(usia))
  tinggi2<-as.numeric(tclvalue(tinggi))
  n<-length(data[,1])
  for(i in 1:n)
  {
   usia2<-as.numeric(tclvalue(usia))
   tinggi2<-as.numeric(tclvalue(tinggi))
   font1<-tkfont.create(family="times",size=13)
   if(usia2==data[i,1])
   {
    if(tinggi2<data[i,2]) {tkgrid(tklabel(win4,text="Status Gizi\t: \tSangat Pendek (Severely Stunted)",font=font1),sticky="w")}
    else if(tinggi2<=data[i,3]) {tkgrid(tklabel(win4,text="Status Gizi\t: \tPendek (Stunted)",font=font1),sticky="w")}
    else if(tinggi2<=data[i,5]) {tkgrid(tklabel(win4,text="Status Gizi\t: \tTinggi Normal",font=font1),sticky="w")}
    else if(tinggi2>data[i,5]) {tkgrid(tklabel(win4,text="Status Gizi\t: \tTinggi",font=font1),sticky="w")}
   }
  }
 }
}
tkgrid(tklabel(win3,text=" "))
tkgrid(tklabel(win3,text=" Grafik Menurut Standar WHO ",font=teks4),sticky="w") 
tombol.grafik=tkbutton(win3,text="GRAFIK MENURUT WHO",command=plotwho) 
tkgrid(tklabel(win3,text="\t\t"),tombol.grafik) 
tombol.hasil=tkbutton(win3,text="STATUS GIZI MENURUT WHO",command=hasilwho) 
tkgrid(tklabel(win3,text="\t\t"),tombol.hasil)
}

topmenu=tkmenu(win1)
submenu1=tkmenu(win1) 
tkconfigure(win1,menu=topmenu) 
menu1=tkmenu(topmenu,tearoff=FALSE)
tkadd(menu1,"cascade",label="Panduan",command=panduan)
tkadd(topmenu,"cascade",label="Panduan",menu=menu1)
tombol.mulai<-tkbutton(win1,text="MULAI",command=spline)