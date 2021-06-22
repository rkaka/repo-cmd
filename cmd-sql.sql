====================version=================================
select * from ad_tctvr
where ctvr_objeto = 'sfmofcex';
--    
begin 
ge_pvers ('fdmognds', 'FORMA', 1025);
end;   
--  
pyinstaller --windowed --onefile index2.py
====================seguimientos============================

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

=======================exceptions==============================
  exception
    when others then
      v_Error := sqlerrm;
      Bloqueo('Error con sf_tdsci: ' || v_Error);

v_Error  varchar2(500);

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

 sf_qtipo_movimiento.tpmv_proc_esp(i.fondo,'RFTE_RNGE'); --procesos especiales
 SF_QMULTI_OPCION.fondo_pensiones(:fond_fond) = 'N'  -- maneja pensiones
 ( sf_qcmto.Maneja_Compartimento(p_fond,null) = 'S'  --maneja compartimentos
 sf_qtppt.recupera_acdi_opin(pc_fond, pc_plan, pc_fecha)  -- opcion de inversion 
 if SF_QMULTI_OPCION.fondo_pensiones(:ctrl.fond_fond) = 'N' then 
 --
 pi_qfnge.VMone(:mvca.mvca_mone,:cargar.fecarch,'R', 'O', 1 ); --->funcion moneda.
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



=============== EN key-next-item======================
-- 
Enter;
if form_failure then
  raise form_trigger_failure;
End if;
--
go_block('SF_TFOND');
execute_Query;
--