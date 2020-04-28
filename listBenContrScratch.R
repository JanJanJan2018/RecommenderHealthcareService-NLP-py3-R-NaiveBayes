
# Benefits of each modality as lists:
#   benefits_cbd,benefits_craniosacral,benefits_reflexology,benefits_lymphatic,benefits_massagegun,benefits_tpt,benefits_instrument,benefits_DT,benefits_swedish,benefits_aroma,benefits_stretch,benefits_cold,benefits_freeze,benefits_sports,benefits_cup,benefits_hs,benefits_shiatsu,benefits_prenatal,benefits_myofascial
# 
# Contraindications of each modality as lists:
#   contra_cbd,contra_craniosacral,contra_reflexology,contra_lymphatic,contra_massagegun,contra_tpt,contra_instrument,contra_DT,contra_swedish,contra_aroma,contra_stretch,contra_cold,contra_freeze,
# contra_sports,contra_cup,contra_hs,contra_shiatsu,contra_prenatal,contra_myofascial
#########

# # better benefits list of 19
# benefits_cbd1, benefits_cranio1, benefits_reflex1,  benefits_lymph1, benefits_mgn1, benefits_tpt1, benefits_instrument1, benefits_DT1, benefits_swedish1, benefits_aroma1, benefits_stretch1, benefits_cold1, benefits_freeze1, benefits_sports1, benefits_cup1, benefits_HotStone1, benefits_shiatsu1, benefits_prenatal1, benefits_myofascial1
# 
# 
# # both list of 19
# cbd1, cranio1, reflex1, lymph1, mgn1, tpt1, instrument1, DT1, swedish1, aroma1, stretch1, cold1, freeze1, sports1, cup1, HotStone1, shiatsu1, prenatal1, myofascial1
# 
# # better contraindications list of 19
# CBD_contraindications1, Cranio_contraindications1, Reflex_contraindications1, Lymph_contraindications1, Mgn_contraindications1, TPT_contraindications1, Instrument_contraindications1, DT_contraindications1, swedish_contraindications1, Aroma_contraindications1, stretch_contraindications1, cold_contraindications1, Freeze_contraindications1, Sports_contraindications1, Cupping_contraindications1, HotStone_contraindications1, Shiatsu_contraindications1, Prenatal_contraindications1, Myofascial_contraindications1





# template for find & replace modality
cranio_split <- strsplit(contra_craniosacral,split=' ')
cranio_split1 <- lapply(cranio_split, '[',1)
cranio_split1b <- as.character(cranio_split1)
cranio_split2 <- lapply(cranio_split, '[',2)
cranio_split2b <- as.character(cranio_split2)
cranio_split3 <- lapply(cranio_split, '[',3)
cranio_split3b <- as.character(cranio_split3)
cranio_bi1 <- paste(cranio_split1b,cranio_split2b)
cranio_bi2 <- paste(cranio_split2b,cranio_split3b)
cranio_bi3 <- paste(cranio_split3b,cranio_split1b)
uni_cranio <- unique(c(cranio_split1b, cranio_split2b, cranio_split3b))
bi_cranio <- unique(c(cranio_bi1, cranio_bi2, cranio_bi3))
Cranio_contraindications <- c(contra_craniosacral, bi_cranio, uni_cranio)
csbenefit_uni <- strsplit(benefits_craniosacral, split=" ")
csbenefit_uni1 <- lapply(csbenefit_uni,'[',1)
csbenefit_uni1b <- as.character(csbenefit_uni1)
csbenefit_uni2 <- lapply(csbenefit_uni,'[',2)
csbenefit_uni2b <- as.character(csbenefit_uni2)
csuni_benefits <- unique(c(csbenefit_uni1b,csbenefit_uni2b))
benefits_cranio1 <- c(csuni_benefits, benefits_craniosacral) #

both_cranio <- Cranio_contraindications %in% benefits_cranio1
cranio1 <- Cranio_contraindications[both_cranio] #
Cranio_contraindications1 <- Cranio_contraindications[both_cranio==FALSE] #
###


