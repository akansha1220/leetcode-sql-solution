select round(sum(t1.tiv_2016),2) as tiv_2016 from
(select * from insurance 
where tiv_2015 in (select tiv_2015 from insurance group by tiv_2015 having count(tiv_2015)>1)) t1,(select * from insurance group by lat,lon having count(*)=1) t2
where 
t1.pid=t2.pid