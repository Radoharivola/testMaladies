create table maladie(
    id serial primary key,
    nom varchar(255) not null
);
create table effetSecondaire(
    id serial primary key,
    nom varchar(255) not null
);
create table forme(
    id serial primary key,
    nom varchar(255) not null
);
create table sousforme(
    id serial primary key,
    nom varchar(25) not null,
    idForme int not null,
    foreign key(idForme) references forme(id)
);
create table contreIndication(
    id serial primary key,
    nom varchar(255) not null
);
create table laboratoire(
    id serial primary key,
    nom varchar(255) not null,
    adresse varchar(255) not null
);
create table medicament(
    id serial primary key,
    nom varchar(25) not null,
    idLaboratoire int not null,
    idForme int not null,
    idSouforme int,
    ageMin int not null,
    ageMax int not null,
    foreign key(idForme) references forme(id),
    foreign key(idLaboratoire) references laboratoire(id),
    foreign key(idSouforme) references sousforme(id)
);


create table maladieMed(
    idMed int not null,
    idMaladie int not null,
    foreign key(idMed) references medicament(id),
    foreign key(idMaladie) references maladie(id)
);
create table effetMed(
    idMed int not null,
    idEffet int not null,
    foreign key(idMed) references medicament(id),
    foreign key(idEffet) references effetSecondaire(id)
);
create table contreIndicationMed(
    idMed int not null,
    idContreIndication int not null,
    foreign key(idMed) references medicament(id),
    foreign key(idContreIndication) references contreIndication(id)
);


    insert into maladie(nom) values('Diabetes melltus type 2');
    insert into maladie(nom) values('Anemia');
    insert into maladie(nom) values('Thrombocytopenia');
    insert into maladie(nom) values('Gonococcal cervicitis');
    insert into maladie(nom) values('Prostate cancer');
    insert into maladie(nom) values('Prostatitis');
    insert into maladie(nom) values('Gonococcal urethritis');
    insert into maladie(nom) values('COVID-19 virus identified');
    insert into maladie(nom) values('Ulcerative colitis');
    insert into maladie(nom) values('Ulcerative colitis exacerbation');
    insert into maladie(nom) values('Contact with and (suspected) exposure to COVID-19');
    insert into maladie(nom) values('Community acquired pneumonia (CAP)');
    insert into maladie(nom) values('Coronavirus disease 2019 (Covid-19) mostly upper respiratory tract infection with, or without bronchitis, but without significant pneumonia');
    insert into maladie(nom) values('Coronavirus disease 2019 (covid-19) with pneumonia');
    insert into maladie(nom) values('Common cold or viral upper respiratory tract infection (URTI)');
    insert into maladie(nom) values('Acute pancreatitis triggered by alcohol');
    insert into maladie(nom) values('Idiopathic acute pancreatitis');
    insert into maladie(nom) values('Cluster headaches');
    insert into maladie(nom) values('Uncontrolled hypertension.');
    insert into maladie(nom) values('Diabetic ketoacidosis');
    insert into maladie(nom) values('Fusobacterium necrophorum pharyngitis complicated with Lemierre syndrome');
    insert into maladie(nom) values('Primary systemic arterial hypertension');
    insert into maladie(nom) values('History of systemic hypertension');
    insert into maladie(nom) values('Acute pancreatitis due to hyperglyceridemia');
    insert into maladie(nom) values('Acute pancreatitis due to gallstones');
    insert into maladie(nom) values('Acute pancreatitis due to HIV');
    insert into maladie(nom) values('Hypertensive emergency');
    insert into maladie(nom) values('Acute pancreatitis due to pancreatic cancer');
    insert into maladie(nom) values('Arterial hypertension (chronic) secondary to obesity');
    insert into maladie(nom) values('Headache after use of nitroglycerin or nitrates.');
    insert into maladie(nom) values('Coronary artery disease, stable angina (CAD)');
    insert into maladie(nom) values('Unstable angina (CAD)');
    insert into maladie(nom) values('Headache due to uncontrolled hypertension.');
    insert into maladie(nom) values('Hypertensive urgency');
    insert into maladie(nom) values('Headache due to caffeine withdrawal');
    insert into maladie(nom) values('Acute pancreatitis due to medications');
    insert into maladie(nom) values('Acute pancreatitis due to hypercalcemia');
    insert into maladie(nom) values('Arterial hypertension (chronic) secondary to chronic kidney disease');
    insert into maladie(nom) values('Tension headaches');
    insert into maladie(nom) values('Acute pancreatitis due to sphincter of Oddi dysfunction');
    insert into maladie(nom) values('Acute pancreatitis due to recent endoscopic retrograde cholangiopancreatography (ERCP)');
    insert into maladie(nom) values('Gastritis related upper GI bleeding ');
    insert into maladie(nom) values('Migraine headaches');
    insert into maladie(nom) values('Fusobacterium necrophorum pharyngitis');
    insert into maladie(nom) values('Leukopenia (leukocytopenia)');
    insert into maladie(nom) values('Acute bronchitis');
    insert into maladie(nom) values('Influenza');
    insert into maladie(nom) values('Thoracic aortic dissection');
    insert into maladie(nom) values('Peritonitis');
    insert into maladie(nom) values('Variceal (esophagus) bleeding');
    insert into maladie(nom) values('Chronic pancreatitis');
    insert into maladie(nom) values('Secondary arterial hypertension (chronic)');
    insert into maladie(nom) values('Acute pneumothorax');
    insert into maladie(nom) values('Crohns disease exacerbation');
    insert into maladie(nom) values('Acute tracheobronchitis');
    insert into maladie(nom) values('Ureterolithiasis (ureteral stones)');
    insert into maladie(nom) values('Pericarditis');
    insert into maladie(nom) values('Viral pharyngitis (etiology usually rhinovirus, coronavirus, adenovirus, parainfluenza)');
    insert into maladie(nom) values('Allergic rhinitis to pollen');
    insert into maladie(nom) values('Allergic rhinitis to dust mites');
    insert into maladie(nom) values('Streptococcal pharyngitis');
    insert into maladie(nom) values('Acute left ventricle heart failure');
    insert into maladie(nom) values('Gastroesophageal reflux without esophagitis');
    insert into maladie(nom) values('Secondary arterial hypertension secondary to renal artery stenosis secondary to atherosclerosis');
    insert into maladie(nom) values('Esophageal spasm');
    insert into maladie(nom) values('Arterial hypertension (chronic) secondary to hyperaldosteronism');
    insert into maladie(nom) values('Gastroesophageal reflux with esophagitis without bleed');
    insert into maladie(nom) values('Chronic sinusitis');
    insert into maladie(nom) values('Chronic kidney disease stages (III, IV and V)');
    insert into maladie(nom) values('Chronic kidney disease');
    insert into maladie(nom) values('Acute right ventricle heart failure');
    insert into maladie(nom) values('Pleural effusion');
    insert into maladie(nom) values('Perirectal fissure');
    insert into maladie(nom) values('Acute sinusitis');
    insert into maladie(nom) values('Gastroesophageal reflux with esophagitis with bleed');
    insert into maladie(nom) values('Acute laryngitis');
    insert into maladie(nom) values('Respiratory acidosis');
    insert into maladie(nom) values('Anemia from acute blood loss');
    insert into maladie(nom) values('Obesity hypoventilation syndrome');
    insert into maladie(nom) values('BRCA1/2 (breast or ovarian gene carier) status');
    insert into maladie(nom) values('Pulmonary embolus');
    insert into maladie(nom) values('Past history of pulmonary embolus');
    insert into maladie(nom) values('Past history of deep vein thrombosis');
    insert into maladie(nom) values('Past history of congestive heart failure (CHF)');
    insert into maladie(nom) values('Past history of coronary artery disease (CAD)');
    insert into maladie(nom) values('Past history of atrial fibrillation (Afib) or atrial flutter (Aflut)');
    insert into maladie(nom) values('Past history of cebrovascular accident (CVA)');
    insert into maladie(nom) values('Gastroenteritis likely viral');
    insert into maladie(nom) values('Transaminitis');
    insert into maladie(nom) values('Arterial hypertension (chronic) secondary to OSA');
    insert into maladie(nom) values('Past medical history of diabetes melltus type 1 per history');
    insert into maladie(nom) values('Diabetic Nephropathy');
    insert into maladie(nom) values('!!!');
    insert into maladie(nom) values('Perforated peptic or duodenal ulcer');
    insert into maladie(nom) values('Septic shock');
    insert into maladie(nom) values('Shock');
    insert into maladie(nom) values('Shock liver');
    insert into maladie(nom) values('Hypertensive nephropathy');
    insert into maladie(nom) values('Anaphylactic shock');
    insert into maladie(nom) values('Healthcare-associated pneumonia (HCAP)');
    insert into maladie(nom) values('Superficial vein thrombosis (SVT) of lower extremities');
    insert into maladie(nom) values('Deep vein thrombosis (DVT)');
    insert into maladie(nom) values('COPD exacerbation');
    insert into maladie(nom) values('Cough caused by ACE (angiotensin converting enzyme) inhibitor, or ARB (angiotensin receptor blocker)');
    insert into maladie(nom) values('Asthma exacerbation without acute respiratory failure');
    insert into maladie(nom) values('Atopic dermatitis');
    insert into maladie(nom) values('Bowel obstruction');
    insert into maladie(nom) values('Asthma exacerbation with acute respiratory failure');
    insert into maladie(nom) values('Obstructive sleep apnea');
    insert into maladie(nom) values('Pulmonary tuberculosis');
    insert into maladie(nom) values('Acute nontuberculous mycobacterial lung infection');
    insert into maladie(nom) values('Lung abscess');
    insert into maladie(nom) values('Empyema');
    insert into maladie(nom) values('Otitis media');
    insert into maladie(nom) values('Otitis externa');
    insert into maladie(nom) values('Acute eye emergency');
    insert into maladie(nom) values('Anxiety');
    insert into maladie(nom) values('Acute aortic stenosis (AS)');
    insert into maladie(nom) values('Uncontrolled diabetes');
    insert into maladie(nom) values('Acute aortic regurgitation (AR or AI)');
    insert into maladie(nom) values('Acute mitral regurgitation (MR)');
    insert into maladie(nom) values('Pulmonary regurgitation (PR)');
    insert into maladie(nom) values('Acute thyroid goiter airway obstruction');
    insert into maladie(nom) values('Myocardial infarction');
    insert into maladie(nom) values('Diabetic hyperosmolar hyperglycemic state');
    insert into maladie(nom) values('Acute coronary syndrome');
    insert into maladie(nom) values('Acute ventricular septal (rupture) defect');
    insert into maladie(nom) values('Costochondritis or otherwise musculoskeletal chest pain');
    insert into maladie(nom) values('Spinal facet joints related chest pain');
    insert into maladie(nom) values('Thoracic spine fracture related chest pain');
    insert into maladie(nom) values('Spinal discopathy related chest pain');
    insert into maladie(nom) values('Pleuritis');
    insert into maladie(nom) values('Atelectasis');
    insert into maladie(nom) values('Lobar obstruction');
    insert into maladie(nom) values('Patient seems free from acute respiratory issues');
    insert into maladie(nom) values('Patient seems free from acute issues');
    insert into maladie(nom) values('Ovarian torsion');
    insert into maladie(nom) values('Missed abortion');
    insert into maladie(nom) values('Risk of death within 24 hours');
    insert into maladie(nom) values('Testicular torsion');
    insert into maladie(nom) values('Hemorrhoids - acute thrombosis or infection');
    insert into maladie(nom) values('Bleeding peptic or duodenal ulcer');
    insert into maladie(nom) values('Peptic ulcer disease');
    insert into maladie(nom) values('Helicobacter pylory infection');
    insert into maladie(nom) values('Gastroenteritis likely bacterial (i.e. Shigella)');
    insert into maladie(nom) values('Portal vein thrombosis');
    insert into maladie(nom) values('Budd-Chiari syndrome');
    insert into maladie(nom) values('Diabetes melltus type 1');
    insert into maladie(nom) values('Hyperglyceridemia');
    insert into maladie(nom) values('Pancreatic cancer');
    insert into maladie(nom) values('Acute cholecystitis');
    insert into maladie(nom) values('Gout flair');
    insert into maladie(nom) values('Trauma to the toe');
    insert into maladie(nom) values('Gout flair related to diuretic use');
    insert into maladie(nom) values('Esophageal rupture (rupture)');
    insert into maladie(nom) values('Bowel ischaemia');
    insert into maladie(nom) values('Clostridium difficile colitis');
    insert into maladie(nom) values('Sepsis');
    insert into maladie(nom) values('Past medical history of diabetes melltus type 2 per history (chronic)');
    insert into maladie(nom) values('Suicidal or purposeful overdose');
    insert into maladie(nom) values('Beer potomania');
    insert into maladie(nom) values('Hyponatremia acute');
    insert into maladie(nom) values('Hyponatremia SIADH');
    insert into maladie(nom) values('Hyperkalemia');
    insert into maladie(nom) values('Hypercalcemia');
    insert into maladie(nom) values('Hyperparathyroidism');
    insert into maladie(nom) values('Bacgterial meningitis');
    insert into maladie(nom) values('Encephalitis');
    insert into maladie(nom) values('Hypercapnic coma');
    insert into maladie(nom) values('Serotoninergic syndrome');
    insert into maladie(nom) values('Opiates overdose');
    insert into maladie(nom) values('Tricyclic antidepressant overdose (TCA) overdose');
    insert into maladie(nom) values('Starvation ketoacidosis');
    insert into maladie(nom) values('Starvation');
    insert into maladie(nom) values('Metabolic acidosis with elevated anion gap');
    insert into maladie(nom) values('Metabolic acidosis without elevated anion gap');
    insert into maladie(nom) values('Lactic acidosis');
    insert into maladie(nom) values('Hypoglycemia');
    insert into maladie(nom) values('Hypothyroidism severe (myxedema coma or crisis)');
    insert into maladie(nom) values('Hyperthyroidism acute (hyperthyroid crisis or thyrotoxic storm)');
    insert into maladie(nom) values('Gastroparesis');
    insert into maladie(nom) values('Secondary arterial hypertension secondary to renal artery stenosis, secondary to fibromuscular dysplasia');
    insert into maladie(nom) values('Acute renal failure');
    insert into maladie(nom) values('UTI');
    insert into maladie(nom) values('Membranous nephropathy');
    insert into maladie(nom) values('Pelvic inflammatory disease');
    insert into maladie(nom) values('Ectopic pregnancy');
    insert into maladie(nom) values('Past history of pregnancy');
    insert into maladie(nom) values('Past history of spontaneous abortion');
    insert into maladie(nom) values('Neutropenia');
    insert into maladie(nom) values('Neutropenic fever');
    insert into maladie(nom) values('Morning sickness (pregnancy)');
    insert into maladie(nom) values('Other acute diagnoses');
    insert into maladie(nom) values('Acute bacterial endocarditis');
    insert into maladie(nom) values('Tricuspid valve bacterial endocarditis');
    insert into maladie(nom) values('Metastatic abscesses from endocarditis');
    insert into maladie(nom) values('Acute pleurisy');
    insert into maladie(nom) values('Acute hemopneumothorax');
    insert into maladie(nom) values('Acute hemothorax');
    insert into maladie(nom) values('Sciatica (radicular low back pain)');
    insert into maladie(nom) values('Mechanical low back pain (muscle strain)');
    insert into maladie(nom) values('Cystitis (urinary tract infection)');
    insert into maladie(nom) values('Pyelonephritis');
    insert into maladie(nom) values('Suicide attempt');
    insert into maladie(nom) values('Acetaminophen overdose');
    insert into maladie(nom) values('Ethylene glycol poisoning');
    insert into maladie(nom) values('Patient in immediate life-threatening condition');
    insert into maladie(nom) values('Cryptococcus neoformans meningoencephalitis');
    insert into maladie(nom) values('Fungal meningitis');
    insert into maladie(nom) values('HSV-1 encephalitis');
    insert into maladie(nom) values('Intracranial (i.e. brain) primary neoplasm or metastatic disease to the brain');
    insert into maladie(nom) values('Intracranial hemorrhage.');
    insert into maladie(nom) values('Brain contusion');
    insert into maladie(nom) values('Lower spine vertebral or lower spinal tumor');
    insert into maladie(nom) values('Subarachnoid hemorrhage (SAH)');
    insert into maladie(nom) values('Ischemic cerebrovascular accident (CVA)');
    insert into maladie(nom) values('Lambert-Eaton Myasthenic Syndrome (LEMS)');
    insert into maladie(nom) values('Myasthenia gravis');
    insert into maladie(nom) values('Benzodiazepines overdose');
    insert into maladie(nom) values('Stomach cancer');
    insert into maladie(nom) values('Mechanical small bowel obstruction');
    insert into maladie(nom) values('Adynamic (paralytic) ileus');
    insert into maladie(nom) values('Large bowel obstruction');
    insert into maladie(nom) values('Small bowel obstruction');
    insert into maladie(nom) values('Acute mesenteric ischemia');
    insert into maladie(nom) values('Chronic mesenteric ischemia (intestinal angina)');
    insert into maladie(nom) values('Arterial embolism (embolization) caused lower extremity ischemia');
    insert into maladie(nom) values('Atherosclerotic lower extremities ischemia.');
    insert into maladie(nom) values('Acute ischemic colitis');
    insert into maladie(nom) values('Acute diverticulitis');
    insert into maladie(nom) values('Diabetes mellitus related kidney disease');
    insert into maladie(nom) values('Acute appendicitis');
    insert into maladie(nom) values('Chlamydia Trachomatis urethritis');
    insert into maladie(nom) values('Chlamydia Trachomatis cervicitis');
    insert into maladie(nom) values('Urethritis');
    insert into maladie(nom) values('Bacterial vaginosis');
    insert into maladie(nom) values('Candidal vaginitis');
    insert into maladie(nom) values('Trichomonas vaginitis');
    insert into maladie(nom) values('Atrophic vaginitis');
    insert into maladie(nom) values('Urinary retention');
    insert into maladie(nom) values('Acute orchitis');
    insert into maladie(nom) values('Menstrual pain');
    insert into maladie(nom) values('Menstruation');
    insert into maladie(nom) values('Acute aspiration');
    insert into maladie(nom) values('Atrial fibrillation with rapid ventricular response (Afib with RVR)');
    insert into maladie(nom) values('Atrial fibrillation episode (Afib)');
    insert into maladie(nom) values('Fever of unknown origin (FUO)');
    insert into maladie(nom) values('Pulmonary edema.');
    insert into maladie(nom) values('Choledocholithiasis');
    insert into maladie(nom) values('Anticholinergics overdose');
    insert into maladie(nom) values('Ethanol overdose');
    insert into maladie(nom) values('Pulmonary hypertension (PulmHTN)');
    insert into maladie(nom) values('Clonidine overdose');
    insert into maladie(nom) values('Acute respiratory distress syndrome (ARDS)');
    insert into maladie(nom) values('Hypersensitivity pneumonitis (HP)');
    insert into maladie(nom) values('Hypoxic respiratory failure');
    insert into maladie(nom) values('Hypercapnic respiratory failure');
    insert into maladie(nom) values('Angina cause by pulmonary artery aneurysm causing left main coronary');
    insert into maladie(nom) values('Pulmonary artery aneurysm');
    insert into maladie(nom) values('Angina caused by low cardiac output');
    insert into maladie(nom) values('Low (cardiac) output syndrome');
    insert into maladie(nom) values('Angina caused by aortic stenosis');
    insert into maladie(nom) values('Demand myocardial ischaemia');
    insert into maladie(nom) values('Graves hyperthyroidism');
    insert into maladie(nom) values('Painless thyroiditis');
    insert into maladie(nom) values('Non-ST-elevation myocardial infarction (NSTEMI)');
    insert into maladie(nom) values('Myocarditis');
    insert into maladie(nom) values('ST-elevation myocardial infarction (STEMI)');
    insert into maladie(nom) values('Delirium');
    insert into maladie(nom) values('Gastritis');
    insert into maladie(nom) values('Acute upper gastrointestinal tract bleeding');
    insert into maladie(nom) values('Acute lower gastrointestinal tract bleeding');
    insert into maladie(nom) values('Hemorrhagic shock from gastrointestinal bleeding');
    insert into maladie(nom) values('Metastatic diseases to the liver or primary neoplasm of the liver');
    insert into maladie(nom) values('Anaphylaxis');
    insert into maladie(nom) values('Seasonal (pollen) allergies');
    insert into maladie(nom) values('Hepatic encephalopathy');
    insert into maladie(nom) values('Chronic obstructive pulmonary disease without current exacerbation.');
    insert into maladie(nom) values('Chronic asthma');
    insert into maladie(nom) values('Churg-Strauss syndrome');
    insert into maladie(nom) values('Chronic left ventricle heart failure (LVHF)');
    insert into maladie(nom) values('Hypertrophic cardiomyopathy');
    insert into maladie(nom) values('Dilated cardiomyopathy');
    insert into maladie(nom) values('Chronic tricuspid regurgitation (TR)');
    insert into maladie(nom) values('Hydronephrosis.');
    insert into maladie(nom) values('Pancreatic insulinoma');
    insert into maladie(nom) values('Atrial septal defect (ASD)');
    insert into maladie(nom) values('Ventricular septal defect (VSD) (chronic)');
    insert into maladie(nom) values('Patent ductus arteriosus (PTA)');
    insert into maladie(nom) values('Chronic mitral regurgitation (MR)');
    insert into maladie(nom) values('Chronic mitral stenosis (MS)');
    insert into maladie(nom) values('Chronic right ventricle heart failure (RVHF)');
    insert into maladie(nom) values('Non constrictive pericarditis');
    insert into maladie(nom) values('Constrictive pericarditis');
    insert into maladie(nom) values('Hyperaldosteronism');
    insert into maladie(nom) values('Brain neoplasm');
    insert into maladie(nom) values('Multiple sclerosis');
    insert into maladie(nom) values('Chronic anemia');
    insert into maladie(nom) values('Obesity');
    insert into maladie(nom) values('Normal weight');
    insert into maladie(nom) values('Overweight');
    insert into maladie(nom) values('Extreme obesity');
    insert into maladie(nom) values('Chronic bronchitis');
    insert into maladie(nom) values('Interstitial lung disease');
    insert into maladie(nom) values('Lung cancer');
    insert into maladie(nom) values('Idiopathic pulmonary fibrosis');
    insert into maladie(nom) values('Chronic thyroid goiter airway obstruction');
    insert into maladie(nom) values('Chronic nontuberculous mycobacterial lung infection');
    insert into maladie(nom) values('Patient seems free from chronic respiratory issues');
    insert into maladie(nom) values('Colon cancer');
    insert into maladie(nom) values('Endometrial neoplasm');
    insert into maladie(nom) values('Ovarian neoplasm');
    insert into maladie(nom) values('Cervical neoplasm');
    insert into maladie(nom) values('Esophageal achalasia');
    insert into maladie(nom) values('Iron deficiency anemia');
    insert into maladie(nom) values('Iron deficiency');
    insert into maladie(nom) values('Anemia related to chronic kidney disease');
    insert into maladie(nom) values('Anemia from vitamin B12 deficiency');
    insert into maladie(nom) values('Vitamin B12 deficiency');
    insert into maladie(nom) values('Anemia from folate (vitamin B9) deficiency');
    insert into maladie(nom) values('Folate (vitamin B9) deficiency');
    insert into maladie(nom) values('Pernicious anemia (anemia from b12 deficiency due to autoantibodies to intrinsic factor IF)');
    insert into maladie(nom) values('Hemolytic anemia');
    insert into maladie(nom) values('Intestinal parasites');
    insert into maladie(nom) values('Hepatitis A');
    insert into maladie(nom) values('Acute hepatitis C');
    insert into maladie(nom) values('Hepatitis B');
    insert into maladie(nom) values('Human immunodeficiency virus (HIV) infection');
    insert into maladie(nom) values('Syphilis');
    insert into maladie(nom) values('Hemorrhoids - chronic');
    insert into maladie(nom) values('Chronic ischemic colitis');
    insert into maladie(nom) values('Endometriosis');
    insert into maladie(nom) values('Depression');
    insert into maladie(nom) values('Hypogonadism');
    insert into maladie(nom) values('Kidney neoplasm');
    insert into maladie(nom) values('Bladder cancer');
    insert into maladie(nom) values('Stress incontinence ');
    insert into maladie(nom) values('Mixed incontinence ');
    insert into maladie(nom) values('Urge incontinence ');
    insert into maladie(nom) values('Overflow incontinence ');
    insert into maladie(nom) values('Ureter neoplasm');
    insert into maladie(nom) values('Goodpasture syndrome');
    insert into maladie(nom) values('Anti-GBM disease');
    insert into maladie(nom) values('Ankylosing spondylitis');
    insert into maladie(nom) values('Spinal stenosis');
    insert into maladie(nom) values('Metastatic disease to spine or bones, or primary spine or bones neoplasm');
    insert into maladie(nom) values('Kidneys disease related to vasculitis');
    insert into maladie(nom) values('IgA nephropathy');
    insert into maladie(nom) values('Fibrillary glomerulonephritis');
    insert into maladie(nom) values('Poststreptococcal glomerulonephritis');
    insert into maladie(nom) values('Minimal change disease');
    insert into maladie(nom) values('Focal segmental glomerulosclerosis');
    insert into maladie(nom) values('Membranoproliferative glomerulonephritis');
    insert into maladie(nom) values('Kidney cysts');
    insert into maladie(nom) values('Acute tubular necrosis');
    insert into maladie(nom) values('Acute interstitial nephritis');
    insert into maladie(nom) values('Cushing syndrome or disease');
    insert into maladie(nom) values('Addisons disease (adrenal insufficiency)');
    insert into maladie(nom) values('Pregnancy');
    insert into maladie(nom) values('Bladder tumor.');
    insert into maladie(nom) values('Benign prostatic hypertrophy (BPH)');
    insert into maladie(nom) values('Testicular cancer');
    insert into maladie(nom) values('Varicocele');
    insert into maladie(nom) values('Epididymitis');
    insert into maladie(nom) values('Epididymal cysts or spermatocele');
    insert into maladie(nom) values('Gallbladder stones (cholelithiasis)');
    insert into maladie(nom) values('Irritable bowel syndrome');
    insert into maladie(nom) values('Ascariasis');
    insert into maladie(nom) values('Enterobiasis (pinworm)');
    insert into maladie(nom) values('Giardiasis');
    insert into maladie(nom) values('Crohns disease');
    insert into maladie(nom) values('Patient seems free from chronic issues');
    insert into maladie(nom) values('Chronic hypothyroidism');
    insert into maladie(nom) values('Chronic hyperthyroidism');
    insert into maladie(nom) values('Pheochromocytoma');
    insert into maladie(nom) values('Carcinoid');
    insert into maladie(nom) values('Metabolic syndrome');
    insert into maladie(nom) values('Patent ductus arteriosus');
    insert into maladie(nom) values('Chronic aspiration');
    insert into maladie(nom) values('Nephrolithiasis (kidney stones)');
    insert into maladie(nom) values('Breast cancer');
    insert into maladie(nom) values('Thromboembolic pulmonary hypertension (CTEPH)');
    insert into maladie(nom) values('Pulmonary hypertension secondary to left heart disease');
    insert into maladie(nom) values('Hypercholesterolemia');
    insert into maladie(nom) values('Chronic atrial fibrillation (Afib)');
    insert into maladie(nom) values('Esophageal cancer (i.e. adenocarcinoma)');
    insert into maladie(nom) values('Barretts esophagus');
    insert into maladie(nom) values('Stomach cancer (i.e. adenocarcinoma)');
    insert into maladie(nom) values('Metastatic disease to lungs or primary lungs neoplasm');
    insert into maladie(nom) values('Metastatic disease to brain or primary brain neoplasm');
    insert into maladie(nom) values('Below-the-bladder urinary tract obstruction.');
    insert into maladie(nom) values('Below-the-bladder urinary tract obstruction.');
    insert into maladie(nom) values('Portal hypertension');
    insert into maladie(nom) values('Cirrhosis');
    insert into maladie(nom) values('Nephrotic syndrome');
    insert into maladie(nom) values('Nephritic syndrome');
    insert into maladie(nom) values('Membranous nephropathy');
    insert into maladie(nom) values('Primary membranous nephropathy');
    insert into maladie(nom) values('Secondary membranous nephropathy');
    insert into maladie(nom) values('Anemia in male');
    insert into maladie(nom) values('Anemia in female');
    insert into maladie(nom) values('State of health, no health issues.');



    insert into effetSecondaire(nom) values('Blurred vision'),('Weight gain'),('Drowsiness'),('Drop in blood pressure or orthostatic hypotension'),('Constipation'),('Choking or troubling swallowing'),('Increased saliva or drooling'),('Dry skin, rash'),('Itching'),('Chapped, dry lips'),('Dry nose, nosebleeds'),('Dry eyes'),('Vision problems'),('Back pain, joint pain'),('Birth defects, premature birth'),('Miscarriage, infant death'),('Depression, suicidal thoughts or behavior'),('Inflammatory bowel disease'),('Ulcerative Colitis'),('Crohns Disease');


    insert into forme(nom) values('orales'),('injectables'),('dermiques'),('inhaled'),('rectales');

    insert into sousforme(nom,idForme) values('comprimé effervescent',1),('comprimé sublingual',1),('comprimé à sucer',1),('gelule',1),('sirop',1),('solution buvable',1),('suspension buvable',1);