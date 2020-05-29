input <- function(){
  # write your code here
  win3 <- function(){
    # write your estimation here
    
    
    
    #
    nama <- (tclvalue(nama))
    usia <- (tclvalue(usia))
    bb <- (tclvalue(bb))
    tb <- (tclvalue(tb))
    jk <- (tclvalue(rbVal))
    
    if (nama =="" || usia == "" || bb == "" || tb == "" || jk == ""){
      tkmessageBox(message='Masukan data dengan benar dan Lengkap !!', icon="warning")
    }else{
      require(tcltk2)
      terd_win <- tktoplevel()
      tktitle(terd_win) <- "STATUS GIZI"
    }
  } # tutup win3
  
  # second Applet
  # tkdestroy(main_win) # close main_win
  require(tcltk2)
  sec_title <- "second window"
  fnt3<-tkfont.create(family="times",size=12,weight="bold")
  fnt4<-tkfont.create(family="times",size=12)
  
  sec_win <- tktoplevel()
  # tkconfigure(sec_win, bg='#1b0870')
  # tkconfigure(sec_win, bg="white")
  tktitle(sec_win) <- sec_title
  tkgrid(tk2label(sec_win, text="DATA BALITA", font=fnt3), columnspan=3)
  
  # input variabel
  nama<-tclVar("")
  usia<-tclVar("")
  bb<-tclVar("")
  tb<-tclVar("")
  
  cb1<-tkentry(sec_win, width="20", textvariable=nama) 
  cb2<-tkentry(sec_win, width="20", textvariable=usia) 
  b1<-tkentry(sec_win, width="20", textvariable=bb) 
  b2<-tkentry(sec_win, width="20", textvariable=tb) 
  
  tkgrid(tklabel(sec_win,text="Nama Balita:", font=fnt4), cb1, tklabel(sec_win, text=" "), sticky="w")
  tkgrid(tklabel(sec_win,text="Usia:", font=fnt4), cb2, tklabel(sec_win, text="bulan", font=fnt4), sticky="w") 
  tkgrid(tklabel(sec_win,text="Berat Badan:", font=fnt4), b1, tklabel(sec_win, text="kg", font=fnt4), sticky="w")
  
  tkgrid(tklabel(sec_win, text="Tinggi Badan:", font=fnt4), b2, tklabel(sec_win, text="cm", font=fnt4), sticky="w")
  tkgrid(tklabel(sec_win,text=""))
  
  tkgrid(tk2label(sec_win, text="JENIS KELAMIN", font=fnt3), columnspan=3)
  rblk <- tkradiobutton(sec_win)
  rbpr <- tkradiobutton(sec_win)
  
  rbVal <- tclVar("LK")
  tkconfigure(rblk, variable=rbVal, value="LK")
  tkconfigure(rbpr, variable=rbVal, value="Pr")
  
  tkgrid(tk2label(sec_win, text="Laki-laki", font=fnt4), rblk, sticky="w", columnspan=2)
  tkgrid(tk2label(sec_win, text="Perempuan", font=fnt4), rbpr, sticky="w", columnspan=2)
  tkgrid(tklabel(sec_win, text=""))
  tombol.next <- tkbutton(sec_win, text="STATUS GIZI", command = win3) 
  tkgrid(tklabel(sec_win, text=""), tombol.next, sticky="w")
  tkgrid(tklabel(sec_win, text=""))
} #tutup input  


require(tcltk2)
main_win <- tktoplevel()
tktitle(main_win) <- "PROGRAM STATUS GIZI"
# Create font
fnt1<-tkfont.create(family="sans",size=13,weight="bold") 
fnt2<-tkfont.create(family="times",size=12) 
fnt3<-tkfont.create(family="courier",size=15,weight="bold")
nama_dosbing1 <- " Dr. Nur Chamidah, M.Si. "
nama_dosbing2 <- " Ir. Elly Anna, M.Si "

# tamah printilan2

# buat gambar
tcl("image","create","photo", "imageID", file="Resource/unair-logo.png")
l <- ttklabel(main_win, image="imageID", compound="image")

# tambah tombol untuk masuk ke fungsi
mulai <- tk2button(main_win,text="START", command = function() input())

tkgrid(tk2label(main_win, text=""))
tkgrid(tk2label(main_win, text="PROGRAM PENENTU STATUS GIZI BALITA", font=fnt3))
tkgrid(tk2label(main_win, text=""))
tkgrid(tk2label(main_win, text="SKRIPSI", font=fnt1))
tkgrid(tk2label(main_win, text="  Rancangan Grafik Standar Pertumbuhan Berat dan Tinggi Badan Balita di Kabupaten Situbondo  ", font=fnt2))
tkgrid(tk2label(main_win, text=" Berdasarkan Kurva Z-Scores dengan Pendekatan Estimator lokal Linear Birespon ", font=fnt2))
tkgrid(tk2label(main_win, text=""))
tkgrid(l)
tkgrid(tk2label(main_win, text=""))
tkgrid(tk2label(main_win, text="DIANA FEBRIANTI", font=fnt2))
tkgrid(tk2label(main_win, text=""))
tkgrid(tk2label(main_win, text="Dosen Pembimbing", font=fnt2))
tkgrid(tk2label(main_win, text=nama_dosbing1, font=fnt2))
tkgrid(tk2label(main_win, text=nama_dosbing2, font=fnt2))
tkgrid(tk2label(main_win, text=""))
tkgrid(tk2label(main_win, text="Program Studi S-1 Statistika", font=fnt2))
tkgrid(tk2label(main_win, text="Fakultas Sains dan Teknologi", font=fnt2))
tkgrid(tk2label(main_win, text="Universitas Airlangga", font=fnt2))
tkgrid(tk2label(main_win, text=""))
tkgrid(mulai)
tkgrid(tk2label(main_win, text=""))




