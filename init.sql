CREATE TABLE IF NOT EXISTS tianyi.users(  
    id INT AUTO_INCREMENT PRIMARY KEY,  
    username VARCHAR(50),  
    password VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS tianyi.records(  
    id INT AUTO_INCREMENT PRIMARY KEY,  
    title VARCHAR(255),  
    rating VARCHAR(255),  
    tags VARCHAR(255),  
    chapters VARCHAR(255),  
    link VARCHAR(255),  
    team VARCHAR(255),  
    lastRead DATE,  
    userID INT NOT NULL  
);