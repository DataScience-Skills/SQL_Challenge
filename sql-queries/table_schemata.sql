-- Table: public.departments

-- DROP TABLE IF EXISTS public.departments;

CREATE TABLE IF NOT EXISTS public.departments
(
    department_number character varying(4) COLLATE pg_catalog."default" NOT NULL,
    department_name character varying(18) COLLATE pg_catalog."default",
    CONSTRAINT departments_pkey PRIMARY KEY (department_number)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.departments
    OWNER to postgres;
	
-- Table: public.titles

-- DROP TABLE IF EXISTS public.titles;

CREATE TABLE IF NOT EXISTS public.titles
(
    title_id character varying(5) COLLATE pg_catalog."default" NOT NULL,
    title character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT titles_pkey PRIMARY KEY (title_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.titles
    OWNER to postgres;
	
-- Table: public.employees

-- DROP TABLE IF EXISTS public.employees;

CREATE TABLE IF NOT EXISTS public.employees
(
    employee_number integer NOT NULL,
    employee_title_id character varying(5) COLLATE pg_catalog."default",
    birth_date date,
    first_name character varying(30) COLLATE pg_catalog."default",
    last_name character varying(30) COLLATE pg_catalog."default",
    sex character varying(6) COLLATE pg_catalog."default",
    hire_date date,
    CONSTRAINT employees_pkey PRIMARY KEY (employee_number),
    CONSTRAINT employees_employee_title_id_fkey FOREIGN KEY (employee_title_id)
        REFERENCES public.titles (title_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.employees
    OWNER to postgres;
	
-- Table: public.department_employees

-- DROP TABLE IF EXISTS public.department_employees;

CREATE TABLE IF NOT EXISTS public.department_employees
(
    employee_number integer,
    department_number character varying(4) COLLATE pg_catalog."default",
    CONSTRAINT department_employees_department_number_fkey FOREIGN KEY (department_number)
        REFERENCES public.departments (department_number) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT department_employees_employee_number_fkey FOREIGN KEY (employee_number)
        REFERENCES public.employees (employee_number) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.department_employees
    OWNER to postgres;
	
-- Table: public.department_manager

-- DROP TABLE IF EXISTS public.department_manager;

CREATE TABLE IF NOT EXISTS public.department_manager
(
    employee_number integer,
    department_number character varying(4) COLLATE pg_catalog."default",
    CONSTRAINT department_manager_department_number_fkey FOREIGN KEY (department_number)
        REFERENCES public.departments (department_number) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT department_manager_employee_number_fkey FOREIGN KEY (employee_number)
        REFERENCES public.employees (employee_number) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.department_manager
    OWNER to postgres;
	
-- Table: public.salaries

-- DROP TABLE IF EXISTS public.salaries;

CREATE TABLE IF NOT EXISTS public.salaries
(
    employee_number integer,
    salary integer,
    CONSTRAINT salaries_employee_number_fkey FOREIGN KEY (employee_number)
        REFERENCES public.employees (employee_number) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.salaries
    OWNER to postgres;