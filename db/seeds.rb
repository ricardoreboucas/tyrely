# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago'}, { :name => 'Copenhagen'}])
#   Major.create(:name => 'Daley', :city => cities.first)
Fleet.delete_all
fleet = Fleet.create(:name=>'Expresso Guanabara')
Assay.delete_all
assay = Assay.create(:done_on=>'2008-07-15',:fleet_id=>fleet.id, :doer=>'Gustavo Toscano')
Fault.delete_all
faults = Fault.create([{:name => 'Separação cintas'}, 
   {:name => 'Dano na banda de rodagem'}, 
   {:name => 'Estouro lateral'}, 
   {:name => 'Estouro na região do conserto'}, 
   {:name => 'Quebra circunferêncial do talão'}, 
   {:name => 'Bolha lateral'}, 
   {:name => 'Avaria acidental no flanco'}, 
   {:name => 'Avaria acidental na lateral'}, 
   {:name => 'Baixa pressão de rodagem'}, 
   {:name => 'Rachadura lateral'}, 
   {:name => 'Rachadura na região do conserto'}, 
   {:name => 'Separação lateral'}, 
   {:name => 'Separação pacote de cintas/Impacto'}, 
   {:name => 'Avaria acidental'}, 
   {:name => 'Dano no ombro/Conserto fora especificação'}, 
   {:name => 'Deslocamento cintas'}, 
   {:name => 'Estouro por impacto/Separação de cintas'}, 
   {:name => 'Estouro'}, 
   {:name => 'Furo câmara de ar/Bx. pressão'}, 
   {:name => 'Impacto'}, 
   {:name => 'Infiltração na região no conserto'}, 
   {:name => 'Problemas de reforma no ombro (Degazagem)'}, 
   {:name => 'Quebra no talão'}, 
   {:name => 'Quebra ombro/Separação manchão'}, 
   {:name => 'Rachadura circunferêncial talão/Separação cintas'}, 
   {:name => 'Soltura da banda de rodagem'}, 
   {:name => 'Uso excesso/Pneu furado'}, 
   {:name => 'Avaria lateral'},
   {:name => 'Outros'},
   {:name => 'Bolha lateral no ombro'}])
Tire.delete_all
Tire.create(:tag=>'071125', :model=>'R250', :size=>'295/80R22.5', :times=>'2', :furrow=>'6', :dot=>'0607', :fault_id=>'7', :brand=>'BRIDGESTONE', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071510', :model=>'R227', :size=>'295/80R22.5', :times=>'2', :furrow=>'11.2', :dot=>'2604', :fault_id=>'9', :brand=>'BRIDGESTONE', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071246', :model=>'R250', :size=>'295/80R22.5', :times=>'1', :furrow=>'9', :dot=>'1007', :fault_id=>'17', :brand=>'BRIDGESTONE', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071609', :model=>'R250', :size=>'295/80R22.5', :times=>'-1', :furrow=>'4.4', :dot=>'2107', :fault_id=>'21', :brand=>'BRIDGESTONE', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'072688', :model=>'R250', :size=>'295/80R22.5', :times=>'1', :furrow=>'6.2', :dot=>'3507', :fault_id=>'22', :brand=>'BRIDGESTONE', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'072672', :model=>'R250', :size=>'295/80R22.5', :times=>'1', :furrow=>'9.9', :dot=>'3507', :fault_id=>'22', :brand=>'BRIDGESTONE', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071242', :model=>'R250', :size=>'295/80R22.5', :times=>'1', :furrow=>'4.9', :dot=>'0607', :fault_id=>'23', :brand=>'BRIDGESTONE', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'072187', :model=>'FH55', :size=>'295/80R22.5', :times=>'1', :furrow=>'5', :dot=>'3107', :fault_id=>'2', :brand=>'PIRELLI', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'080239', :model=>'FH55', :size=>'295/80R22.5', :times=>'-1', :furrow=>'4.7', :dot=>'3707', :fault_id=>'2', :brand=>'PIRELLI', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'072432', :model=>'FH55', :size=>'295/80R22.5', :times=>'1', :furrow=>'9.9', :dot=>'3407', :fault_id=>'10', :brand=>'PIRELLI', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'070661', :model=>'FH55', :size=>'295/80R22.5', :times=>'1', :furrow=>'2.4', :dot=>'4706', :fault_id=>'11', :brand=>'PIRELLI', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'072198', :model=>'FH55', :size=>'295/80R22.5', :times=>'1', :furrow=>'8.5', :dot=>'3007', :fault_id=>'11', :brand=>'PIRELLI', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'072523', :model=>'FH55', :size=>'295/80R22.5', :times=>'1', :furrow=>'6', :dot=>'3607', :fault_id=>'11', :brand=>'PIRELLI', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'080245', :model=>'FH55', :size=>'295/80R22.5', :times=>'1', :furrow=>'9.1', :dot=>'3707', :fault_id=>'11', :brand=>'PIRELLI', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071130', :model=>'FH55', :size=>'295/80R22.5', :times=>'1', :furrow=>'3.7', :dot=>'1107', :fault_id=>'11', :brand=>'PIRELLI', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'072635', :model=>'FR85', :size=>'1100R22', :times=>'1', :furrow=>'8.1', :dot=>'4107', :fault_id=>'15', :brand=>'PIRELLI', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'051499', :model=>'FR25', :size=>'1100R22', :times=>'1', :furrow=>'10.9', :dot=>'1805', :fault_id=>'16', :brand=>'PIRELLI', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'072006', :model=>'G358', :size=>'1100R22', :times=>'2', :furrow=>'10', :dot=>'2307', :fault_id=>'30', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'070832', :model=>'G358', :size=>'1100R22', :times=>'2', :furrow=>'9.6', :dot=>'1407', :fault_id=>'30', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'072133', :model=>'G358', :size=>'1100R22', :times=>'1', :furrow=>'4.5', :dot=>'3607', :fault_id=>'5', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'072213', :model=>'G358', :size=>'1100R22', :times=>'2', :furrow=>'7.1', :dot=>'3207', :fault_id=>'6', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'070925', :model=>'G358', :size=>'295/80R22.5', :times=>'2', :furrow=>'10', :dot=>'1507', :fault_id=>'6', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071941', :model=>'G358', :size=>'1100R22', :times=>'1', :furrow=>'4.6', :dot=>'2307', :fault_id=>'9', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071932', :model=>'G358', :size=>'1100R22', :times=>'2', :furrow=>'9.1', :dot=>'2207', :fault_id=>'9', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071139', :model=>'G358', :size=>'295/80R22.5', :times=>'1', :furrow=>'9.3', :dot=>'1207', :fault_id=>'11', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'062451', :model=>'G358', :size=>'1100R22', :times=>'2', :furrow=>'0', :dot=>'4306', :fault_id=>'11', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071583', :model=>'G358', :size=>'1100R22', :times=>'1', :furrow=>'4.5', :dot=>'2307', :fault_id=>'11', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'041022', :model=>'G358', :size=>'1100R22', :times=>'1', :furrow=>'11.5', :dot=>'2204', :fault_id=>'11', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'072129', :model=>'G358', :size=>'1100R22', :times=>'1', :furrow=>'1', :dot=>'4107', :fault_id=>'11', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'070830', :model=>'G358', :size=>'1100R22', :times=>'2', :furrow=>'7.2', :dot=>'1407', :fault_id=>'11', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'062751', :model=>'G358', :size=>'1100R22', :times=>'1', :furrow=>'3.6', :dot=>'4306', :fault_id=>'11', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'070801', :model=>'G358', :size=>'295/80R22.5', :times=>'2', :furrow=>'10', :dot=>'0707', :fault_id=>'11', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'-1', :model=>'G358', :size=>'1100R22', :times=>'2', :furrow=>'4.3', :dot=>'3606', :fault_id=>'11', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071356', :model=>'G358', :size=>'295/80R22.5', :times=>'1', :furrow=>'4.5', :dot=>'1707', :fault_id=>'12', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'072217', :model=>'G358', :size=>'295/80R22.5', :times=>'1', :furrow=>'4.1', :dot=>'3207', :fault_id=>'16', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071365', :model=>'G358', :size=>'295/80R22.5', :times=>'2', :furrow=>'7.1', :dot=>'1707', :fault_id=>'16', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071610', :model=>'G358', :size=>'295/80R22.5', :times=>'3', :furrow=>'9.9', :dot=>'2207', :fault_id=>'16', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071217', :model=>'G358', :size=>'295/80R22.5', :times=>'2', :furrow=>'13.7', :dot=>'1507', :fault_id=>'16', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'072213', :model=>'G358', :size=>'295/80R22.5', :times=>'1', :furrow=>'7.3', :dot=>'3207', :fault_id=>'19', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071661', :model=>'G358', :size=>'295/80R22.5', :times=>'2', :furrow=>'7.2', :dot=>'2207', :fault_id=>'25', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071234', :model=>'G358', :size=>'1100R22', :times=>'1', :furrow=>'0', :dot=>'2307', :fault_id=>'26', :brand=>'GOODYEAR', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'062893', :model=>'967', :size=>'1100R22', :times=>'2', :furrow=>'13.2', :dot=>'1206', :fault_id=>'4', :brand=>'KUMHO', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'072511', :model=>'HSR', :size=>'295/80R22.5', :times=>'1', :furrow=>'2.3', :dot=>'2907', :fault_id=>'2', :brand=>'CONTINENTAL', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'072162', :model=>'XZE2', :size=>'295/80R22.5', :times=>'1', :furrow=>'12.1', :dot=>'3907', :fault_id=>'2', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071412', :model=>'XZE2', :size=>'295/80R22.5', :times=>'2', :furrow=>'3.7', :dot=>'2607', :fault_id=>'14', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'080030', :model=>'XZE2', :size=>'1100R22', :times=>'1', :furrow=>'8.1', :dot=>'4607', :fault_id=>'8', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'070950', :model=>'XZE2', :size=>'295/80R22.5', :times=>'3', :furrow=>'1.3', :dot=>'1607', :fault_id=>'2', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'061907', :model=>'XZE2', :size=>'295/80R22.5', :times=>'2', :furrow=>'6.3', :dot=>'2306', :fault_id=>'2', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'080256', :model=>'XZE2', :size=>'295/80R22.5', :times=>'-1', :furrow=>'8', :dot=>'0208', :fault_id=>'2', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'070850', :model=>'XZE2', :size=>'295/80R22.5', :times=>'1', :furrow=>'-1', :dot=>'1507', :fault_id=>'2', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'070964', :model=>'XZE2', :size=>'295/80R22.5', :times=>'2', :furrow=>'8', :dot=>'1607', :fault_id=>'4', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071470', :model=>'XZE2', :size=>'295/80R22.5', :times=>'1', :furrow=>'2.9', :dot=>'2507', :fault_id=>'4', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'051117', :model=>'XZE2', :size=>'295/80R22.5', :times=>'1', :furrow=>'3.6', :dot=>'1405', :fault_id=>'4', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'070404', :model=>'XZE2', :size=>'1100R22', :times=>'2', :furrow=>'4.3', :dot=>'0407', :fault_id=>'5', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'072017', :model=>'XZE2', :size=>'1100R22', :times=>'2', :furrow=>'11.7', :dot=>'2607', :fault_id=>'5', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'070234', :model=>'XZE2', :size=>'1100R22', :times=>'2', :furrow=>'7.5', :dot=>'5106', :fault_id=>'6', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'070273', :model=>'XZE2', :size=>'295/80R22.5', :times=>'1', :furrow=>'6.1', :dot=>'4606', :fault_id=>'7', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'041750', :model=>'XZE2', :size=>'275/80R22.5', :times=>'2', :furrow=>'8.6', :dot=>'2904', :fault_id=>'7', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071638', :model=>'XZE2', :size=>'295/80R22.5', :times=>'1', :furrow=>'3.7', :dot=>'1907', :fault_id=>'7', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'051500', :model=>'XZE2', :size=>'1100R22', :times=>'1', :furrow=>'8.7', :dot=>'1805', :fault_id=>'8', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071481', :model=>'XZE2', :size=>'1100R22', :times=>'2', :furrow=>'15', :dot=>'2307', :fault_id=>'9', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071915', :model=>'XZE2', :size=>'295/80R22.5', :times=>'1', :furrow=>'8.8', :dot=>'2307', :fault_id=>'9', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'070123', :model=>'XZE2', :size=>'295/80R22.5', :times=>'1', :furrow=>'-1', :dot=>'5206', :fault_id=>'11', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071493', :model=>'XZE2', :size=>'1100R22', :times=>'2', :furrow=>'10', :dot=>'1907', :fault_id=>'11', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071954', :model=>'XZE2', :size=>'295/80R22.5', :times=>'2', :furrow=>'8.5', :dot=>'2307', :fault_id=>'11', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'070189', :model=>'XZE2', :size=>'1100R22', :times=>'2', :furrow=>'3.2', :dot=>'5006', :fault_id=>'11', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'070718', :model=>'XZE2', :size=>'1100R22', :times=>'2', :furrow=>'5.9', :dot=>'0207', :fault_id=>'11', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071053', :model=>'XZE2', :size=>'295/80R22.5', :times=>'-1', :furrow=>'2.1', :dot=>'1007', :fault_id=>'11', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'062264', :model=>'XZE2', :size=>'295/80R22.5', :times=>'2', :furrow=>'4', :dot=>'3606', :fault_id=>'12', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071436', :model=>'XZE2', :size=>'295/80R22.5', :times=>'1', :furrow=>'8.2', :dot=>'3104', :fault_id=>'12', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071979', :model=>'XZE2', :size=>'295/80R22.5', :times=>'1', :furrow=>'-1', :dot=>'2807', :fault_id=>'16', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'072296', :model=>'XZE2', :size=>'1100R22', :times=>'1', :furrow=>'7.4', :dot=>'3807', :fault_id=>'16', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'070704', :model=>'XZE2', :size=>'295/80R22.5', :times=>'2', :furrow=>'6', :dot=>'1007', :fault_id=>'16', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071155', :model=>'XZE2', :size=>'1100R22', :times=>'2', :furrow=>'11.3', :dot=>'1907', :fault_id=>'16', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'070396', :model=>'XZE2', :size=>'1100R22', :times=>'1', :furrow=>'6.4', :dot=>'0407', :fault_id=>'16', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071342', :model=>'XZE2', :size=>'295/80R22.5', :times=>'1', :furrow=>'-1', :dot=>'1307', :fault_id=>'16', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'062396', :model=>'XZE2', :size=>'295/80R22.5', :times=>'2', :furrow=>'3.5', :dot=>'4306', :fault_id=>'17', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'052337', :model=>'XZE2', :size=>'1100R22', :times=>'2', :furrow=>'2.5', :dot=>'4305', :fault_id=>'22', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'062399', :model=>'XZE2', :size=>'295/80R22.5', :times=>'1', :furrow=>'9.9', :dot=>'4306', :fault_id=>'23', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')
Tire.create(:tag=>'071407', :model=>'XZE2', :size=>'295/80R22.5', :times=>'1', :furrow=>'5', :dot=>'2407', :fault_id=>'28', :brand=>'MICHELIN', :assay_id=>assay.id, :fleet_id=>fleet.id, :kind=>'R')

puts "Success: Data loaded"
