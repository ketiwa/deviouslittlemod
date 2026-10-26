# Mod Changes vs Vanilla

## Country by Country

### Austria

- Heir given 3-3-3, no longer an elector.
- The electorate is given to Milan.
- Austria-Hungary formation now requires administrative tech 14 instead of 18.
- Ideas now use the Gecko Sunday set: ambition is +10% infantry combat ability (was +50% heir chance); Military Frontier gives +25% garrison growth and +15% defensiveness (was +15% garrison growth, -10% fort maintenance); Habsburg Dominance gives +20% manpower recovery speed (was +2 diplomatic reputation) and moves to the 3rd slot; Fugger Banking gives +10% inflation reduction only (was +5% and -50% interest) and moves to the 4th slot. Traditions, Imperial Ambition, Edict of Restitution, Austrian Court and Hofkriegsrat are unchanged.

### Brandenburg

- Mission for forest expansion, granted extra provinces.

### Castile

- Juan II starts with 3/3/3 skills instead of 1/1/2.

### Spain

- Traditions: +1 artillery fire replaced with +15% artillery combat ability. Land morale tradition unchanged at +15%.

### Denmark and Sweden

- Sweden starts with 10 galleys in Stockholm.
- Scandinavia formation now requires administrative tech 12 instead of 18.

### Hessen

- Mission for forest expansion, gained elector status, granted extra provinces.

### Italy

- Ideas: +20% defensiveness replaced with +5% discipline.

### Mali

- Starts with Feudalism.
- Mission gold and ivory modified.

### Milan

- Gained elector status, granted extra provinces.

### Morocco

- Starting vassals Tafilalt, Sous and Marrakesh were integrated into Morocco.
- Revolt not required for first mission.

### Naples

- Free of its starting personal union.
- Starts in the HRE

### Netherlands and the Lowlands

- Holland: granted an extra province.
- All lowlands are independent.
- Lowlands no longer in HRE.
- Holland and Brabant given Burgundian ideas.
- Dutch ideas: +15% fire damage (was +10%).

### Portugal

- Ruler skills increased from 3/2/2 to 5/3/4.
- Ideas: +20% tariffs replaced with +10% heavy ship power.
- Ideas: naval morale +10% -> +15%.
- Ideas: +10% trade goods size replaced with +1 colonist.

### Prussia

- All Prussian government forms no longer have the -50% governing capacity penalty.
- Ideas: -10% aggressive expansion replaced with -2 unrest.
- Ideas: +5% discipline replaced with +10% manpower recovery speed.

### South Germany

- New formable nation: South Germany (`SGE`).
- Formation decision (`form_south_germany`): at peace, administrative tech 12, own and core Bern (165), Straßburg (75), Wien (134), Prague (266) and Rothenburg (4715), plus 30 owned provinces in the South German region. Swaps to the South German ideas and grants 25 prestige.
- Traditions: +1 legitimacy, +1 devotion, +0.3 republican tradition, +1 meritocracy, +1 horde unity, +15% infantry power. Ambition: +15% land morale.
- Ideas: +33% manpower in primary culture group provinces and +33% manpower recovery speed; -10% technology cost; +5% discipline; +10% trade efficiency; +0.5 yearly army tradition; +10% administrative efficiency; +20% goods produced and -5% development cost.
- Starting history: monarchy with the feudal monarchy reform, kingdom rank, Austrian culture, Catholic, Western tech, capital Wien (134).
- Added the `SGE` tag, flag, ideas, history, decision and localisation files.

### Switzerland

- Mission for forest expansion, gained elector status, granted extra provinces.

### Westphalia

- Ideas: +1 diplomat replaced with +5% discipline.
- Ideas: -10% fire damage received, instead of +1 tolerance of heretics


## General Changes

### Map

- Added a strait between Trapani (4736) and Tunis (341) across the Cape Bon sea province (1302).
- Added a strait between Nyland (28) and Estland (36) across the Gulf of Finland sea province (1254).


### Ages

- Replaced the age view layout with the one from the Gecko Sunday Fork mod (interface/ages_view.gui) plus its two scripted buttons.
- Added an ages menu option to spend 500 splendor for 50 government reform progress.
- Added the Economic Golden Age option: 100 adm/dip/mil power and 200 splendor for the `urbanisation` modifier (50 years, -10% all power cost, +10% goods produced). Usable once per game; the regular (engine) Golden Age button is still there.


### Government Reforms

- Swapping an already chosen government reform costs 10 reform progress (vanilla 50).


### Estates

- The burghers' Fugger Family Privileges are disabled (never offered).


### Prestige, Power Projection and Governing Capacity

- Prestige now gives at most ±5% land morale at ±100 prestige (was ±10%).
- Power projection uses the Gecko Sunday set: keeps +20% trade power, +0.5 prestige/legitimacy/devotion/horde unity/meritocracy and +0.2 republican tradition, but loses the +10% defensiveness, +10% land and naval morale, and the divine authority / authority power effects. The 25 PP free leader is unchanged.
- Being under governing capacity now gives up to −10% development cost (scales with unused capacity). The over-capacity penalties are untouched.


### HRE Mechanics

- No free cities exist.
- HRE Reforms rebalanced.
- Increased IA growth, requires 60 IA per reform.
- Emp gets manpower through reforms not per memberstate in hre.
- All italy added to hre.


### Ideas

- Basic ideas: Exploration, Expansion, and Naval, Mercenary idea group removed.
- Basic ideas: Divine added for all christan nations.
- Basic ideas: Quantity bonus land force limit +33% -> +50%.

### Policies and State Edicts

- Defensive-Economic policy (Public Welfare Act): development cost in primary culture reduced from -10% to -7.5%; stability cost -25% removed; +7.5% land morale added.
- Offensive-Infrastructure now offers two policies instead of Mobile Siege Engines Act: Shock and Awe (+20% artillery shock) and Burn the Villages (+15% artillery fire). They are mutually exclusive - only one can be active at a time.
- Religious-Divine policy (Wielders of the Flaming Sword): +10% land morale removed; -10% development cost in primary culture added.
- Added prosperity edict added, dev edict auto applied to all provinces.

### Institutions and Naval Doctrines

- Woodenwall now gives naval maintenance reduction and naval force limit instead of a coastal combat bonus.
- Renaissance bonus gives +100 governing capacity instead of -5% development cost / -5% build cost (Gecko Sunday values).
- Printing Press bonus gives -10% stability cost (was -5%) and +0.1 all-estate loyalty equilibrium (Gecko Sunday values).

### Bankruptcy

- Bankruptcy morale penalty reduced from -50% to -25% (land and naval). Other bankruptcy penalties unchanged.

### Disasters

- The Dutch Revolt disaster (`dutch_revolt_disaster`) is removed: it can never become possible or start, and any running instance ends on the next monthly tick. Its events, modifiers and the Dutch Revolt HRE incident are therefore unreachable.
- Infantes of Aragon: siding with the king (`flavor_spa.18` option a) no longer costs 1 stability.
- Infantes of Aragon: the disaster can now be ended without first meeting the `stability = 0` requirement, so it ends as soon as the rebels are beaten and the royalist/Infantes flag is set.
- Castilian Civil War: the `stability = 1` requirement is removed from `can_end`, so it now ends once the `civil_war_in_castile` flag is set, no province is rebel-controlled and no pretender rebels are left.

### Trade and Subjects

- Eyalet subject type now uses a diplomatic slot.
- Eyalets now join their overlord's wars.
- Trade companies removed.
- Downstream trade power nuked.
- Trade node changes for balance and war reasons.

### On Actions

- Burgundian Inheritance removed.
- Added on-actions for the Dev Cost Edict and the Development Counter.

### Defines

- Abdicating a ruler costs 25 prestige instead of 50.
- Breaking a royal marriage no longer costs stability.
- Breaking a vassal no longer costs prestige.
- Declining a call to arms no longer costs prestige.
- Losing a core no longer costs prestige.
- Disinheriting an heir costs 25 prestige instead of 50.
- Policies can be changed after 0.1 years instead of 10.
- National focus can be changed every 5 years instead of 25.
- Government rank no longer reduces the national focus cooldown.
- New heirs lose 25 legitimacy instead of 20.
- New heirs lose 25 prestige instead of 20.
- Promoting mercantilism costs 75 monarch power instead of 100.
- Replacing a rival is free instead of 100 diplomatic power.
- New rulers and heirs roll at least 2 in every skill.
- Annul treaties peace deals last 20 years instead of 10.
- Alliances can be formed at -200 relations instead of -25.
- Unconditional surrender can begin after 1 month instead of 12.
- Multiplayer slows down when the slowest player is 90 days behind instead of 10.
- Multiplayer pauses when the slowest player is 90 days behind instead of 25.
- Assaulting a fort costs 0 military power instead of 5.
- Fortress cost multiplier reduced from 0.5 to 0.25.
- Garrison size increased from 1,000 to 3,000.
- Sieges require 0.334 times the garrison instead of 3 times.
- Maximum fort breaches reduced from 3 to 1.
- Siege bonus from food shortages reduced from 2 to 1.
- Siege bonus from water shortages reduced from 3 to 1.
- Siege bonus from defenders deserting reduced from 2 to 1.
- Downstream trade power propagation reduced by changing the divider from 5 to 20.
- Trade steering added value reduced from 5% to 1%.
- Default wargoal ticking warscore doubled from 0.4 to 0.8.
- Supply limit base multiplier increased from 6 to 10.
- Maximum wargoal warscore bonus increased from 25 to 50.
- Maximum warscore from battles increased from 40 to 50.
- Cannons no longer retreat from battles (back-row morale damage taken set to 0).
- Piety manpower bonus reduced from 2.0 to 1.5.
- HRE: imperial authority per prince 0.07 (vanilla 0.075); prince authority threshold 10 (25); heretic penalty 0 (was -0.01); foreign control penalty -0.006 (was -0.005); imperial city authority 0.01 (0.005).
- HRE: imperial reform cost 60 (was 50); imperial reform authority acceptance 3 (was 1).
- Free city cap set to 0 (was 12), which disables the Grant Free City Status imperial action.
- Free cities may have up to 8 provinces (vanilla 1).
bro- AI peace behaviour: AI considers peace after 12 months of war (vanilla 60), no longer weighs relative strength when deciding to peace (`PEACE_FORCE_BALANCE_FACTOR` 0), wargoal 0.5, capital 20, ally warscore/wargoal/capital multipliers 1/2/1, and ignores calls for peace.

### Technology

- Diplo tech 7 colonial range increased from +115 to +215, making the cumulative total 375 instead of 275.
- Institutions no longer increase technology cost. All `expects_institution` penalties were stripped from the admin, diplo and military technology files, which are now overridden wholesale (`common/technologies/adm.txt`, `dip.txt`, `mil.txt`).

### The Vatican

- Added province 4942 "Vatican" (RGB 168/127/175) as a 12-pixel enclave inside Roma, ported from Gecko Sunday Fork (which uses ID 6415; renumbered to vanilla's next free ID so `max_provinces` stays contiguous). 2/2/2 development, paper, Umbrian/Catholic, outside the HRE. Tiles sits at x 2992–2994 / y 678–681, two pixels clear of the neighbouring province.
- New area `vatican_area` ("The Holy See") in the Italy region; province is in the Genoa trade node and `europe`.
- The Papal State owns the Vatican and its capital is moved there (`capital`/`fixed_capital` = 4942 in `history/countries/PAP - Papal.txt`).
- Rome (118) is now held by **Perugia (PGA)**, which keeps its capital in Perugia while the Pope sits in the Vatican. Perugia gains a core on Rome.
- Papal cores: the Pope keeps a core **only on the Vatican (4942)**, so the Papal State can be restored if annexed. There are no Papal cores on Rome or on the provinces the mod overrides (Umbria, Urbino, Bologna) and the historical `add_core = PAP` entries were stripped.
- The `catholic_rome` modifier is no longer applied to Rome (both the −10 papal influence and −1 diplomatic reputation are gone); `the_holy_see` province modifier removed as well. Only the vanilla `religious_center` and `non_catholic_rome` modifiers remain on the two provinces.
- The mod now overrides `provinces.bmp`, `definition.csv`, `default.map` (`max_provinces = 4943`), `area.txt`, `region.txt`, `continent.txt` and `positions.txt`; `4942` was added to the Genoa trade node.

### Decisions

- Added a decision to recruit colonists.
- Added a second colonist decision ("Recruit Additional Colonists"): requires administrative tech 7 and 1000 ducats, grants another permanent +1 colonist.
- Added a decision to count development clicks.
- Added decisions to enable and disable player gift notifications.
- Added a decision to grant parliament seats.
- Added a decision to set global state edicts.


### Great Projects

- Baku Ateshgah great project (Shirvan, 421): usable by every religion. Discipline and fire damage removed. Tier 1: -5% culture conversion cost, -5% fire damage received. Tier 2: -10% culture conversion cost, -5% fire damage received, +5% goods produced (province). Tier 3: -20% culture conversion cost, -10% fire damage received, +10% goods produced (province).

### Events

- Hungarian always choses austrian heir.
- Moldavian always choses poland.
- The Rugs of Persia (`flavor_per.19`, fired by the Persia mission `per_the_persian_rug`) now only has option c (2 years of production income in the Persia region, +2 mercantilism, silk +0.2 / cloth +0.1 / dyes +0.1 for 40 years). The monopolize and flood the market options are removed.

### Mod Framework

- The mod now ships full copies of the vanilla country definition files (`common/countries`, all 979 vanilla files plus South Germany) and the full country tag list (`common/country_tags/00_countries.txt`), so those files are replaced wholesale instead of merged. Framework preparation for the Gecko Sunday Fork style of editing.