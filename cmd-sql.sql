====================version=================================
select * from ad_tctvr
where ctvr_objeto = 'sfmofcex';
--    
begin 
ge_pvers ('fdmognds', 'FORMA', 1025);
end;   
--  
pyinstaller --windowed --onefile index2.py

SELECT DISTINCT name,'linea:'||line||'**',ltrim(text)
FROM user_source
WHERE upper(text) LIKE upper('%no ha definido el tipo de com%')
order by 1; 

============== git ==========================
git reset --hard HEAD~1 --devolver el ultimo commit antes de hacer push

git cherr-pick #commit    --sube el ultimo commit

C:\Desarrollo\FORMS\bin\frmf2xml.bat C:\KIUWAN\104945\Linea_Base\*.fmb

git grep -n -i "fk_sf_tppro_sf_tprov"
select * from SYS.ALL_SOURCE where upper(TEXT) like '%ERROR%';

====================seguimientos============================
nota('seg- ');

sf_pins_error('seg-SFMOOPCJ-PROCESAR'  ||' '||     ||' '||);
--
select * from sf_terro;
--
truncate table sf_terro;
--
select * from sf_terro
where erro_texto like '%%'
order by 2 desc;
--
select * from sf_terro
where erro_texto like '%seg%'
order by 2 desc;
--
select * from sf_terro
where erro_texto like '%orden_aplica_fact%' 
--where erro_orden between  1042853600 and 1042914578
order by 2 desc;
--
select * from sf_tlger
order by 2 desc;

truncate table sf_tlger;

---------------------------
select * from sf_terro
order by 2 desc
;
begin 
sf_pins_error('prueba');
end;
-------------------------------
update ge_tusuaS
set usua_stat = 'AC'
where usua_usua = 'PROBADOR'
;
=======================Busca codigo=========================

select * from user_source
where text like '%Traslados por Reclasificacion de Tipos de Participacion%';

SELECT name,TEXT
FROM all_source
WHERE upper(text) like '%#VERSION%'
AND UPPER(NAME) IN ('FD_QRECORD_INMOB');      

SELECT name,TEXT
FROM all_source
WHERE upper(text) like '%#VERSION%'
AND UPPER(NAME) IN ('SC_QCTCO','SC_QANUL','SC_QHCAU')
;

busqueda en git -->>   git grep "sf_tvlbap"

astrogrep -->> programa de busquedas
=================================================================


declare
v1 number;
v2 number;
v3 number;
--
begin
    GE_QCERT.VReti_No_Grav_Cntg (8293, 829301000045, to_date('01012021','ddmmyyyy'),to_date('31122021','ddmmyyyy'),v1,v2,v3 );
    dbms_output.put_line('v1'||v1||' v2'||v2||' v3'||v3);
    
end;
=======================exceptions==============================
  exception
    when others then
      v_Error := sqlerrm;
      Bloqueo('Error con sf_tdsci: ' || v_Error);

v_Error  varchar2(500);

	--
	Exception
		when others then
			Bloqueo('Error: ' || sqlerrm);
======================= crear tabla copia ======================
--
create table copia_tabla1 as select * from tabla1; 
--
======================= Cursores ======================
for c1 in (select * 
	             from sf_tplan      
              where plan_plan = 1290190000218
                and plan_fond = 12
				 ) loop
	     --mostrar llave primaria y dato que está cambiando			 
	    dbms_output.put_line(c1.plan_fond||','||c1.plan_plan||','||c1.plan_rconesp);
	  end loop;
--

CREATE OR REPLACE PROCEDURE process_employee (  
   employee_id_in   IN hr.employees.employee_id%TYPE)  
IS  
   CURSOR emp_cur  
   IS  
      SELECT employee_id,  
             salary,  
             last_name || ',' || first_name full_name,  
             first_name  
        FROM hr.employees  
       WHERE employee_id = employee_id_in;  
  
   emp_rec   emp_cur%ROWTYPE;  
BEGIN  
   OPEN emp_cur;  
  
   FETCH emp_cur INTO emp_rec;  
  
   DBMS_OUTPUT.put_line (  
         emp_rec.employee_id  
      || '-'  
      || emp_rec.full_name  
      || '-'  
      || emp_rec.salary);  
  
   CLOSE emp_cur;  
END;	  

	  
======================= llamados utilizados ======================
SF_QTPPT.recupera_acdi_opin
	  Go_block('sf_tdteg');
	  Execute_query(no_validate);
	  Synchronize;

======================= Activar-desactivar trigger. ================================
alter trigger SF_GCTOP_UPD disable;
alter trigger SF_GCTOP_UPD enable;
=======================        seguimientos ================================
sf_pins_error('seg-FA_QCOBRO-CREA_EGRESO'
||'   '||  
||'   '||  
||'   '||  
||'   '||  
||'   '||  
||'   '||  
||'   '||  
||'   '||  
||'   '||  
||'   '||  
||'   '||  
||'   '||  
||'   '||  
||'   '||
||'   '||
||'   '||
||'   '||
||'   '||
||'   '||
||'   '||
||'   '||
||'   '||
||'   '||
||'   '||
||'   '||   
 ); 


==================== Ambientes República Dominicana =================================
itcnw -> ambientes
--
anydesk 
itc-123@ad
Pluton02
--
teamviewer
880484272
1234
--
==================== Error en ge_tusua =================================
update ge_tusua 
set usua_session = 0, USUA_INT_CONX = 0, usua_stat = 'AC', usua_logs = 80
where usua_usua = 'PROBADOR'; 

====================  secuencias =================================
select sf_sdtop.currval from dual;
select sf_sdtop.nextval from dual;
====================  secuencias =================================
webex5@itc.com.co
====================  consulta incidentes =================================
select soli_ult_asignado, soli_modulo, soli_tipo, soli_estado, soli_soli
from ai_tsoli
where soli_ult_asignado in ('RSOLANO','WAMARTIN', 'DEROMERO')
and soli_estado in ('DES', 'ACE')
ORDER BY soli_ult_asignado, soli_estado, soli_soli;

select * from ai_tsoli
where soli_ingeniero in ('RSOLANO')
and soli_estado NOT IN ('CER','REC','RES');
============================funciones=========================================
 SF_QPLAN.SelTitular(plan_fond, plan_plan) between :d_fdei and :h_fdei 
:plan_descri := sf_qplan.Descri(:RETR_FOND, :retr_plan );
:plan_fdei_descri := sf_fideicomitente.SelDescri(:retr_fdei);

 sf_qtipo_movimiento.tpmv_proc_esp(i.fondo,'RFTE_RNGE'); --procesos especiales
 SF_QMULTI_OPCION.fondo_pensiones(:fond_fond) = 'N'  -- maneja pensiones
 ( sf_qcmto.Maneja_Compartimento(p_fond,null) = 'S'  --maneja compartimentos
 sf_qtppt.recupera_acdi_opin(pc_fond, pc_plan, pc_fecha)  -- opcion de inversion 
 if SF_QMULTI_OPCION.fondo_pensiones(:ctrl.fond_fond) = 'N' then 
 --
 pi_qfnge.VMone(:mvca.mvca_mone,:cargar.fecarch,'R', 'O', 1 ); --->funcion moneda.
 
v_tpmv_CANC_AJPS  := sf_qtipo_movimiento.tpmv_Proc_Esp( p_Fond, 'CANC_AJPS' ); -- Ajuste Positivo en Cancelación de Plan/Encargo.
v_tpmv_CANC_AJNG  := sf_qtipo_movimiento.tpmv_Proc_Esp( p_Fond, 'CANC_AJNG' ); -- Ajuste Negativo en Cancelación de Plan/Encargo.
 ----
 select plan_plan, plan_descri
from sf_tplan
where plan_fond =:fond
and  SF_QPLAN.SelTitular(plan_fond, plan_plan) between :d_fdei and :h_fdei
order by plan_plan
 --
 decode(fdei_person,'F','J',fdei_person) = decode (:T_PERSON,'T',decode(fdei_person,'F','J',fdei_person), :T_PERSON)
============================Exception java=========================================
	raisedException   ORA_JAVA.JOBJECT; --Yego 
  
  exception 
  when ORA_JAVA.EXCEPTION_THROWN then
   raisedException := exception_.new(ORA_JAVA.LAST_EXCEPTION); -- Captura el error en el objeto raisedException
  begin
   bloqueo('Exception: '||Throwable.toString(raisedException)); -- Convierte el error a string con el método toString de la clase THrowable
  exception
   when ORA_JAVA.JAVA_ERROR then
    bloqueo('Unable to call out to Java, ' ||ORA_JAVA.LAST_ERROR);   -- When others en el caso en que no se pueda consumir THrowable
  end;
 
============================otros========================================= 
v_identificacion :=	SUBSTR(c_limpa.limpa_fdei,1,3)||'-'||SUBSTR(c_limpa.limpa_fdei,4,10)||'-'||SUBSTR(c_limpa.limpa_fdei,10,1);
--
============================ -fechas- ========================================= 
 select   TO_DATE('01/01/2010 08:00:00', 'DD/MM/YYYY HH24:MI:SS') from dual;
 select  TO_char(sysdate, 'HH24:MI:SS') from dual
 select to_char(acrr_feccie, 'yyyy') = 2020 from dual;
 
 
SELECT ADD_MONTHS(TO_DATE('25/02/2020','DD/MM/YYYY'),-1) FROM DUAL;

  AND dtmc_FECMOV BETWEEN to_date(:per_desde,'yyyymm') AND last_day(to_date(:per_hasta,'yyyymm'))
============================ -type- ========================================= 
type ty_TCRF is record (

         TCRF_TCRF             SC_TTCRF.TCRF_TCRF%type,
         TCRF_FOND             SC_TTCRF.TCRF_FOND%type,
         TCRF_PLAN             SC_TTCRF.TCRF_PLAN%type,
         TCRF_FECH_INI         SC_TTCRF.TCRF_FECH_INI%type,
         TCRF_FECH_FIN         SC_TTCRF.TCRF_FECH_FIN%type
         );
 
 
DECLARE
  l_employee  omag_employees%ROWTYPE;
BEGIN
  l_employee.last_name := 'Renoir';
  l_employee.salary := 1500;
END; 
============================ - tabla para reportes dobles- =========================================
Ge_tdmno 
============================ - consulta para certificados- =========================================

select *
from sf_tmovi, sf_ttpmv
where movi_fond in (1, 2, 15)
and movi_plan in (1473968, 10103582, 75774947, 6200829)
and movi_fecmov between to_date('01/01/2019','dd/mm/yyyy') and to_date('31/12/2019','dd/mm/yyyy')
and tpmv_tpmv = movi_tpmv
and tpmv_clin in ('RF','RR');
--
select plan_porc_rf, PLAN_APLI_RETF
from sf_tplan
where plan_fond in (1, 2, 15)
and plan_plan in (1473968, 10103582, 75774947, 6200829);

select * from sf_tcrvg;


============================ - enter- =========================================

enter;
if (  form_failure ) then
  raise form_trigger_failure;
end if;

next_item;

set_item_property('bnni_vmone_apl', enabled, property_true);
go_item('bnni_vmone_apl');

============================ ============================================================

FDMOGRMV--GRABACION-->fd_toper - fd_tmovi
FDMOVAOP--LIQUIDACION-->fd_tmvlq
FDMOING -- INSTRUCCIONES --> fd_tbpop -fd_tinpg
FDMOAOOP -- AUTORIZACIÓN --> cp_torpa -sc_tctco- sc_tmvco
TEMOPAGO -- cumplimiento/pago tesoreria --> TE_TMVTE SC_TCTCO--SC_TMVCO




=============== agregar columna ======================
alter table fd_toper add oper_orig varchar2 (1) ,
ALTER TABLE  fd_tmvca ADD mvca_mone         varchar2(6) ;
ALTER TABLE  fd_tmvca ADD mvca_vmone_apl    number(23,2);
--



=============== EN key-next-item kni======================
-- 
Enter;
if form_failure then
  raise form_trigger_failure;
End if;
--
go_block('SF_TFOND');
execute_Query;
--
=============== EN when-VALIDATE-item wvi======================
 If (:mayo_multimoneda not in ('S', 'N'))then
 	bloqueo('Valor No valido ');
 end if;

========= radio button con distinto where ===========

if :ctrl.radio_exitosos = 'T' then	
	Set_block_Property ('sf_tctop',default_where,'ctop_tesoreriasn is not null and ctop_fecha between :fecha_desde and :fecha_hasta');
elsif :ctrl.radio_exitosos = 'N' then
	Set_block_Property ('sf_tctop',default_where,'ctop_tesoreriasn=''N''');
end if;
go_block('SF_TCTOP');
execute_query;

SYSTEM.CURSOR_ITEM



========= atributocampo pre-record===========
+
nota(':num_dias'||:num_dias);
if :num_dias is null then
	set_item_property('PRFN_TPMV', enabled, property_false);
else 
	set_item_property('PRFN_TPMV', enabled, property_true);
	set_item_property('PRFN_TPMV', update_allowed, property_true);
end if;

========= ORACLE-FORMS ===========
Built-Ins de Navigación
Funcionamiento
GO_FORM
Navega a un Form independiente en una aplicación de múltiples Forms (Formularios).
GO_BLOCK/ITEM/RECORD
Navega al Bloque, Registro o Item especificado.
NEXT_BLOCK/ITEM/KEY
Se desplaza al siguiente Bloque, Item o Item de clave primaria que sea navegable.
NEXT/PREVIOUS_RECORD
Se desplaza al primer item navegable del siguiente (NEXT) o anterior (PREVIOUS) registro,
NEXT_SET
Extrae otro conjunto de registros de la base de datos y luego navega al primer registro extraído.
UP, DOWN
Navega a la instancia del item actual en el anterior/posterior registro.
PREVIOUS_BLOCK/ITEM
Navega al anterior bloque o item navegable.
SCROLL_UP/DOWN
Desplaza el bloque de manera que se muestren los primeros (UP) o últimos (DOWN) registros.



SET_FORM_PROPERTY(FIRST_NAVIGATION_BLOCK, 'ORDER_ITEMS');
/*Esta sentencia establecería el ORDER_ITEMS como el primer bloque de navegación del Form en cuestión, por ende al iniciar el módulo form el cursor se colocaría en el primer item navegable de ese bloque.*/
SET_BLOCK_PROPERTY('ORDERS', ORDER_BY, 'CUSTOMER_ID');
/*Esta sentencia establecería la propiedad ORDER BY CLAUSE con la columna CUSTOMER_ID. De esta forma una posterior consulta ordenaría los resultados por esta columna en forma ascendente.*/
SET_RECORD_PROPERTY(3, 'ORDER_ITEMS', STATUS, QUERY_STATUS);
/*Esta sentencia marca el tercer registro en el bloque ORDER_ITEMS como si fuera un registro consultado.*/
SET_ITEM_PROPERTY('CONTROL.stock_button', ICON_NAME, ’stock’);
/*Esta sentencia especifica el archivo 'stock' como el icono asociado con un Botón stock_button, dicho botón debe tener la propiedad Iconic establecida en SÍ*/

SET_BLOCK_PROPERTY('bloque', insert_allowed, property_false);
========= CONSTRAINTS  ===========

-- 
-- Non Foreign Key Constraints for Table AF_TMYCO 
-- 
ALTER TABLE AF_TMYCO ADD (
  CONSTRAINT CH_AF_TMYCO_CLASE CHECK (
 myco_clase IN ('AI','DP','AD','CH') ));

-- 
-- Foreign Key Constraints for Table AF_TMYCO 
-- 
ALTER TABLE AF_TMYCO ADD (
  CONSTRAINT FK_AF_TMYCO_AF_TAFCO FOREIGN KEY (MYCO_AFDV, MYCO_AFCO) 
    REFERENCES AF_TAFCO (AFCO_AFDV,AFCO_AFCO));


ALTER TABLE table_name
DISABLE CONSTRAINT constraint_name;

ALTER TABLE supplier
DISABLE CONSTRAINT supplier_unique;



================= crear tablas =========================

--
-- SF_TCGPL  (Table)
--
/**********************************************************************************/
Prompt
Prompt Creando tabla SF_TCCAE
Prompt
/**********************************************************************************/

CREATE TABLE SF_TCGPL
(
CGPL_CGPL     NUMBER(8) CONSTRAINT NN_SF_TCGPL_CGPL NOT NULL,
CGPL_FECHA    DATE CONSTRAINT NN_SF_TCGPL_FECHA NOT NULL,
CGPL_NROREG   NUMBER(8) CONSTRAINT NN_SF_TCGPL_NROREG NOT NULL,
CGPL_ESTA     VARCHAR2(1 BYTE) CONSTRAINT NN_SF_TCGPL_ESTA NOT NULL,
CGPL_FECARCH  DATE CONSTRAINT NN_SF_TCGPL_FECARCH NOT NULL,
CGPL_FECCRE   DATE CONSTRAINT NN_SF_TCGPL_FECCRE NOT NULL,
CGPL_USUA     VARCHAR2(30 BYTE) CONSTRAINT NN_SF_TCGPL_USUA NOT NULL,
MONE_FECCRE  DATE                             DEFAULT sysdate,
MONE_USUA    VARCHAR2(20 BYTE)                DEFAULT user
)
TABLESPACE TS_DSFI
LOGGING
NOCOMPRESS
NOCACHE
NOPARALLEL
MONITORING;

====================================================
list_values;
do_key('next_field');

=================wvi para lista de valores ============
declare
  v_moneda  varchar2 (3);
--  
Begin
--	
select etmo_mone 
into v_moneda
from ge_tetmo
where etmo_etct = :ctrl_etct
and  etmo_mone = :ctrl_moneda;
--
  Exception
    when no_data_found then
      Bloqueo ('Moneda NO EXISTE para la estructura...');
    when others then
      Bloqueo (' ERROR : '||sqlerrm);
End;

======================== Generar EXCEL POI =========================


#EN EL BOTON AGREGAR
llama_ventana_excel;

#AGREGAR 
BLOQUE PLANO
CANVAS PLANO
WINDOWS PLANO

P.U
llama_ventana_excel
GENERA_EXCEL_POI


======================== recorrer un bloque =========================
	go_block('sf_tctop');
	first_record;	
	loop
		--
		if demo_check = 'S' then 
		sf_tmasn.procesa_opercajas(trunc(sysdate), :ctop_fond, :ctop_ctop, 'M', 'sfmooptin' );
		end if;
		--
	exit when :system.last_record = 'TRUE';
	next_record;  
		--
	end loop; 
	
	
======================== recorrer un check-box =========================		
 Set_Radio_Button_Property('Proceso', 'Manual', Enabled, Property_True);
 	    	  Set_Radio_Button_Property('Proceso', 'Manual', Enabled, Property_True);
	   	  	Set_Radio_Button_Property('Proceso', 'Distribucion', Enabled, Property_False);
======================== recorrer un check-box =========================	
                        --MARCAR TODOS ---
declare
	v_marca varchar2(1);
begin
	v_marca := :CHK_TODOS;
	go_block('sf_vctop_proc_opcj');
	First_record;	
	loop
			go_item('sf_vctop_proc_opcj.demo_check');
			if :chk_todos = 'S' then 
				:sf_vctop_proc_opcj.DEMO_CHECK := v_marca;	
				execute_trigger('WHEN-CHECKBOX-CHANGED'); 			
			end if;
	  	exit when :System.Last_Record = 'TRUE';
	  	next_record;		
	end loop;
	synchronize;
	first_record;
end;

declare
	v_marca varchar2(1);
begin
	v_marca := :CHK_TODOS;
	go_block('sf_tgrim');
	First_record;	
	loop
			go_item('sf_tgrim.demo_check');
				:sf_tgrim.DEMO_CHECK := v_marca;	
  	exit when :System.Last_Record = 'TRUE';
  	next_record;		
	end loop;
	synchronize;
	first_record;
end;


=============dia habil========================================
ge_qfnge.Ste_Dia_Habil(v_Fecha_Oper)

select ge_qfnge.Add_DH_a_Fecha(trunc(sysdate),2) from dual;

=============mostrar forma opcj========================================
-- solic 1305
--
Declare
--
  pl_id     ParamList;
  v_Forma   varchar2(150);
-- 
Begin
--
  If :mvag_ctop is not null then 	
  	Hide_View   ('detal_movi');
    Hide_Window ('detal_movi');
	  v_Forma   := 'siaf/fmx/sfmcopcj';
	  --
	  pl_id := Get_Parameter_List('PARAMETROS');
	  IF NOT Id_Null(pl_id) THEN
	    Destroy_Parameter_List('PARAMETROS');
	  END IF;
	  --
	  pl_id := Create_Parameter_List('PARAMETROS');	
	  ADD_PARAMETER(pl_id, 'p_ctop', TEXT_PARAMETER, :mvag_ctop );
	  CALL_FORM    ( v_Forma, no_hide, no_replace, Query_only, pl_id );
	End if;
--  
End;



================cursor para insert===================
Begin
	--
	For i in c_grpl_plan loop	
	  Insert into sf_timex ( imex_imex, imex_fond    , imex_plan  , imex_period )
	  Values               ( :v_imex  , i.grpl_fond  , i.grpl_plan, i.tmpe_periodo);
	End loop c_grpl_plan;  
  --
  COMMIT_FORM;
	--  
exception 
	when others then	
			Nota('Error en inserta_sf_timex'||sqlerrm);
			raise form_trigger_failure;
End;

=================================================
PROCEDURE Activa_ITBIS IS --RFC_606
BEGIN
		--SET_ITEM_PROPERTY ( 'oper_iva_proporcional.COSTO',ENABLED ,PROPERTY_TRUE);
	If :FORM_CONTIVA='S' Then
		SET_ITEM_PROPERTY ( 'oper_iva_proporcional',ENABLED ,PROPERTY_true);
		SET_ITEM_PROPERTY ( 'oper_iva_proporcional',update_allowed ,PROPERTY_True);
		--If nvl(:OPER_IVA_PROPORCIONAL,'N')='N' Then
			:OPER_IVA_PROPORCIONAL:='A';
	  --End if;
		Set_Radio_Button_Property('OPER_IVA_PROPORCIONAL','ADELANTAR',ENABLED,PROPERTY_TRUE);
		Set_Radio_Button_Property('OPER_IVA_PROPORCIONAL','PROPORCION',ENABLED,PROPERTY_TRUE);
		Set_Radio_Button_Property('OPER_IVA_PROPORCIONAL','COSTO',ENABLED,PROPERTY_FALSE);
	Else
		:OPER_IVA_PROPORCIONAL:='C';
		SET_ITEM_PROPERTY ( 'oper_iva_proporcional',ENABLED ,PROPERTY_false);
	End if;
END;

=======================================================
--ventanas
 SET_WINDOW_PROPERTY('detal_prov_vig',TITLE,'Detalle Provisiones');
 GO_BLOCK('sf_tprueba');
 
===========================================================
  r_dere_IVA    c_dere%RowType;  -- Soli_6932
  -- 
	v_form_iva        ge_tformula.form_iva%type;
	
	
	
	
==================================================================
create or replace TRIGGER sc_gmvco_b_ins_upd_segui
--
BEFORE INSERT OR UPDATE ON sc_tmvco
FOR EACH ROW
--
BEGIN
    --
    IF (UPDATING) THEN
        --
        Sf_Pins_Error('arios -> updating sc_gmvco_b_ins_upd_segui'||
                        'MVCO_CIAS    =' || :new.MVCO_CIAS  
                        ||'MVCO_TPCO    =' || :new.MVCO_TPCO  
                        ||'MVCO_NROCOM  =' || :new.MVCO_NROCOM
                        ||'MVCO_DESCRI  =' || :new.MVCO_DESCRI
                        ||'MVCO_MAYO ='|| :new.MVCO_MAYO
                        ||'MVCO_ETCT = '|| :new.MVCO_ETCT
                        ||'MVCO_FECMOV  =' || :new.MVCO_FECMOV || ' - '||dbms_utility.format_call_stack
                     );
        --
    ELSE
        --
        Sf_Pins_Error('arios -> inserting sc_gmvco_b_ins_upd_segui'||
                        'MVCO_CIAS    =' || :new.MVCO_CIAS  
                        ||'MVCO_TPCO    =' || :new.MVCO_TPCO  
                        ||'MVCO_NROCOM  =' || :new.MVCO_NROCOM
                        ||'MVCO_DESCRI  =' || :new.MVCO_DESCRI
                        ||'MVCO_MAYO ='|| :new.MVCO_MAYO
                        ||'MVCO_ETCT = '|| :new.MVCO_ETCT
                        ||'MVCO_FECMOV  =' || :new.MVCO_FECMOV || ' - '||dbms_utility.format_call_stack
                     );
        --
    END IF;
    --
END;	
	 
	 
============= WVI ============================
	 
Declare
	--
	Cursor c1 Is
		Select ofic_descri    
	   	From Sf_tofic
	   Where ofic_ofic = :v_ofic;
	--
	Cursor c2 Is
		Select usof_estado
	 	  From sf_tusof
	   Where usof_usua = :usuario
	 		 and usof_ofic = :v_ofic;
	--
	v_esta 					varchar2(2);	 
	--	 
BEGIN
	--
  Open c1;
  Fetch c1 Into  :v_ofic_descri;
  --
	If ( c1%notfound ) Then
		--
		Close c1;
		bloqueo('Oficina no existe.');
		--
	End if;	
	--
  Close c1;
  
END;  

==================================================

declare

  cursor c_auxi (p_auxi_nit number) is
  select auxi_auxi, auxi_tpret,auxi_nit, auxi_descri
  from ge_tauxil
  where auxi_nit = p_auxi_nit;
 -- v_auxi_terc ge_tauxil.auxi_nit%type;
	v_estado boolean;

begin 
--	
	v_estado :=false;
	--
WHILE  (v_estado = false)
LOOP
	open c_auxi(:prov_terc);
		fetch c_auxi into :prov_auxi_terc, :ctrl_auxi_tpret, :prov_terc, :ter_descri ;
			If ( c_auxi%notfound ) Then
		--
		Close c_auxi;
		bloqueo('Tercero no existe.');
		else  v_estado := true;
		--
	End if;	
	close c_auxi;
END LOOP;

end;



if(:prov_total <0) then
	bloqueo('El valor debe ser positivo');
end if;
=================
declare
	--
  cursor c1 (p_tpmv number) is
	SELECT MOFI_MOFI
  FROM  FD_TMOFI
  where mofi_mofi = p_tpmv;
	--
	v_estado boolean;
  
begin 
--	
	v_estado :=false;
	--
WHILE  (v_estado = false)
LOOP
	open c1(:prov_tpmv);
		fetch c1 into :prov_tpmv;
			If ( c1%notfound ) Then
		--
		Close c1;
		bloqueo('Tipo de movimiento no existe.');
		else  v_estado := true;
		--
	End if;	
	close c1;
END LOOP;
--
end;

============== Configurar Servidor de reportes ======================================

select * from ge_tpara
where para_para in ('APPT_RPT','SRV_REP_DR','SRVR_RPT');

update ge_tpara set para_descri = 'http://192.168.60.34:9004/reports/rwservlet' where para_para = 'APPT_RPT';	
update ge_tpara set para_descri = '/app/SIFI/sifi_tmp/' where para_para = 'SRV_REP_DR';	
update ge_tpara set para_descri = 'rep_wls_reports3_itcs34' where para_para = 'SRVR_RPT';



============== insert permisos sfmoappl=======================================0

Insert into SF_TUSOP (USOP_USUA,USOP_OPER,USOP_NATU,USOP_TPCTA,USOP_FECCRE,USOP_USUACREA,USOP_FECMOD,USOP_USUAMOD) values ('PROBADOR','AP','N','N',to_date('29/09/14','DD/MM/RR'),'AGUEVARA',null,null);
Insert into SF_TUSOF (USOF_USUA,USOF_OFIC,USOF_HORA_INI,USOF_HORA_FIN,USOF_ESTADO,USOF_FECCRE,USOF_USUACREA,USOF_FECMOD,USOF_USUAMOD,USOF_PRINSN,USOF_HORAADIC,USOF_TPFECFUT) values ('PROBADOR','1',to_date('01/01/00','DD/MM/RR'),to_date('01/01/00','DD/MM/RR'),'A',to_date('29/09/14','DD/MM/RR'),'AGUEVARA',null,null,'S',null,null);

============== excepciones =======================================

e_error 		exception;
v_msg_err   varchar2(1300);

if vty_erro.cod_error <> 'OK' then
	--
	v_msg_err := vty_erro.msg_error;
	raise e_error;
	--
end if;

exception
	when e_error then
		p_error:='Error al traer la secuencia SC_STCRF : '||v_msg_rta;
	when others then
		p_error:='Error al Generar el Reporte : genera_informacion : '||sqlerrm;
		
		
=================  type ======================================		

type ty_tcrd is record (
          tcrd_tcrf            sc_ttcrd.tcrd_tcrf%type     
         ,tcrd_fond            sc_ttcrd.tcrd_fond%type     
         ,tcrd_plan            sc_ttcrd.tcrd_plan%type     
         ,tcrd_trcd            sc_ttcrd.tcrd_trcd%type     
         ,tcrd_terc            sc_ttcrd.tcrd_terc%type     
         ,tcrd_pers            sc_ttcrd.tcrd_pers%type     
         ,tcrd_afil            sc_ttcrd.tcrd_afil%type     
         ,tcrd_corr_dir        sc_ttcrd.tcrd_corr_dir%type         
         ,tcrd_corr_tel        sc_ttcrd.tcrd_corr_tel%type         
         ,tcrd_porc_rtf        sc_ttcrd.tcrd_porc_rtf%type         
         ,tcrd_ciud            sc_ttcrd.tcrd_ciud%type     
         ,tcrd_valr_bru        sc_ttcrd.tcrd_valr_bru%type         
         ,tcrd_plan_rest       sc_ttcrd.tcrd_plan_rest%type         
         ,tcrd_feccan          sc_ttcrd.tcrd_feccan%type       
         ,tcrd_dire_cor        sc_ttcrd.tcrd_dire_cor%type         
         ,tcrd_ciud_cor        sc_ttcrd.tcrd_ciud_cor%type         
         ,tcrd_porc_rfte       sc_ttcrd.tcrd_porc_rfte%type         
         ,tcrd_retf            sc_ttcrd.tcrd_retf%type     
         ,tcrd_rdrt            sc_ttcrd.tcrd_rdrt%type     
         ,tcrd_rdob            sc_ttcrd.tcrd_rdob%type     
         ,tcrd_rfrc            sc_ttcrd.tcrd_rfrc%type     
         ,tcrd_base_grv        sc_ttcrd.tcrd_base_grv%type         
         );
		 
type tb_movimiento_base is table of ty_movimiento_base;		 

=================  radio button======================================		

if :RG_TPFON = 'P' then
	--
	Set_Radio_Button_Property('RG_PDF', 'RB_PLANO', Enabled, Property_False);
	:reporte := 'sfmrcrtf';
	--	
elsif :RG_TPFON = 'F' then
	--
	Set_Radio_Button_Property('RG_PDF', 'RB_PLANO', Enabled, Property_True);
	:reporte := 'sccpcrfn';
	--
end if;

==============================================================
decode (sign(acrr_vlrrendbr_dia), -1, 'NEGATIVO', 'POSITIVO')

========================= BLOQUE ANÓNIMO=====================================
declare

valor number;
tipo varchar2(10);

begin
    dbms_output.put_line('Inicio'); 
    tipo := null;
    valor := null;
    if  valor < 0 then 
        tipo:= 'POSITIVO';
    elsif valor >0 then 
        tipo:= 'NEGATIVO';
    else tipo:= 'prueba';	
    end if;
     dbms_output.put_line(tipo); 
  exception 
    when others then
     dbms_output.put_line('Error: ' || sqlerrm); 
end;    

========================= type =====================================

  type ty_prme is record ( prme_proceso        sc_tprme.prme_proceso%type,
                           prme_cias           sc_tprme.prme_cias%type,
                           prme_desde_per      sc_tprme.prme_desde_per%type,
                           prme_hasta_per      sc_tprme.prme_hasta_per%type,
                           prme_forma          sc_tprme.prme_forma%type,
                           prme_feccre         sc_tprme.prme_feccre%type,
                           prme_origen         sc_tprme.prme_origen%type,    -- 1002 RFC 50109 22/01/2016 lhernandez
                           prme_origen         sc_tprme.prme_desde_plan%type,   --1003 rsolano
                           prme_origen         sc_tprme.prme_hasta_plan%type    --1003 rsolano
                          );

r_datos  c_datos%rowtype;
============================================================================
clear screen
---------
radio button change
---------
if :RG_TPFON = 'P' then
	--
	Set_Radio_Button_Property('RG_PDF', 'RB_PLANO', Enabled, Property_False);
	:reporte := 'sfmrcrtf';
	--	
elsif :RG_TPFON = 'F' then
	--
	Set_Radio_Button_Property('RG_PDF', 'RB_PLANO', Enabled, Property_True);
	:reporte := 'sccpcrfn';
	--
end if;

============================================================================
----- arrays
============================================================================
declare
   type array_t is varray(3) of varchar2(10);
   array array_t := array_t(); -- Initialise it
begin
   for i in 1..3 loop
      array.extend(); -- Extend it
      array(i) := 'x';
   end loop;
end;




===========TRIFASICA=================================================================
select movi_fecmov, movi_nromov, movi_tpmv, movi_valor , 
       oimv_opin, oimv_valor, oimv_vcapi, oimv_vrend, 
       dmap_nromov_apor, dmap_valor, dmap_vcapi, dmap_vrend,
       tpmv_clin, tpmv_descri
from sf_tmovi, sf_toimv, sf_tdmap, sf_ttpmv
where movi_fond = 8293
and movi_plan = 829301000078
and oimv_fond = movi_fond
and oimv_plan = movi_plan
and oimv_nromov = movi_nromov
and dmap_fond = oimv_fond
and dmap_plan = oimv_plan
and dmap_nromov = oimv_nromov
and dmap_opin = oimv_opin
and dmap_nromov_apor = 2449844
and tpmv_tpmv = movi_tpmv
order by 1,2 ;

===========================================

Atributo_Item('ch_error', 'i');

--autoincrementable
cspc_cspc          NUMBER(10)    GENERATED ALWAYS AS IDENTITY  

==================================================================

sf_qplan.seltitular(i.acdi_fond, i.acdi_plan);  --titular






select  sf_qplan.seltitular(9193,919301051468),
        sf_qplan.seltitular(9193,919301073195),
        sf_qplan.seltitular(9193,919301073134),
        sf_qplan.seltitular(9193,919301073176),
        sf_qplan.seltitular(9193,919301073180),
        sf_qplan.seltitular(9193,919301073138),
        sf_qplan.seltitular(9193,919301073192),
        sf_qplan.seltitular(9193,919301073124),
        sf_qplan.seltitular(9193,919301073157),
from dual;

919301051468
919301073195
919301073134
919301073176
919301073180
919301073138
919301073192
919301073124
919301073157


=================================================================
   --SQL
==================================================================
  --CURSORES
  --
  CURSOR c_viim_dtop IS
  SELECT dtop_viim
  FROM SF_TDTOP, SF_TDISO, SF_TCTOP_TMP
  WHERE dtop_diso = diso_diso
  AND diso_sooc = ctop_sooc 
  AND ctop_ctop = :NEW.movi_ctop
  AND dtop_dtop = NVL(:NEW.movi_dtop,dtop_dtop)--60182
  ;
  Rc_viim_dtop   c_viim_dtop%ROWTYPE;
  v_frecu      VARCHAR2(2);
  --
    open c_frecu;
    fetch c_frecu into v_frecu;
    close c_frecu;
  
--TYPE
  --
    type ge_ty_ntlg_rec is record (
        noti    number(8),
        descri  varchar2(100),
        llave   varchar2(4000),
        fechaE  varchar2(20),
        destino varchar2(100),
        exitoso varchar2(1),
        detalle varchar2(4000));  
        
    TYPE ge_rc_ntlg IS REF CURSOR RETURN ge_ty_ntlg_rec;    
    --
--PROCEDIMIENTO HEAD    
    --
    -----------------------------------------------------------------------------------------------------------------------------
    --  
    -- Procedimiento para....
    --
    Procedure RegistraNotificaRecord_Inmob ( 
        p_viim          in number,
        p_proceso       in varchar2,
        p_urlarchivo    in varchar2,
        p_msg           out varchar2,
        p_tras in number default null  
     );
    --
    -----------------------------------------------------------------------------------------------------------------------------
    --           
    Procedure Obtener_hora_msjes_bienv ( p_hora out varchar2 ) is    
    --
    -- Procedimiento para obtener la hora parametrizada para el envío de los mensajes de bienvenida.
    --  
    -----------------------------------------------------------------------------------------------------------------------------
    --         
    --
    cursor c_prau is 
    select substr(replace(prau_hra_bienv, ':', ''),1, 4) from fd_tprau;
    --
    begin
        --
        open c_prau;
        fetch c_prau into p_hora;
        close c_prau;
        --
     exception
         when sf_qerror.ex_sifi_general then
           raise;
         when sf_qerror.ex_procedimiento then
           raise_application_error(sf_qerror.codigo_ex_sifi, sf_qerror.print_error);
         when others then
          if (sf_qerror.hace_raise(sqlcode)) then
            raise;
          else
            raise_application_error(sf_qerror.codigo_ex_sifi, sf_qerror.print_error);
          end if;    
    end Obtener_hora_msjes_bienv;
    --      
--FUNCTION HEAD      
  --
  Function VRends_Netos_Periodo( p_Fond       integer,
                                  p_Plan       integer,
                                  p_fecha_Ini  date,
                                  p_fecha_Fin  date,
                                  p_OpIn       varchar2  default null ) return number;
  --
   Function Obtener_hora ( p_tpno_tpno varchar2 ) return varchar2 is          
    --
    -- Funcion para obtener la hora.
    --
    cursor c_hora is 
    select substr(replace(tpno_hora, ':', ''),1, 4)
    from GE_TTPNO;
    --
    v_hora varchar2;
    --
    begin
        --
        open c_hora;
        fetch c_hora into v_hora;
        close c_hora;
        --
        return ( v_hora );
        --
     exception
         when sf_qerror.ex_sifi_general then
           raise;
         when sf_qerror.ex_procedimiento then
           raise_application_error(sf_qerror.codigo_ex_sifi, sf_qerror.print_error);
         when others then
          if (sf_qerror.hace_raise(sqlcode)) then
            raise;
          else
            raise_application_error(sf_qerror.codigo_ex_sifi, sf_qerror.print_error);
          end if;    
    end Obtener_hora;


========================TYPES========================

  --
  TYPE r_Apor is record ( Aporte       integer,
                          Fech_Apor    date,
                          TpApo				 varchar2(2),-- soli 1108
                          VCapi        number(20, 2),
                          VRend        number(20, 2),
                          VCntg        number(20, 2)
                         );
  --
  TYPE t_Apor is table of r_Apor index by binary_integer;
  --
  t_ap  t_Apor;



==============  borrar constraint===================

alter table GE_TCNNT
  drop constraint UK_GE_TCNNT_LLAVEEXTERNAUK;


