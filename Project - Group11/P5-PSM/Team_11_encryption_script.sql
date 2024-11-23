-- Encryption script

USE STMS
GO

-- Encryption 1: Encrypting Data During Insert

-- Step 1: Create a Master Key
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Stms@6789';

-- Step 2: Create a Certificate
CREATE CERTIFICATE CertificateName
WITH SUBJECT = 'STMS Certificate for Symmetric Key Encryption';

-- Step 3: Create a Symmetric Key
CREATE SYMMETRIC KEY SymmetricKeyName
WITH ALGORITHM = AES_256
ENCRYPTION BY CERTIFICATE CertificateName;


-- Step 4 : Alter table to add password column in tourist table
ALTER TABLE Tourist
ADD EncryptedPassword VARBINARY(MAX);


-- Step 5: Open the Symmetric Key, Encrypt, and Insert Data
OPEN SYMMETRIC KEY SymmetricKeyName
DECRYPTION BY CERTIFICATE CertificateName;

INSERT INTO Tourist (FirstName, LastName, Email, EncryptedPassword)
VALUES (
    'Richard',
    'Hall',
    'richard.hall@example.com',
    EncryptByKey(Key_GUID('SymmetricKeyName'), 'Stms@richard5678')
);


-- Step 6: Close the Symmetric Key
CLOSE SYMMETRIC KEY SymmetricKeyName;

--To decrypt 

OPEN SYMMETRIC KEY SymmetricKeyName
DECRYPTION BY CERTIFICATE CertificateName;

SELECT FirstName, LastName, Email,
       CAST(DecryptByKey(EncryptedPassword) AS NVARCHAR(MAX)) AS DecryptedPassword
FROM Tourist;

CLOSE SYMMETRIC KEY SymmetricKeyName;

-------------------------------------------------------

