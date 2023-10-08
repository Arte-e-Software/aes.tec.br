use aes

select top 1 * from ME_MEI_ZO_SP

select * from envio_email where data = '2023-10-08 00:14:18.960'
insert into envio_email
select distinct top 1000 email, getdate() from ME_MEI_ZO_SP
where EMAIL not in(select EMAIL from envio_email)

-- Create a new table called '[envio_email]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[envio_email]', 'U') IS NOT NULL
DROP TABLE [dbo].[envio_email]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[envio_email]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY, -- Primary Key column
    [email] VARCHAR(100) NOT NULL,
    [data_lista] datetime  NOT NULL
    -- Specify more columns here
);
GO
