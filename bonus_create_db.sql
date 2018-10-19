--
-- Database: `bonus`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `comments`
--

CREATE TABLE `comments` (
  `commentId` int(11) NOT NULL,
  `text` text,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `newsId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `news`
--

CREATE TABLE `news` (
  `newsId` int(11) NOT NULL,
  `text` text,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentId`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `newsId` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;



--
-- INSERT data to table `news`
--

INSERT INTO news
  ( text, date )
VALUES
  ( 'Vėžys. Galite atgauti skolą arba kažką pasiskolinti. Antroji pusė bus linkusi pritarti jūsų    poreikiams, net jei tai nemažai kainuoja. Pažįstamas asmuo gali pateikti pasiūlymą, susijusį su   kelione, nauju projektu.', '2018-10-18' ),
  ( 'Vėžys. Galite atgauti skolą arba kažką pasiskolinti. Antroji pusė bus linkusi pritarti jūsų  poreikiams, net jei tai nemažai kainuoja. Pažįstamas asmuo gali pateikti pasiūlymą, susijusį su  kelione, nauju projektu.', '2018-10-11'),
  ( 'Vėžys. Galite atgauti skolą arba kažką pasiskolinti. Antroji pusė bus linkusi pritarti jūsų  poreikiams, net jei tai nemažai kainuoja. Pažįstamas asmuo gali pateikti pasiūlymą, susijusį su  kelione, nauju projektu.', '2018-02-15'),
  ( 'Vėžys. Galite atgauti skolą arba kažką pasiskolinti. Antroji pusė bus linkusi pritarti jūsų poreikiams, net jei tai nemažai kainuoja. Pažįstamas asmuo gali pateikti pasiūlymą, susijusį su kelione, nauju projektu.', '2018-01-01' ),
  ( 'Liūtas. Būsite nusiteikę aiškintis asmeninius ir dalykinius santykius. Galbūt gausite pasiūlymą tarpininkauti, bendradarbiauti ar kitaip partneriauti. Tai jus veiks prieštaringai: ir sudomins, ir kels nerimą.', '2018-02-01' ),
  ( 'Mergelė. Būtų geriausia, kad šiandien sugebėtumėte suderinti darbą ir poilsį, nepuldami į kraštutinumus, nepersitempdami. Palankiai veiks planinga reikalų bei laisvalaikio eiga. Derėtų skirti dėmesio tiems, kurie jus myli.', '2018-03-01' ),
  ( 'Svarstyklės. Būsite geranoriškai nusiteikę, dosnūs. Pravartu užsiimti menu, tvarkyti pinigų, turto reikalus, dalyvauti kūrybiniuose konkursuose arba skatinti tam vaikus. Nepamirškite rūpintis ir sveikata.', '2018-04-01' ),
  ( 'Skorpionas. Jūs būsite gana priekabūs artimųjų atžvilgiu, nepakantūs jų argumentams, prieštaravimui bei buitinei netvarkai. Tačiau jus turėtų džiuginti menas, talentingi žmonės ir pan..', '2018-05-01' ),
  ( 'Šaulys. Būsite aktyvūs, domėsitės įvairia informacija, aktualiais įvykiais. Galite kažkam padaryti įspūdį savo kalba ar rašytais komentarais. Galima nauda per reklamą, komercinę veiklą. Tik nežiopsokite kelyje.', '2018-06-01' ),
  ( 'Ožiaragis. Turėtumėte gana sėkmingai tvarkyti komercinius ir finansinius reikalus, nepriekaištingai atlikti dalykines ir buitines užduotis. Venkite abejotinų aferų. Galite susitikti seną pažįstamą ar sulaukti giminaičio skambučio.', '2018-07-01' ),
  ( 'Vandenis. Nors diena nebloga ir seksis siekti saviraiškos, jumyse lengva pažadinti „žvėrį“. Būsite emocionalūs, atvirai reikšite jausmus, ūmiai reaguosite į kritiką, replikas, komentarus.', '2018-08-01' ),
  ( 'Žuvys. Galite pasijusti vieniši, kamuojami nerimo ar kažkokių baimių. Tačiau kai kuriose srityse nusimato neblogi rezultatai. Jums padės paaštrėjusi intuicija, kūrybinis įkvėpimas. Vakare pamirškite reikalus ir pasilepinkite maloniu atokvėpiu.', '2018-09-01' ),
  ( 'Svarstyklės. Šiandien pravartu konsultuotis su specialistais, jeigu reikia protingų ir naudingų patarimų. Galbūt mėginsite susitikti su kažkuo, kas atvyko ar sugrįžo iš užsienio, aptarti klausimus, susijusius su mokslu ar kelionių planais.', '2018-10-01' ),
  ( 'Ožiaragis. Šiandien pravartu konsultuotis su specialistais, jeigu reikia protingų ir naudingų patarimų. Galbūt mėginsite susitikti su kažkuo, kas atvyko ar sugrįžo iš užsienio, aptarti klausimus, susijusius su mokslu ar kelionių planais.', '2018-01-10' ),
  ( 'Vandenis. Šiandien pravartu konsultuotis su specialistais, jeigu reikia protingų ir naudingų patarimų. Galbūt mėginsite susitikti su kažkuo, kas atvyko ar sugrįžo iš užsienio, aptarti klausimus, susijusius su mokslu ar kelionių planais.', '2018-02-10' ),
  ( 'Žuvys. Šiandien pravartu konsultuotis su specialistais, jeigu reikia protingų ir naudingų patarimų. Galbūt mėginsite susitikti su kažkuo, kas atvyko ar sugrįžo iš užsienio, aptarti klausimus, susijusius su mokslu ar kelionių planais.', '2018-03-10' ),
  ( 'Avinas. Šiandien pravartu konsultuotis su specialistais, jeigu reikia protingų ir naudingų patarimų. Galbūt mėginsite susitikti su kažkuo, kas atvyko ar sugrįžo iš užsienio, aptarti klausimus, susijusius su mokslu ar kelionių planais.', '2018-04-10' ),
  ( 'Jautis. Šiandien pravartu konsultuotis su specialistais, jeigu reikia protingų ir naudingų patarimų. Galbūt mėginsite susitikti su kažkuo, kas atvyko ar sugrįžo iš užsienio, aptarti klausimus, susijusius su mokslu ar kelionių planais.', '2018-05-10' );

--
-- INSERT data to table `comments`
--

INSERT INTO comments
  ( text, date, newsId )
VALUES
  ( 'Kas nori paplepėti?', '2018-10-19', 1),
  ( 'Visai smagu būtų', '2018-10-20', 1),
  ( 'Kada ir kur susitinkam?', '2018-10-21', 1),
  ( 'Super', '2018-10-11', 2),
  ( 'Aš, už', '2018-10-12', 2),
  ( 'Sutinku', '2018-10-13', 2),
  ( 'Man taip pat tinka', '2018-10-14', 2),
  ( 'Nenoriu konsultuotis', '2018-02-15', 3),
  ( 'Aš taip pat nenoriu', '2018-02-16', 3),
  ( 'O aš sutinku', '2018-02-17', 3),
  ( 'Turėtų būti gera paskaita', '2018-02-18', 3),
  ( 'Viskas tinka', '2018-01-03', 4 ),
  ( 'Nelabai', '2018-01-04', 4),
  ( 'OK', '2018-01-05', 4),
  ( 'Ne, ne, ne', '2018-01-06', 4),
  ( 'O kodėl?', '2018-01-07', 4),
  ( 'Sutinku', '2018-01-08', 4),
  ( 'Visiškai neatitinka', '2018-02-05', 5 ),
  ( 'Man taip pat neatitinka', '2018-02-06', 5),
  ( 'O man tiko', '2018-02-07', 5),
  ( 'Puikiai', '2018-03-02', 6 ),
  ( 'Geras', '2018-03-03', 6),
  ( 'Super', '2018-03-04', 6),
  ( 'Geras', '2018-04-02', 7 ),
  ( 'Sutinku', '2018-04-03', 7),
  ( 'Neprieštarauju', '2018-04-04', 7),
  ( 'Aš taip pat', '2018-04-05', 7),
  ( 'Važiuosiu pailsėti', '2018-05-01', 8 ),
  ( 'Aš taip pat noriu pailsėti', '2018-05-02', 8),
  ( 'Kas jungiasi dar?', '2018-05-03', 8),
  ( 'Kaip tik važiuoju atostogų', '2018-06-01', 9 ),
  ( 'Kur išvažiuoji?', '2018-06-02', 9),
  ( 'Aš taip pat mėgstu slidinėti', '2018-06-03', 9),
  ( 'Reikia nueiti į banką', '2018-07-01', 10 ),
  ( 'Galima susitvarkyti viską internetu', '2018-07-02', 10),
  ( 'Man reikia pasirašyti dokumentus', '2018-07-05', 10),
  ( 'Tai ką daryti?', '2018-08-01', 11 ),
  ( 'Paskaityti gerą knygą', '2018-08-02', 11),
  ( 'Kaip tik dabar vieną tokią ir skaitau', '2018-08-04', 11),
  ( 'Gal vakare nueinam į kiną.', '2018-09-01', 12 ),
  ( 'Gera idėja.', '2018-09-03', 12),
  ( 'Jau išsirinkai filmą?', '2018-09-05', 12),
  ( 'O man šiandien nesinori spresti kelionės klausimų', '2018-10-01', 13 ),
  ( 'Aš jau viską sudėliojau', '2018-10-04', 13),
  ( 'Išvykstame Spalio 10d.', '2018-10-05', 13),
  ( 'Reikia šiandien suplanuoti kelionę', '2018-01-10', 14 ),
  ( 'Viskas jau padaryta', '2018-01-11', 14),
  ( 'Bilietai užsakyti', '2018-01-12', 14),
  ( 'Visiems persiųsta detali informacija', '2018-01-13', 14),
  ( 'Rasa, tai susitinkam vakare.', '2018-02-10', 15 ),
  ( 'Šiandien tikrai negaliu.', '2018-02-11', 15),
  ( 'Aš galiu šeštadienį po pietų.', '2018-02-13', 15),
  ( 'O tai ką daryti tada?.', '2018-03-10', 16 ),
  ( 'O tai ką daryti tada?.', '2018-03-11', 16),
  ( 'O tai ką daryti tada?.', '2018-03-16', 16),
  ( 'Šiandien nieko neveiksiu', '2018-04-10', 17 ),
  ( 'Važiuoju prie Kauno marių', '2018-04-12', 17),
  ( 'Šiandien plaukia pasiplaukioti su jachta', '2018-04-16', 17),
  ( 'Netinka', '2018-05-10', 18 ),
  ( 'Tinka', '2018-05-12', 18),
  ( 'Deja, bet tinka', '2018-05-15', 18);

