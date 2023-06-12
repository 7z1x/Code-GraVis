boolean rotateX = false; // menentukan apakah rotasi pada sumbu X aktif atau tidak.
boolean rotateY = false; // menentukan apakah rotasi pada sumbu Y aktif atau tidak.
boolean rotateZ = false; // menentukan apakah rotasi pada sumbu Z aktif atau tidak.
int posisi_awal = 0; // menyimpan posisi awal rotasi(0).
int pergeseran = 2; //  menentukan besarnya pergeseran rotasi setiap kali posisi_awal diupdate.

void setup() {
  size(800, 600, P3D);
}

void draw() {
  background(0); //  latar belakang dengan warna hitam 
  lights(); // pencahayaan
  translate(width/2, height/2); // pemindahan pusat koordinat ke tengah canvas
  stroke(255); // garis luar putih
  if (rotateX) {
    // Roll
    rotateX(radians(posisi_awal));
  }
  if (rotateY) {
    // Pitch
    rotateY(radians(posisi_awal));
  }
  if (rotateZ) {
    // Yaw
    rotateZ(radians(posisi_awal));
  }
  posisi_awal += pergeseran; // mengupdate posisi rotasi

  if (posisi_awal < 0) { // dilakukan pembalikan arah pergeseran dan posisi_awal diupdate lagi.
    pergeseran = -pergeseran;
    posisi_awal += pergeseran;
  }
  
  pushMatrix(); //  digunakan sebelum mengubah transformasi 
  fill(0, 255, 255); // Warna 
  box(300); // Persegi dengan ukuran 300
  popMatrix(); // digunakan setelah mengubah transformasi
}

void keyPressed() { // fungsi yang dipanggil ketika sebuah tombol pada keyboard ditekan
  if (key == 'x') {
    rotateX = true;
  }
  if (key == 'y') {
    rotateY = true;
  }
  if (key == 'z') {
    rotateZ = true;
  }
}

void keyReleased() { // fungsi yang dipanggil ketika sebuah tombol pada keyboard dilepas setelah ditekan.
  if (key == 'x') {
    rotateX = false;
  }
  if (key == 'y') {
    rotateY = false;
  }
  if (key == 'z') {
    rotateZ = false;
  }
}
