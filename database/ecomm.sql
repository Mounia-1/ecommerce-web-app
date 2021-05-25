-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 25 mai 2021 à 19:28
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecomm`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Fiction', 'Fiction'),
(2, 'Jeunesse', 'Jeunesse'),
(3, 'Santé & bien être', 'Santé'),
(4, 'Histoire', 'Histoire'),
(5, 'Religion', 'Religion'),
(6, 'Littérature', 'Littérature'),
(7, 'Sciences humaines et sociales', 'Sciences');

-- --------------------------------------------------------

--
-- Structure de la table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 7, 'Le genre du capital - Comment la famille reproduit les inégalités', '<p>On sait que le capitalisme au XXIe si&egrave;cle est synonyme d&#39;in&eacute;galit&eacute;s grandissantes entre les classes sociales. Ce que l&#39;on sait moins, c&#39;est que l&#39;in&eacute;galit&eacute; de richesse entre les hommes et les femmes augmente aussi, malgr&eacute; des droits formellement &eacute;gaux et la croyance selon laquelle, en acc&eacute;dant au march&eacute; du travail, les femmes auraient gagn&eacute; leur autonomie. Pour comprendre pourquoi, il faut regarder ce qui se passe dans les familles, qui accumulent et transmettent le capital &eacute;conomique afin de consolider leur position sociale d&#39;une g&eacute;n&eacute;ration &agrave; la suivante.<br />\r\nConjointes et conjoints, fr&egrave;res et soeurs, p&egrave;res et m&egrave;res n&#39;occupent pas les m&ecirc;mes positions dans les strat&eacute;gies familiales de reproduction, et n&#39;en tirent pas les m&ecirc;mes b&eacute;n&eacute;fices. Fruit de vingt ans de recherches, ce livre montre que le capital a un genre. C&eacute;line Bessi&egrave;re et Sibylle Gollac enqu&ecirc;tent sur les calculs, les partages et les conflits qui ont lieu au moment des s&eacute;parations conjugales et des h&eacute;ritages, avec le concours des professions du droit.<br />\r\nDes m&egrave;res isol&eacute;es du mouvement des Gilets jaunes au divorce de Jeff et MacKenzie Bezos, des transmissions de petites entreprises &agrave; l&#39;h&eacute;ritage de Johnny Hallyday, les m&eacute;canismes de contr&ocirc;le et de distribution du capital varient selon les classes sociales, mais aboutissent toujours &agrave; la d&eacute;possession des femmes. Ce livre analyse ainsi comment la soci&eacute;t&eacute; de classes se reproduit gr&acirc;ce &agrave; l&#39;appropriation masculine du capital.</p>\r\n', 'le-genre-du-capital-comment-la-famille-reproduit-les-inegalites', 899, 'le-genre-du-capital-comment-la-famille-reproduit-les-inegalites_1621962555.jpg', '2021-05-09', 2),
(2, 5, 'l\'islam politique', '<p>Youssef Hindi est &eacute;crivain, chercheur ind&eacute;pendant et historien de l&#39;eschatologie messianique.<br />\r\n<br />\r\nN&eacute; au Maroc, il a immigr&eacute; tr&egrave;s jeune en France suivant ainsi un parcours qui l&#39;a conduit &agrave; d&eacute;velopper une r&eacute;flexion quant &agrave; la n&eacute;cessaire r&eacute;conciliation du Nord et du Sud de la M&eacute;diterran&eacute;e.<br />\r\n<br />\r\nSes travaux de recherches sont tourn&eacute;es principalement vers l&rsquo;&eacute;tude des origines des id&eacute;ologies modernes, de leur &eacute;volution et leur influence sur la politique et la g&eacute;opolitique contemporaines.</p>\r\n', 'l-islam-politique', 799, 'l-islam-politique_1621962474.jpg', '2021-05-25', 2),
(3, 4, 'Le combat de chasse de grand-papa', '<p>Le combat de chasse de grand-papa Par Jean-Paul Salini Pr&eacute;face du g&eacute;n&eacute;ral Philippe Lavigne C&#39;&eacute;tait le temps o&ugrave; les avions de chasse n&#39;avaient pas le nez pointu. Ils n&#39;emportaient pas de missiles, ils ne disposaient pas d&#39;ordinateurs, ils n&#39;utilisaient pas de GPS et ils n&#39;&eacute;taient pas &eacute;quip&eacute;s de radar ou de contre-mesures. Tout reposait sur l&#39;oeil ac&eacute;r&eacute; du pilote et sur sa capacit&eacute; &agrave; estimer les temps, les vitesses, les distances et les angles.<br />\r\nEt d&#39;imaginer des trajectoires : la sienne, celles des &eacute;quipiers et celles de l&#39;adversaire. Ce n&#39;&eacute;tait pas une science, c&#39;&eacute;tait un Art. C&#39;&eacute;tait le temps des m&ecirc;l&eacute;es, des duels, des grandes empoignades. Avec un mat&eacute;riel moderne, on y retrouvait l&#39;esprit des grandes &quot; apertures d&#39;armes &quot; du Moyen Age et l&#39;esprit de chevalerie qui allait avec. A propos de l&#39;auteur : Le g&eacute;n&eacute;ral Salini a fait toute sa carri&egrave;re dans l&#39;aviation de chasse, depuis le poste d&#39;humble &eacute;quipier jusqu&#39;&agrave; celui du commandant de la base de Tours o&ugrave; se trouvait alors l&#39;Ecole de chasse.<br />\r\nIl nous expose, en termes simples et accessibles &agrave; tous, les bases de cet art. Il explique &eacute;galement les m&eacute;thodes employ&eacute;es par les chasseurs bombardiers et nous confie ses impressions de pilote &agrave; bord d&#39;avions qu&#39;il a pratiqu&eacute;s. Au passage, il rend hommage aux anciens qui, au cours de la campagne de 1940, ont combattu dans des conditions difficiles, et donne un avis original sur la bataille d&#39;Angleterre.<br />\r\nAssez curieusement, il d&eacute;die son livre &agrave; la m&eacute;moire du g&eacute;n&eacute;ral de Brack, disparu il y a maintenant deux cents ans. Quel rapport entre ce g&eacute;n&eacute;ral de Napol&eacute;on et l&#39;aviation de chasse ? C&#39;est que de Brack nous enseigne, &agrave; travers les si&egrave;cles pass&eacute;s et &agrave; venir, cette qualit&eacute; essentielle et sans laquelle rien n&#39;est possible : &quot; L&#39;Esprit guerrier &quot;. &quot; Nous avons de bons militaires, capables le cas &eacute;ch&eacute;ant, de mourir avec dignit&eacute;, mais ont-ils vraiment l&#39;esprit guerrier ? Notre syst&egrave;me favorise-t-il l&#39;acquisition de cet esprit ? &quot; Ces questions occupent une partie de l&#39;ouvrage.</p>\r\n', 'le-combat-de-chasse-de-grand-papa', 599, 'le-combat-de-chasse-de-grand-papa_1621962539.jpg', '2021-05-10', 1),
(4, 6, 'L\'héritage impossible', '<p>Suite au terrible secret r&eacute;v&eacute;l&eacute; au clan des Neshov, la fratrie se disloque dans de pesants non-dits. Jusqu&#39;au jour, funeste, o&ugrave; ils doivent faire face, ensemble. Dans une chaleur suffocante, Torunn, h&eacute;riti&egrave;re malgr&eacute; elle de la ferme familiale et des guerres silencieuses du pass&eacute;, d&eacute;nouera leurs destins &ndash; tra&ccedil;ant une vie nouvelle. Anne B. Ragde convoque tous les d&eacute;mons de la terre norv&eacute;gienne pour conter cette trilogie des Neshov au dernier acte cruellement magnifique.</p>\r\n', 'l-heritage-impossible', 399, 'l-heritage-impossible_1621962400.jpg', '2021-05-11', 3),
(5, 4, 'Katastroika chroniques 2011-2014', '<p>Il s&rsquo;agit d&rsquo;un livre de plus de 300 pages qui regroupe les chroniques de Sami Mahbouli, publi&eacute;es par le magazine &laquo; R&eacute;alit&eacute;s &raquo; entre 2011 et 2014. Le livre est pr&eacute;fac&eacute; par l&rsquo;actuel pr&eacute;sident de la R&eacute;publique, B&eacute;ji Ca&iuml;d Essebsi et sera publi&eacute; aux &eacute;ditions Appolonia. Au cours de cette conf&eacute;rence, Abdelaziz Belkhodja, directeur des &eacute;ditions Appolonia, a indiqu&eacute; que l&rsquo;ensemble des recettes de ce livre (20 DT) sera allou&eacute; aux familles des martyrs des forces arm&eacute;es.</p>\r\n', 'katastroika-chroniques-2011-2014', 339, 'katastroika-chroniques-2011-2014_1621962375.jpg', '2021-05-12', 3),
(6, 6, 'La Touche Etoile', '<p>Ni Dieu ni Diable, Mo&iuml;ra, dans la mythologie grecque, repr&eacute;sente la destin&eacute;e. Elle s&#39;attache &agrave; faire advenir l&#39;improbable chez ses prot&eacute;g&eacute;s en brouillant les cartes quand elle les juge mal distribu&eacute;es. Ainsi Marion, qui s&#39;est mari&eacute;e en esp&eacute;rant former un couple moderne, d&eacute;couvrira qu&#39;on souffre comme au temps de Racine m&ecirc;me si on a sign&eacute; le contrat de Sartre et Beauvoir. Mais Mo&iuml;ra lui fera vivre, en marge, une liaison passionn&eacute;e avec un Irlandais un peu fou, un peu po&egrave;te. Sa m&egrave;re Alice, quatre-vingts ans, journaliste f&eacute;ministe de choc, s&#39;est jur&eacute; de ne pas se laisser d&eacute;border par la vieillesse. Un d&eacute;fi os&eacute; que Mo&iuml;ra l&#39;aidera &agrave; relever avec panache. La Touche &eacute;toile est une le&ccedil;on des T&eacute;n&egrave;bres, dite sur le ton de l&#39;all&eacute;gresse. Le roman &eacute;mouvant et dr&ocirc;le de plusieurs g&eacute;n&eacute;rations de femmes.</p>\r\n', 'la-touche-etoile', 449.99, 'la-touche-etoile_1621962523.jpg', '0000-00-00', 4),
(7, 6, 'Intuitio', '<p>Timothy Fisher, jeune auteur de polar, m&egrave;ne une vie tranquille dans une rue du Queens &agrave; New York, avec son chat Al Capone. Quand deux agents du FBI se pr&eacute;sentent &agrave; sa porte pour lui demander de les aider &agrave; arr&ecirc;ter l&#39;homme le plus recherch&eacute; du pays, il croit d&#39;abord &agrave; une plaisanterie. Mais apr&egrave;s un moment de rejet, il finit par accepter leur &eacute;trange proposition : rejoindre un programme secret visant &agrave; former des intuitifs, des personnes capables d&#39;acc&eacute;der &agrave; volont&eacute; &agrave; leurs intuitions.<br />\r\nD&#39;abord sceptique, Timothy, qui croyait avoir une existence banale, d&eacute;couvre que le monde cache des possibilit&eacute;s insoup&ccedil;onn&eacute;es. Il se retrouve embarqu&eacute; dans une course contre la montre qui le conduit &agrave; apprivoiser ce pouvoir m&eacute;connu mais accessible &agrave; tous, un pouvoir qui nous montre la vie telle qu&#39;elle est v&eacute;ritablement : extraordinaire. Un thriller initiatique au suspense aussi original qu&#39;haletant qui vous conduira &agrave; d&eacute;couvrir le pouvoir le plus fascinant qui soit : le v&ocirc;tre</p>\r\n', 'intuitio', 619, 'intuitio_1621962361.jpg', '2021-05-13', 5),
(8, 6, 'La terre des mensonges', '<p>Quelques jours avant No&euml;l, en Norv&egrave;ge, dans une ferme d&eacute;labr&eacute;e de Trondheim, la tyrannique Anna Neshov se meurt. Ses trois fils, leur p&egrave;re, ombre fantomatique et Torunn, l&#39;unique petite-fille, se retrouvent alors pour la premi&egrave;re fois pour une confrontation explosive o&ugrave; &eacute;clateront les drames secrets dont sont tiss&eacute;es leurs vies... &quot; C&#39;est tellement authentique, tellement br&ucirc;lant de v&eacute;rit&eacute; - avec une &eacute;criture qui a la puissance d&#39;un brise-glace -, qu&#39;Anne Ragde nous prend aux tripes.<br />\r\n&quot; Andr&eacute; Clavel, Lire Traduit du norv&eacute;gien par Jean Renaud</p>\r\n', 'la-terre-des-mensonges', 549.99, 'la-terre-des-mensonges_1621962506.jpg', '2021-05-14', 1),
(9, 3, 'Pourquoi est-il si difficile d\'être heureux ?', '<p>&quot;Le bonheur, faut-il le rappeler, c&#39;est une petite lumi&egrave;re au plus sombre de soi. Petite veilleuse fid&egrave;le, patiente et inalt&eacute;rable, mais qu&#39;il est bon de raviver sans cesse jour apr&egrave;s jour, qu&#39;il est bon de tenir &agrave; l&#39;abri des vents, de prot&eacute;ger des temp&ecirc;tes du chagrin ou de la pluie des d&eacute;sespoirs. Une petite lumi&egrave;re qu&#39;il appartient &agrave; chacun de pr&eacute;server de la malveillance, des pens&eacute;es n&eacute;gatives, des poisons du ressentiment, de l&#39;inattention des habitudes. Le bonheur est une conqu&ecirc;te permanente sur la lassitude, les d&eacute;couragements ou les enfermements. Le bonheur est une toute petite flamme scintillant en plein jour, courageuse, pr&eacute;cieuse, magique et myst&eacute;rieuse au coeur de chacun. &quot; Jacques Salom&eacute;.</p>\r\n', 'pourquoi-est-il-si-difficile-d-etre-heureux', 599.99, 'pourquoi-est-il-si-difficile-d-etre-heureux_1621962686.jpg', '2021-05-16', 6),
(10, 6, 'Le Meurtre du Commandeur, livre 1 : Une idée apparaît B', '<p>Peut-&ecirc;tre un jour serais-je capable de faire le portrait du rien. De la m&ecirc;me fa&ccedil;on qu&#39;un peintre avait &eacute;t&eacute; capable de dessiner Le Meurtre du Commandeur . Mais il me faudrait du temps avant d&#39;y parvenir. Je devais faire du temps mon alli&eacute;...</p>\r\n', 'le-meurtre-du-commandeur-livre-1-une-idee-apparait-b', 599.99, 'le-meurtre-du-commandeur-livre-1-une-idee-apparait-b_1621962572.jpg', '2021-05-17', 1),
(11, 6, 'Le sang coule au Bardo', '<p>De 1696 &agrave; 1814, durant plus d&rsquo;un si&egrave;cle, le sang coula &agrave; flots au Bardo, si&egrave;ge du pouvoir beylical. Sur les huit souverains qui se succ&eacute;d&egrave;rent au cours de cette p&eacute;riode, cinq furent morts assassin&eacute;s, dont trois en seulement neuf ans. Un sixi&egrave;me mourut plus tard, dans des conditions myst&eacute;rieuses. Avec la mort des deux premiers souverains, la dynastie beylicale des Mouradites, vieille d&rsquo;un si&egrave;cle, fut d&eacute;chue par le commandant des Spahis, qui lui-m&ecirc;me fut assas - sin&eacute; trois ans plus tard, pr&egrave;s avoir cumul&eacute; entre ses mains les trois hautes charges de l&rsquo;Etat, celles de Bey, de Dey et de Pacha. Hussein Ben Ali El Tourki, fonda alors la seconde dynastie beylicale, celle qui porta son nom pendant deux si&egrave;cles et demi. Apr&egrave;s un long r&egrave;gne de trois d&eacute;cennies, il fut d&eacute;tr&ocirc;n&eacute;, puis assassin&eacute; par son neveu Ali Pacha et une guerre civile de plus de vingt ans &eacute;clata. Cette guerre fratricide prit fin au milieu du XVIII&egrave;me si&egrave;cle, avec la revanche posthume du p&egrave;re fondateur de la dynastie et l&rsquo;assassinat d&rsquo;Ali Pacha Bey, dans des conditions aussi cruelles qu&rsquo;humiliantes. Heureusement, une p&eacute;riode d&rsquo;un demi si&egrave;cle (1759-1814), de relative accalmie s&rsquo;ensuivit sous le r&egrave;gne de Sidi Ali II Bey et de son fils Sidi Hammouda Pacha Bey, qui, h&eacute;las mourut en 1814, dans des conditions myst&eacute;rieuses, non encore &eacute;lucid&eacute;es jusqu&rsquo;&agrave; nos jours. A la mort de cet illustre souverain, une guerre de succession &eacute;clata entre son cousin et son fr&egrave;re Othman, qui s&rsquo;acheva par l&rsquo;assassinat de ce dernier, juste six mois apr&egrave;s son intronisation. Depuis, plus aucun souverain ne fut assassin&eacute;, mais la dynastie entama sa chute vers l&rsquo;ab&icirc;me et ce furent les Grands Vizirs qui pay&egrave;rent la facture. Trois parmi eux se virent assassin&eacute;s par leurs ma&icirc;tres, dans des conditions atroces. Durant cette triste p&eacute;riode, le peuple tunisien connut tous les malheurs. Apr&egrave;s avoir subi les effets n&eacute;fastes des graves crises &eacute;conomiques successives, des famines meur- tri&egrave;res et les pand&eacute;mies ravageuses de tout genre, il endura un r&eacute;gime colonial asser- vissant pendant plus de quatre vingt ans. Depuis, le sang ne coula plus au Bardo, mais coulera ailleurs, pour lib&eacute;rer le pays du joug de la colonisation.&quot;</p>\r\n', 'le-sang-coule-au-bardo', 489.98, 'le-sang-coule-au-bardo_1621962612.jpg', '2021-05-17', 1),
(12, 2, 'Harry Potter, Tome 7 : Harry Potter et les Reliques de la Mort', '<p>Cette ann&eacute;e, Harry a dix-sept ans et ne retourne pas &agrave; Poudlard. Avec Ron et Hermione, il se consacre &agrave; la derni&egrave;re mission confi&eacute;e par Dumbledore. Mais le Seigneur des T&eacute;n&egrave;bres r&egrave;gne en ma&icirc;tre. Traqu&eacute;s, les trois fid&egrave;les amis sont contraints &agrave; la clandestinit&eacute;. D&#39;&eacute;preuves en r&eacute;v&eacute;lations, le courage, les choix et les sacrifices de Harry seront d&eacute;terminants dans la lutte contre les forces du Mal. Avec le d&eacute;nouement de l&#39;h&eacute;ro&iuml;que histoire de Harry Potter, J K Rowling signe un chef-d&#39;oeuvre d&#39;une grande humanit&eacute; et d&#39;une ma&icirc;trise incomparable.</p>\r\n', 'harry-potter-tome-7-harry-potter-et-les-reliques-de-la-mort', 749.99, 'harry-potter-tome-7-harry-potter-et-les-reliques-de-la-mort_1621962351.jpg', '2021-05-18', 3),
(13, 6, 'LES SIESTES DU GRAND-PÈRE', '<p>&laquo; La maison des grands-parents r&eacute;sonnait des musiques des f&ecirc;tes et du silence de l&rsquo;inceste. Lumineuse, joyeuse, emplie de musique et des cris de joie des enfants et des you you. Et sombre, effrayante, enfouie dans un &eacute;pais silence ; on y entrait par une grande porte vitr&eacute;e, prot&eacute;g&eacute;e de fer forg&eacute; noir, les barreaux de sa prison.&raquo;</p>\r\n\r\n<p>Dans ce r&eacute;cit, d&#39;une implacable justesse, la victime relate une enfance qui a toutes les apparences d&rsquo;un temps paisible, joyeux, sans souci. Pourtant, malmen&eacute;e par les caprices et l&#39;autorit&eacute; perverse d&#39;un parent faussement aimant, cette enfance a &eacute;t&eacute; vol&eacute;e, viol&eacute;e dans le plus grand secret. &Agrave; l&#39;&eacute;tage, &agrave; mi-ombre, &agrave; l&#39;heure de la sieste la pieuvre venait d&eacute;ployer ses tentacules et s&#39;emparer de la victime. Une image d&#39;effroi qui la poursuivra &agrave; jamais.</p>\r\n\r\n<p>Ce livre, entre r&eacute;alit&eacute; et fiction, vient t&eacute;moigner contre l&#39;oubli et le silence, parce qu&#39;il faut que le crime soit nomm&eacute;, parce qu&#39;il est ill&eacute;gitime de confisquer la m&eacute;moire de l&#39;autre, parce que les grandes blessures tues se referment mal et exigent d&#39;&ecirc;tre reconnues et soulag&eacute;es.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Monia Ben J&eacute;mia, grande figure des luttes f&eacute;ministes en Tunisie et du combat pour les libert&eacute;s, est professeure &agrave; la Facult&eacute; des sciences juridiques, politiques et sociales de Tunis, Universit&eacute; de Carthage.</em></p>\r\n\r\n<p><em>&nbsp;</em></p>\r\n\r\n<p><em>&nbsp;</em></p>\r\n\r\n<p>108 p.</p>\r\n\r\n<p>C&eacute;r&egrave;s, janvier 2021.</p>\r\n', 'les-siestes-du-grand-pere', 799.99, 'les-siestes-du-grand-pere_1621962636.jpg', '2021-05-19', 1),
(14, 4, 'L\'imbroglio Des Cultures', '<ul>\r\n	<li>\r\n	<p>C&rsquo;est en essayant d&rsquo;abonder dans cet esprit historien et humaniste commun des cultures, des civilisations et des religions entre Orient et Occident, et en cherchant &agrave; reconstruire un legs &agrave; repenser ensemble qu&rsquo;on est souvent d&eacute;&ccedil;u par certains intellectuels ou politiques dont la volont&eacute; est toute autre.<br />\r\n	Pourquoi donc un certain Occident intellectuel et politique s&rsquo;obstine-t-il &agrave; refuser &agrave; l&rsquo;Orient arabe et musulman, avec le r&egrave;gne de H&acirc;r&ucirc;n al-Rach&icirc;d (785-809), son m&eacute;rite d&rsquo;avoir &eacute;t&eacute; le point de d&eacute;part d&rsquo;un d&eacute;veloppement intellectuel intense et immense dans le monde de la pens&eacute;e aux IX&egrave;.-X&egrave;.s., dans des pays de grandes civilisations antiques, en Syrie ou en Perse ?<br />\r\n	Il y a m&ecirc;me lieu de trouver dans cette all&eacute;gation une gravissime injure &agrave; l&rsquo;esprit historien et aux nombreux mouvements de traduction scientifique antique grecque &agrave; Bagdad entre 750 et 950 et sa transmission &agrave; l&#39;Occident latin entre 1100 et 1300, que la pens&eacute;e, la culture arabes et musulmanes y soient ou pas.<br />\r\n	A chaque ouverture vers des cultures d&rsquo;horizon et d&rsquo;esprit diff&eacute;rents, il y a un enrichissement qui permet &agrave; l&rsquo;humanit&eacute; de se red&eacute;ployer, se r&eacute;&eacute;crire, se red&eacute;velopper, au-del&agrave; des r&eacute;ticences sectaires religieuses, politiques et id&eacute;ologiques &agrave; l&rsquo;encontre.<br />\r\n	C&rsquo;est par cet esprit philosophique, et plus largement scientifique, gr&eacute;co-arabe et autres confluences que les savoirs, connaissances et arts ont repris &agrave; leur compte les id&eacute;es antiques pour se les approprier d&rsquo;abord, et en faire, ensuite, une interpr&eacute;tation, un prolongement d&rsquo;une rare vivacit&eacute; intellectuelle et cr&eacute;ative.<br />\r\n	La pens&eacute;e grecque antique, et pas seulement, reprise, traduite, comment&eacute;e et r&eacute;introduite &agrave; l&rsquo;aune du IX&egrave;.s., non sans l&rsquo;imprimer de l&rsquo;intelligence des nouveaux &eacute;rudits, philosophes qui allaient devenir &agrave; leur tour les r&eacute;f&eacute;rences incontournables de la renaissance et des si&egrave;cles qui ont suivi.<br />\r\n	Ce devoir de m&eacute;moire et d&rsquo;autorit&eacute; des pens&eacute;es et des id&eacute;es, entre langues et cultures diverses, est ce que nous l&rsquo;avons suffisamment soutenu, encourag&eacute;, maintenu et d&eacute;fendu, &agrave; travers le temps ? Pas assez. C&rsquo;est ce qui nous revient d&rsquo;interroger et de situer aujourd&rsquo;hui pour y rem&eacute;dier sous l&rsquo;&eacute;clairage des lettres et des arts de l&rsquo;&eacute;poque.</p>\r\n	</li>\r\n</ul>\r\n', 'l-imbroglio-des-cultures', 899.99, 'l-imbroglio-des-cultures_1621962432.jpg', '2021-05-20', 13),
(16, 5, 'Penser l\'histoire Penser la religion', '<p>Ce Livre explore certains fondements du monde historique et de ses forces agissantes.</p>\r\n\r\n<p>Hichem Dja&Iuml;t analyse d&rsquo;abord la question du d&eacute;placement des hommes, des migrations et des conqu&ecirc;tes comme deux ressorts fondamentaux de la dynamique historique. Ensuite, il s&rsquo;attache &agrave; cerner les deux notions essentielles d&rsquo;occident et d&rsquo;orient &agrave; l&rsquo;&eacute;chelle mondiale.</p>\r\n\r\n<p>Dans une deuxi&egrave;me partie, c&rsquo;est la religion et le religieux qui tiennent la place centrale. L&rsquo;auteur traite des origines et de l&rsquo;&eacute;volution du christianisme, tout autant que de l&rsquo;&eacute;volution de l&rsquo;islam dans l&rsquo;histoire et dans la pens&eacute;e des th&eacute;ologiens et des philosophes.</p>\r\n\r\n<p>Les rapports entre pens&eacute;e philosophique et religion sont ici abord&eacute;s durant l&rsquo;&eacute;poque moderne, en occident pr&eacute;cis&eacute;ment car c&rsquo;est l&agrave; qu&rsquo;est apparu le processus in&eacute;dit de la critique de la religion qui &agrave; conduit &agrave; ce ph&eacute;nom&egrave;ne unique dans l&rsquo;histoire&nbsp;: &laquo;&nbsp;la sortie de la religion&nbsp;&raquo;. L&rsquo;auteur analyse de mani&egrave;re syst&eacute;matique et &eacute;volutive les lignes essentielles de la pens&eacute;e fondatrice de cette critique.</p>\r\n\r\n<p>Historien, Hichem Dja&Iuml;t s&rsquo;est toujours int&eacute;ress&eacute; &agrave; la philosophie sous tous ses aspects, notamment dans son lien &agrave; l&rsquo;histoire.</p>\r\n\r\n<p>Appartenant lui-m&ecirc;me &agrave; deux cultures pleinement assum&eacute;es, l&rsquo;islamique et l&rsquo;occidentale, il s&rsquo;est nourri des deux, y &eacute;lisant ses th&egrave;mes et exemples. Dans cet essai, l&rsquo;auteur &eacute;largit les perspectives et propose des id&eacute;es nouvelles, tout en poursuivant son dialogue avec les historiens et les philosophes.</p>\r\n', 'penser-l-histoire-penser-la-religion', 649.99, 'penser-l-histoire-penser-la-religion_1621962667.jpg', '2021-05-10', 2),
(17, 6, 'Bref séjour au Paradis', '<p>un s&eacute;isme gigantesque qui bouleverse la plan&egrave;te. un quinquag&eacute;naire amateur d&#39;intrigues polici&egrave;res qui entreprend d&#39;&eacute;lucider le meurtre de sa voisine.&nbsp;</p>\r\n', 'bref-sejour-au-paradis', 49.99, 'bref-sejour-au-paradis_1621962332.jpg', '2021-05-12', 1),
(18, 2, 'Charlie et la chocolaterie', '<p>&laquo;Moi, Willy Wonka, j&#39;ai d&eacute;cid&eacute; de permettre &agrave; cinq enfants de visiter ma chocolaterie cette ann&eacute;e. Ces cinq chanceux seront initi&eacute;s &agrave; tous mes secrets, &agrave; toute ma magie.&raquo;</p>\r\n\r\n<p>P&eacute;n&eacute;trer dans la fabuleuse chocolaterie de M. Wonka, le plus incroyable inventeur de confiserie de tous les temps, et d&eacute;couvrir avec d&eacute;lectation une grande rivi&egrave;re en chocolat, des bonbons inusables, des oreillers en p&acirc;te de guimauve... Un r&ecirc;ve gourmand que seuls les enfants poss&eacute;dant un ticket d&#39;or pourront s&#39;offrir.<br />\r\nL&#39;extraordinaire histoire de Charlie Bucket commence le jour o&ugrave; il gagne un des tickets pour visiter la myst&eacute;rieuse chocolaterie. Mais il est loin d&#39;imaginer les folles aventures qui l&#39;attendent&hellip;</p>\r\n', 'charlie-et-la-chocolaterie', 79.99, 'charlie-et-la-chocolaterie_1621962341.jpg', '2021-05-12', 2),
(19, 1, 'A découvert', '<p>Une petite amie qui dispara&icirc;t sans laisser de traces. Un p&egrave;re mort. Une m&egrave;re junkie. Un oncle d&eacute;tective un peu envahissant. Les nuits s&#39;annoncent blanches pour Mickey Bolitar. Et les petits drames du lyc&eacute;e semblent bien d&eacute;risoires &agrave; c&ocirc;t&eacute; du terrifiant complot qui se trame autour de lui...</p>\r\n', 'decouvert', 99.99, 'decouvert_1621962321.jpg', '2021-05-25', 1),
(20, 6, 'La ferme de Neshov', '<p>Apr&egrave;s l&#39;enterrement de leur m&egrave;re, les fr&egrave;res Neshov pensaient reprendre le cours de leur vie. Mais tout a chang&eacute; : Erlend est confront&eacute; au d&eacute;sir d&#39;enfant de son compagnon, Margido &agrave; sa solitude et Tor, l&#39;a&icirc;n&eacute;, vit mal son quotidien &agrave; la ferme, aupr&egrave;s du &quot; p&egrave;re &quot; ... A leur insu, le drame couve et pour chacun d&#39;eux, l&#39;heure des choix a sonn&eacute;. Tendresse, humour et coups de th&eacute;&acirc;tre : la saga familiale norv&eacute;gienne d&#39;Anne B.<br />\r\nRagde est un ph&eacute;nom&egrave;ne litt&eacute;raire incontournable au succ&egrave;s mondial. Traduit du norv&eacute;gien par Jean Renaud</p>\r\n', 'la-ferme-de-neshov', 339, 'la-ferme-de-neshov_1621962491.jpg', '2021-05-25', 1),
(27, 3, 'Le monde selon Guirec et Monique', '<p>Jeune Breton qui n&#39;a jamais connu d&#39;autre terrain de jeux que l&#39;oc&eacute;an, Guirec Soud&eacute;e &eacute;cume les mers du globe avec pour seule compagnie une poule, Monique. Ensemble, ils ont travers&eacute; l&#39;Atlantique, ralli&eacute; le Groenland, affront&eacute; 130 jours emprisonn&eacute;s au coeur de la banquise, franchi le p&eacute;rilleux passage du Nord-Ouest, mis les voiles pour le Grand Sud, essuy&eacute; des temp&ecirc;tes dans les plus extr&ecirc;mes latitudes, pass&eacute; le cap Horn, rejoint l&#39;Antarctique avant d&#39;amorcer un long retour jusqu&#39;en Bretagne.<br />\r\nL&#39;histoire incroyable d&#39;un gar&ccedil;on opini&acirc;tre, qui n&#39;attend pas que ses r&ecirc;ves se dessinent &agrave; l&#39;horizon, et d&#39;une poule, concentr&eacute; de fantaisie et de courage, qui offre un oeuf par jour &agrave; l&#39;aventurier.</p>\r\n', 'le-monde-selon-guirec-et-monique', 1599, 'le-monde-selon-guirec-et-monique_1621962594.jpg', '2021-05-09', 9),
(28, 2, 'L\'héritier des Draconis Tome 1', '<p>Ballott&eacute; d&#39;une famille d&#39;accueil &agrave; l&#39;autre depuis sa naissance, le jeune Elliott fait de son mieux pour dompter son temp&eacute;rament de feu. A quelques jours de son dixi&egrave;me anniversaire, une sph&egrave;re lumineuse tombe du ciel tout pr&egrave;s de chez lui. Accompagn&eacute; de ses amis Tamara et G&eacute;d&eacute;on, Elliott d&eacute;couvre qu&#39;il s&#39;agit d&#39;un passage vers un monde merveilleux, Draconia ! Les enfants y font la rencontre de Gullive un gentil g&eacute;ant.<br />\r\nCe qu&#39;il va le r&eacute;v&eacute;ler va changer la vie d&#39;Elliott &agrave; tout jamais...</p>\r\n', 'l-heritier-des-draconis-tome-1', 829, 'l-heritier-des-draconis-tome-1_1621871793.jpg', '0000-00-00', 0),
(29, 3, 'Quand le verre d\'eau déborde... - Comment surmonter les tragédies de la vie', '<p>Nul n&#39;&eacute;chappe aux trag&eacute;dies de la vie. Que ces &eacute;preuves soient universelles, comme la mort d&#39;un proche, ou plus personnelles, comme la maladie, la d&eacute;pression ou la s&eacute;paration, il est toujours possible de surmonter sa douleur, et Richard Carlson nous ouvre la voie de la gu&eacute;rison. Faire face, rebondir, retrouver un certain &eacute;quilibre : voil&agrave; ce qu&#39;il nous propose, avec chaleur, compassion et g&eacute;n&eacute;rosit&eacute;.</p>\r\n', 'quand-le-verre-d-eau-deborde-comment-surmonter-les-tragedies-de-la-vie', 889.99, 'quand-le-verre-d-eau-deborde-comment-surmonter-les-tragedies-de-la-vie_1621962701.jpg', '2021-05-16', 3);

-- --------------------------------------------------------

--
-- Structure de la table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2021-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2021-05-10');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$H3OrRyXRxGuKSokH1/tUc.ou6B0LXAgHTdT0NrG.GbE7agHhu92B.', 1, 'book', 'Shop', '', '', 'female3.jpg', 1, '', '', '2021-05-01'),
(2, 'mn@yahoo.com', '$2y$10$e0byItuwKW3sJK3pC/BccOcOpnWSafL2ZgCvZ8.61fC6UyZD4d5rK', 0, 'Mouna', 'moun', '', '', '', 1, '', '', '2021-05-24'),
(3, 'med@gmail.com', '$2y$10$joNH3sIP0gfSGjjqZhKXh.f9NB9pwpX/LcKQ/L2uKluqoIVzLp1Fa', 0, 'mohammed', 'med', '', '', '', 1, '', '', '2021-05-24'),
(4, 'mouna@gmail.com', '$2y$10$Ua8aek1RKJAxwkXn34Qbcu6gB3AX0oVUhEFdq49a3Dr/WGWvNbLje', 0, 'mouna', 'mmm', '', '', '', 1, '', '', '2021-05-24');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
