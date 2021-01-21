# Scrapper project


Aujourd'hui, tu vas automatiser la r�cup�ration massive de donn�es issus de sites internet (= tu vas scraper). Tes comp�tences en en Ruby et en HTML vont te permettre de r�cup�rer ces informations en moins d'une journ�e. Tu t'amuseras avec le cours des cryptomonnaies, tu iras r�cup�rer les e-mails des mairies de notre beau pays, puis tu chopperas la liste des e-mails des d�put�s de France. Tu ne te penses pas capable de tout �a ? Et bien tu vas voir que si.

Les standards habituels seront attendus : un dossier bien rang�, de beaux README et Gemfile, des tests qui v�rifient que tout fonctionne.

## 1 - Dark Trader


Lehman Brothers, impressionn�s par ton algorithme d'optimisation d'achat / vente, veut encore faire appel � toi. Leur Chief Digital Officer, tr�s hype, a entendu parler au JT de TF1 d'un "truc r�volutionnaire qui s'appelle le bloque-chienne". Il veut en acheter plein. Pour le conseiller, tu vas devoir r�cup�rer le cours de toutes les cryptomonnaies du march�.

En prenant pour source le site CoinMarketCap, fait un programme qui r�cup�re le cours de toutes les cryptomonnaies et les enregistre bien proprement dans un array de hashs. Ton array devra avoir le format suivant :

```
a = [
  { "BTC" => 5245.12 },
  { "ETH" => 217.34 },
  etc
]
```
Pour les tests, inspire-toi de la ressource plus haut. Il n'y a pas besoin de faire 36 000 tests, il faut juste arriver � tester 1) le fonctionnement de base de ton programme (pas d'erreur ni de retour vide) et 2) que ton programme sort bien un array coh�rent (v�rifier la pr�sence de 2-3 cryptomonnaies, v�rifier que l�array est de taille coh�rente, etc.).

Quelques petites aides pour ce premier exercice :

* Il est possible de faire le programme en n'allant que sur une seule URL. C'est un bon moyen pour faire un programme rapide car ne chargeant pas 2000 pages HTML.
* Tout se jouera sur la r�daction d'un XPath pertinent et pr�cis qui extrait *juste ce qu'il faut d'�l�ments HTML. Puis un bon traitement de ces �l�ments pour en extraire les 2 infos dont tu as besoin : le nom des crypto et leur cours.
* Un programme qui scrappe sans rien te dire, c'est non seulement nul mais en plus, tu ne sais pas s'il marche, s'il tourne en boucle ou s�il attend que ton wifi fonctionne. Mets des puts dans ton code pour que ton terminal affiche quelque chose � chaque fois qu'il a pu r�cup�rer une donn�e. Comme �a tu vois ton scrappeur qui fonctionne et avec des mots qui apparaissent tout seul sur ton terminal, tu vas donner l'impression que t'es un hacker. Styla�.
* Pense � bien nommer tes variables pour ne pas te perdre ! Par exemple, quand tu as un array, nomme-le crypto_name_array ou � minima mets son nom au pluriel crypto_nameS. Sinon tu vas oublier que c'est un array et tu vas tenter des .text dessus alors qu'il faut bosser avec un .each.
* Rappel: un hash s�initialise avec result = Hash.new et on y stocke des infos avec result['ta_key'] = 'ta_value'
* N'h�site pas � d�couper ton programme en plusieurs �tapes simples et dont le fonctionnement est facile � v�rifier. Par exemple : 1) Isoler les �l�ments HTML qui vont bien, 2) En extraire le texte et mettre �a dans un hash, 3) R�organiser ce hash dans un array de plusieurs mini-hash comme demand�.
* M�me si �a n'est pas le chemin le plus court, l'essentiel est que chaque petite �tape te fasse avancer et qu'� chaque fois tu te dises "ok, �tape 1), �a fonctionne nickel - pas de bug. Passons � la suite".

## 2 - Mairie christmas

Le CEO de Get-email Corp a besoin de tes services. Il voudrait toutes les adresses e-mail des mairies du Val d'Oise. Aucun souci pour toi. Va sur cet annuaire des mairies et r�cup�re les adresses e-mails des mairies du Val d'Oise. Comme pour l'exercice pr�c�dent, tu devras enregistrer les donn�es dans un array de hash suivant ce format :



```
a = [
  { "ville_1" => "email_1" },
  { "ville_2" => "email_2" },
  etc
]
```
D�composons le programme en 2 sous-probl�me simples:

* Tu dois �tre capable d'obtenir un e-mail de mairie � partir de la page de cette derni�re (pas en partant du listing complet des mairies).
* Fais d'abord une m�thode get_townhall_email(townhall_url) qui r�cup�re l�e-mail d'une mairie � partir de l'URL de mairies, par exemple celle de Avernes.
* Une fois que tu sais le faire pour une mairie, tu vas vouloir industrialiser et r�p�ter �a sur tout l'annuaire du Val d'Oise.
* La prochaine �tape est de coder une m�thode get_townhall_urls qui r�cup�re les URLs de chaque ville du Val d'Oise.
* Quand tu es assez s�r que chaque m�thode marche s�par�ment, tu as juste � imbriquer les deux et � toi la gloire.

Pour les tests, ce sera la m�me chose que pour l'exercice pr�c�dent mais appliqu� aux deux m�thodes : des tests de fonctionnement de base et des tests de coh�rence du r�sultat.


## 3 - Cher d�put�

Maintenant, fini de se faire m�cher le travail par tes gentils formateurs de THP. Tu dois r�cup�rer la liste compl�te des d�put�s de France ainsi que leurs adresses e-mail. Cherche par toi-m�me le site le plus ais� � scrapper et stocke les informations extraites dans une array de hashs selon ce format (un peu diff�rent des exercices pr�c�dents) :

```

a = [
  {
    "first_name" => "Jean",
    "last_name" => "Durant",
    "email" => "jean.durant@assembl�e.fr"
  },
  {
    "first_name" => "Martin",
    "last_name" => "Dupont",
    "email" => "martin.dupont@assembl�e.fr"
  },
  etc
]
```

Pour les tests, nous t'invitons � te poser et t'inspirer des tests pr�c�dents. Deux tests suffiront.

