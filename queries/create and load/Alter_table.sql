-- ALTER TABLE grants MODIFY StDate VARCHAR(45);
-- ALTER TABLE grants MODIFY EndDate VARCHAR(45);
ALTER TABLE milestonespassed ADD PRIMARY KEY (StudentId, MId);