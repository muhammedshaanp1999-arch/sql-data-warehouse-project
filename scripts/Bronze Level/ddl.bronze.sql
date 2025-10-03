/*

=====================================================================================================================
DDL SCRIPT : CREATE BRONZE TABLES
=====================================================================================================================
Script purpose:
       This script creates tables in the 'BRONZE' schema, droping existing tables
       if they already exist.
    Run the script to re-define the DDl structure of 'BRONZE' Tables
======================================================================================================================
*/





if OBJECT_ID ('BRONZE.crm_cust_info','U') IS NOT NULL
DROP TABLE BRONZE.crm_cust_info;

CREATE TABLE BRONZE.crm_cust_info(

   cst_id int,
   cst_key nvarchar(50),
   cst_firstname nvarchar(50),
   cst_lastname nvarchar(50),
   cst_material_status nvarchar(50),
   cst_gndr nvarchar(50),
   cst_create_date date 
   );

if OBJECT_ID ('BRONZE.crm_pra_info','U') IS NOT NULL
DROP TABLE BRONZE.crm_pra_info;

   CREATE TABLE BRONZE.crm_pra_info(
prd_id INT,
prd_key NVARCHAR (50) ,
prd_nm NVARCHAR (50),
prd_cost INT,
prd_line NVARCHAR (50),
prd_start_dt DATETIME,
prd_end_dt DATETIME
) ;

if OBJECT_ID ('BRONZE.crm_sales_details','U') IS NOT NULL
DROP TABLE BRONZE.crm_sales_details;

CREATE TABLE BRONZE.crm_sales_details ( 
sls_ord_num NVARCHAR (50) ,
sls_prd_key NVARCHAR (50) ,
sls_cust_id INT,
sis_order_dt INT,
sls_ship_dt INT,
sls_due_dt INT,
sis_sales INT,
sls_quantity INT,
sls_price INT
);

if OBJECT_ID ('BRONZE.erp_loc_a101','U') IS NOT NULL
DROP TABLE BRONZE.erp_loc_a101;

CREATE TABLE BRONZE.erp_loc_a101 (
cid NVARCHAR ( 50),
cntry NVARCHAR (50)
) ;

if OBJECT_ID ('BRONZE.erp_cust_az12','U') IS NOT NULL
DROP TABLE BRONZE.erp_cust_az12;

CREATE TABLE BRONZE.erp_cust_az12 (
cid NVARCHAR (50),
bdate DATE,
gen NVARCHAR ( 50)
);

if OBJECT_ID ('BRONZE.erp_px_cat_g1v2','U') IS NOT NULL
DROP TABLE BRONZE.erp_px_cat_g1v2;
CREATE TABLE BRONZE.erp_px_cat_g1v2 (
id NVARCHAR (50),
cat NVARCHAR (50) ,
subcat NVARCHAR (50) ,
maintance NVARCHAR (50)
);
