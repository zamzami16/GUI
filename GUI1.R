input <- function(){
  # write your code here
  
  # second Applet
  # tkdestroy(main_win) # close main_win
  require(tcltk2)
  sec_title <- "second window"
  fnt3<-tkfont.create(family="times",size=11,weight="bold") 
  fnt4<-tkfont.create(family="times",size=12)
  sec_win <- tktoplevel()
  tktitle(sec_win) <- sec_title
  tkgrid(tk2label(sec_win, text="DATA BALITA", font=fnt3))
  
  nama<-tclVar(" ")
  usia<-tclVar(" ")
  bb<-tclVar(" ")
  tb<-tclVar(" ")
  
  cb1<-tkentry(sec_win, width="20", textvariable=nama) 
  cb2<-tkentry(sec_win, width="20", textvariable=usia) 
  b1<-tkentry(sec_win, width="20", textvariable=bb) 
  b2<-tkentry(sec_win, width="20", textvariable=tb) 
  
  tkgrid(tklabel(sec_win,text="Nama Balita:", font=fnt4), cb1, tklabel(sec_win, text=" "), sticky="w")
  tkgrid(tklabel(sec_win,text="Usia:", font=fnt4), cb2, tklabel(sec_win, text="bulan", font=fnt4), sticky="w") 
  tkgrid(tklabel(sec_win,text="Berat Badan:", font=fnt4), b1, tklabel(sec_win, text="kg", font=fnt4), sticky="w")
  
  tkgrid(tklabel(sec_win, text="Tinggi Badan:", font=fnt4), b2, tklabel(sec_win, text="cm", font=fnt4), sticky="w")
  tkgrid(tklabel(sec_win,text=" "))
  
  tkgrid(tk2label(sec_win, text="JENIS KELAMIN", font=fnt3))
  rblk <- tkradiobutton(sec_win)
  rbpr <- tkradiobutton(sec_win)
  
  rbVal <- tclVar(" ")
  tkconfigure(rblk, variable=rbVal, value="LK")
  tkconfigure(rbpr, variable=rbVal, value="Pr")
  
  tkgrid(tk2label(sec_win, text="Laki-laki", font=fnt4), rblk)
  tkgrid(tk2label(sec_win, text="Perempuan", font=fnt4), rbpr)
  tkgrid(tklabel(sec_win, text=" "))
  tombol.next <- tkbutton(sec_win, text="STATUS GIZI", command = function() cat("Work")) 
  tkgrid(tklabel(sec_win, text=" "), tombol.next)
  tkgrid(tklabel(sec_win, text=" "))
} #tutup input  


require(tcltk2)
main_win <- tktoplevel()
judul_skrip <- "IKI DIGANTI JUDUL SKRIPSI?"
tktitle(main_win) <- "GUI"
# Create font
fnt1<-tkfont.create(family="sans",size=14,weight="bold") 
fnt2<-tkfont.create(family="times",size=12) 
nama_dosbing <- "Dr. Nur Chamidah, M.Si. dan Isi dewe yaaa \t"

# tamah printilan2

# buat gambar
tcl("image","create","photo", "imageID", file="universitas-airlangga-surabaya.png")
l <- ttklabel(main_win, image="imageID", compound="image")


# tambah tombol untuk masuk ke fungsi
mulai <- tk2button(main_win,text="START", command = function() input())



# tampilkan
tkgrid(tk2label(main_win, text=""))
tkgrid(tk2label(main_win, text=judul_skrip, font=fnt2))
tkgrid(tk2label(main_win, text=""))
tkgrid(l)
tkgrid(tk2label(main_win, text=""))
tkgrid(tk2label(main_win, text="DIANA FEBRIANTI", font=fnt2))
tkgrid(tk2label(main_win, text=""))
tkgrid(tk2label(main_win, text="Dosen Pembimbing", font=fnt2))
tkgrid(tk2label(main_win, text=nama_dosbing, font=fnt2))
tkgrid(tk2label(main_win, text=""))
tkgrid(tk2label(main_win, text="Program Study S-1 Statistika", font=fnt2))
tkgrid(tk2label(main_win, text="Fakultas Sains dan Teknologi", font=fnt2))
tkgrid(tk2label(main_win, text="Universitas Airlangga", font=fnt2))
tkgrid(tk2label(main_win, text=""))
tkgrid(mulai)
tkgrid(tk2label(main_win, text=""))


