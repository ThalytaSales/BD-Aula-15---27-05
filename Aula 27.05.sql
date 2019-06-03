/*modelo de funcões de linha */

use produto 
go

select * from secao
go

select * from produto
go

select * from preco_produto
go

select dsc_produto, len (dsc_produto) as 'total de caracteres'
from produto;
go

select dsc_produto, lower (dsc_produto) as 'Nome do curso Minusculo'
from produto;
go

select dsc_produto, upper (dsc_produto) as 'Nome do curso Maiusculo'
from produto;
go

select dsc_produto, left (dsc_produto,3) as 'left - Descrição produto'
from produto;
go

select dsc_produto, Right (dsc_produto,4) as 'Right - Descrição produto'
from produto;
go

select dsc_produto, Right (LTRIM(dsc_produto), 1) as 'Right/Ltrim - Descrição Produto'
from produto;
go

select dsc_produto, Right (RTRIM(dsc_produto), 3) as 'Right/Ltrim - Descrição Produto'
from produto;
go

/*funções data*/

	Select getdate()							as 'data atual';
go

	Select datepart(YEAR,getdate())				as 'ano atual';
go
	
	Select datepart(MONTH,getdate())			as 'mês atual';
go

	Select datepart(DAY,getdate())				as 'dia atual';
go
	
	Select datepart(HOUR,getdate())				as 'hora atual';
go

	Select datepart(MINUTE,getdate())			as 'Minuto atual';
go

	Select datepart(SECOND,getdate())			as 'Segundo atual';
go

	Select datepart(WEEKDAY,getdate())				as 'dia da semana atual';
go

select DATEPART(YEAR, dat_inivigencia)  'Ano da data de vigência'
from preco_produto;
go

select DATEPART(MONTH, dat_inivigencia)  'Mês da data de vigência'
from preco_produto;
go

select DATEPART(DAY,dat_inivigencia)  'dia data de vigência',
					dat_inivigencia
from preco_produto;
go

select DATEPART(DAYOFYEAR, dat_inivigencia) ' Dia do ano da data de vigência'
from preco_produto;
go

select DATEPART(WEEK, dat_inivigencia) ' semana da data de vigência'
from preco_produto;
go

select DATEDIFF(day,dat_inivigencia,GETDATE())'Dia Corridos' , getdate() ' Date Atual', dat_inivigencia ' Data Vigencia Produto'
from preco_produto
go

/*Arredondamento Universal*/

select	round (45.925, 2) as 'Arredondamento acima',
		round (45.923, 2) as 'Arredondamento para baixo',
		round (45.923, 0) as 'Arredondamento ma 2a casa de milhar',
		round (45.923, 1) as 'Arredondamento na centena',
		round (45.923, -1)as 'Arrepondamento na milhar para baixo',
		round (45.923, -1)as 'Arredondamento na milhar acima';
go

/*Funções de usuarios dos sistema */

select * from sysusers;
go

select user_name();
go

select name from sysusers where name = user_name(1);
go
select name from sysusers where name = user_name(3);
go
/* Usuario Logado no BD */

select system_user 
declare @sys_usr char(30);
set @sys_usr = system_user;
select ' o usuario logado no BD é :' +@sys_usr;

/*Suser_name([server_user_id])*/

select suser_name()
select suser_sname(1)

	