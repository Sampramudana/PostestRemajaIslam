//
//  CustomCellTableViewController.swift
//  PostestRemajaIslam
//
//  Created by Sam Pramudana on 10/23/17.
//  Copyright © 2017 Sam Pramudana. All rights reserved.
//

import UIKit
var TITle = ["Masih Malas Bangun Shubuh","Yang Jarang Diketahui dari Puasa Asyura","Doa pada Orang Tua Kita Bagaimana?","Menikah itu Pembuka Pintu Rezeki, Tak Percaya?","Di Masjid Hatiku Terkait"]
var titleDesc = ["Perlu diketahui bahwa begadang tanpa ada kepentingan dibenci oleh Nabi shallallahu ‘alaihi wa sallam. Diriwayatkan dari Abi Barzah, beliau berkata, “Rasulullah shallallahu ‘alaihi wa sallam membenci tidur sebelum shalat ‘Isya dan ngobrol-ngobrol setelahnya.” (HR. Bukhari, no. 568)Ibnu Baththol menjelaskan, “Nabi shallallahu ‘alaihi wa sallam tidak suka begadang setelah shalat ‘Isya karena beliau sangat ingin melaksanakan shalat malam dan khawatir jika sampai luput dari shalat shubuh berjama’ah. ‘Umar bin Al Khottob sampai-sampai pernah memukul orang yang begadang setelah shalat Isya, beliau mengatakan, “Apakah kalian sekarang begadang di awal malam, nanti di akhir malam tertidur lelap?!” (Syarh Al-Bukhari, 3: 278)","Ini tiga hal yang jarang diketahui dari puasa Asyura (10 Muharram).1- Berpusa Asyura (10 Muharram) saja tanpa hari sebelum atau sesudahnya dibolehkan, tanpa dikatakan makruh. Namun lebih afdhal mengikutkan dengan hari sebelumnya (9 Muharram), untuk menyelisihi puasa orang Yahudi. Jika luput, bisa berpuasa pada hari sesudahnya (11 Muharram).Puasa Asyura di tahun 1439 H jatuh pada hari Sabtu, 30 September 2017.2- Puasa Asyura itu ada dua tingkatan:(a) puasa pada dua hari, yaitu 9 dan 10 Muharram,(b) puasa satu hari saja yaitu 10 Muharram.Adapun perintah puasa Asyura diikuti hari sebelum dan sesudahnya, sehingga berpuasa 9, 10, 11 Muharram, perlu diketahui bahwa haditsnya munkar.Namun kalau puasa pada tiga hari tersebut dengan niatan puasa tiga hari setiap bulannya, maka itu bagus.","Ibnu ‘Uyainah mengatakan,من صلى الصلوات الخمس فقد شكر الله . ومن دعا لوالديه في أدبار الصلوات فقد شكرهما“ Siapa yang shalat lima waktu, berarti ia telah bersyukur pada Allah. Siapa yang mendoakan orang tua di setiap akhir shalat, berarti ia telah berterima kasih pada orang tua.”Berarti di antara tanda berterima kasih dan berbakti pada orang tua adalah terus mendoakan keduanya.Disebutkan dalam Tafsir Al-Qurthubi (Al-Jami’ li Ahkam Al-Qur’an) karya Imam Muhammad bin Ahmad Al-Anshari Al-Qurthubi, Penerbit Darul Fikr, 14:41.","Wahai jomblo, ingin berkecukupan?Tak percaya hadits ini?Dari Abu Hurairah radhiyallahu ‘anhu, ia berkata bahwa Rasulullah shallallahu ‘alaihi wa sallam bersabda, “Ada tiga orang yang akan mendapatkan pertolongan Allah: (1) orang yang berjihad di jalan Allah, (2) orang yang menikah demi menjaga kesucian dirinya, (3) budak mukatab yang ingin membebaskan dirinya.” (HR. An-Nasa’i, no. 3218; Tirmidzi, no. 1655; Ibnu Majah, no. 2518. Al-Hafizh Abu Thahir mengatakan bahwa sanad hadits ini hasan).","3- Laki-laki yang hatinya selalu terkait dengan masjid.Yang dimaksud di sini adalah laki-laki. Karena wanita lebih layak tempatnya di rumah. Sampai pun untuk shalat lima waktu, wanita lebih utama mengerjakannya di rumah dan pahalanya lebih besar. Sedangkan laki-laki, tempat shalatnya itu di masjid.Laki-laki yang hatinya terkait dengan masjid adalah yang biasa menunggu shalat setelah shalat, misalnya ia menunggu waktu antara Maghrib dan Isya dengan berada dalam majelis ilmu dengan mendengar kajian Quran atau hadits Nabi shallallahu ‘alaihi wa sallam.Bisa juga pengertian orang yang hatinya terkait dengan masjid adalah mereka yang selalu mengingat shalat berjamaah walau dalam keadaan super sibuk. Sopir kendaraan ketika mendengar suara azan segera memarkirkan kendaraannya untuk mengerjakan shalat. Pegawai kantoran bergegas ke masjid ketika berkumandang hayya ‘alash sholah, hayya ‘alash sholah. Contoh-contoh seperti ini itulah mereka yang hatinya selalu terkait masjid."]
var myIndex = 0

class CustomCellTableViewController: UITableViewController {
    
    
    let tglData : [String] = ["30/09/2017 • Fiqih Remaja • 1203","29/09/2017 • Fiqih Remaja • 891","13/09/2017 • Akhlaq Mulia • 981","13/09/2017 • Uncategorized • 1850","19/09/2017 • Nasehat • 1544"]
    
    let judulBerita : [String] = ["Masih Malas Bangun Subuh","Yang Jarang Diketahui dari Puasa Asyura","Doa pada Orang Tua Kita Bagaimana?","Menikah itu Pembuka Pintu Rezeki, Tak Percaya?","Di Masjid Hatiku Terkait"]
    
    let isiBerita : [String] = ["Telat Shubuh dan Dikencingi SetanDari Ibnu Mas’ud ia pernah berkata, “Di hadapan Nabi shallallahu ‘alaihi wa sallam disebutkan tentang seorang laki-laki yang tidur semalaman sampai datang pagi. Rasulullah shallallahu ‘alaihi wa sallam pun bersabda,    ذَاكَ رَجُلٌ بَالَ الشَّيْطَانُ فِى أُذُنَيْهِ – أَوْ قَالَ – فِى أُذُنِهِ“Laki-laki itu telah dikencingi oleh setan pada kedua telinganya -dalam riwayat lain: di telinganya-” (HR. Bukhari, no. 3270 dan Muslim, no. 774). Al-Qadhi ‘Iyadh memahami hadits ini secara tekstual. Demikianlah yang benar. Lalu dikhususkan kata telinga yang dikencingi karena telingalah pusat pendengaran untuk diingatkan. (Lihat Syarh Shahih Muslim, 6: 58).","Ini tiga hal yang jarang diketahui dari puasa Asyura (10 Muharram).1- Berpusa Asyura (10 Muharram) saja tanpa hari sebelum atau sesudahnya dibolehkan, tanpa dikatakan makruh. Namun lebih afdhal mengikutkan dengan hari sebelumnya (9 Muharram), untuk menyelisihi puasa orang Yahudi. Jika luput, bisa berpuasa pada hari sesudahnya (11 Muharram).","Semoga jadi renungan agar kita terus mendoakan orang tua kita.Allah Ta’ala berfirman, أَنِ اشْكُرْ لِي وَلِوَالِدَيْكَ إِلَيَّ الْمَصِيرُ“Bersyukurlah kepada-Ku dan kepada dua orang ibu bapakmu, hanya kepada-Kulah kembalimu.” (QS. Luqman: 14)Ibnu ‘Uyainah mengatakan,        من صلى الصلوات الخمس فقد شكر الله . ومن دعا لوالديه في أدبار الصلوات فقد شكرهما“Siapa yang shalat lima waktu, berarti ia telah bersyukur pada Allah. Siapa yang mendoakan orang tua di setiap akhir shalat, berarti ia telah berterima kasih pada orang tua.”","Wahai jomblo, ingin berkecukupan?Tak percaya hadits ini? Dari Abu Hurairah radhiyallahu ‘anhu, ia berkata bahwa Rasulullah shallallahu ‘alaihi wa sallam bersabda, “Ada tiga orang yang akan mendapatkan pertolongan Allah: (1) orang yang berjihad di jalan Allah, (2) orang yang menikah demi menjaga kesucian dirinya, (3) budak mukatab yang ingin membebaskan dirinya.” (HR. An-Nasa’i, no. 3218; Tirmidzi, no. 1655; Ibnu Majah, no. 2518. Al-Hafizh Abu Thahir mengatakan bahwa sanad hadits ini hasan).","Inilah mereka yang mendapatkan naungan pada hari kiamat. Yang dimaksudkan naungan di sini adalah naungan ‘Arsy Allah sebagaimana dikuatkan riwayatnya oleh Ibnu Hajar dalam Fath Al-Bari (2: 144). Dari Abu Hurairah radhiyallahu ‘anhu, dari Nabi shallallahu ‘alaihi wa sallam, beliau shallallahu ‘alaihi wa sallam bersabda, “Tujuh golongan yang dinaungi Allah dalam naungan-Nya pada hari di mana tidak ada naungan kecuali naungan-Nya:"]
    
    let gambarBerita : [String] = ["Masih Malas Bangun Shubuh","Yang Jarang Diketahui dari Puasa Asyura","Doa pada Orang Tua Kita Bagaimana?","Menikah itu Pembuka Pintu Rezeki, Tak Percaya?","Di Masjid Hatiku Terkait"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 650.0
        tableView.rowHeight = UITableViewAutomaticDimension

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return TITle.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellBerita", for: indexPath) as! BeritaTableViewCell

        // Configure the cell...
        
        cell.labelJudul.text = judulBerita[indexPath.row]
        cell.labelTanggal.text = tglData[indexPath.row]
        cell.labelIsi.text = isiBerita[indexPath.row]
        cell.gambarBerita.image = UIImage(named: gambarBerita[indexPath.row])

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
        
        }
}
