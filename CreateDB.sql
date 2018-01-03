USE master
IF EXISTS(select * from sys.databases where name='NewsDB')
DROP DATABASE NewsDB
CREATE DATABASE NewsDB
GO

USE NewsDB
GO

CREATE TABLE News(
	ID int IDENTITY(1,1) PRIMARY KEY,
	Title nvarchar(255),
	ImagePath varchar(255),
	Content nvarchar(2000),
	Writer nvarchar(255),
	PublishedDate datetime,
);
GO

INSERT INTO News
VALUES
	(N'Making securty feeds smarter via machine learning','images/i1.jpg',N'IN today’s age of surveillance, with cameras even in our homes, security professionals need to monitor an ever-increasing number of screens. In 2014 alone, 245 million video surveillance cameras were installed globally, according to an IHS report.It is increasingly clear that the ‘watchmen’ are having trouble watching. This is where Singapore-based Vi Dimensions hopes to help, by identifying anomalies to alert human operators that a second look is needed.
While the security industry is already familiar with rule-based analytics, there is still a gap, according to its cofounder and chief executive officer Raymond Looi.“Video analytics has been in the market for the last 10 years, but the way they have been doing it is not very efficient, using rule-based analytics.“This requires you to know what you are looking for and then specify a rule, when most do not know what to look out for,” he says, in a conversation with Digital News Asia (DNA) in Singapore recently.“We felt that there was a gap in the industry in how they applied automation to cameras – and with the proliferation of surveillance cameras and vast amounts of data being generated, we felt that this was an area in which we could differentiate ourselves,” he adds.', N'Benjamin Cher', '5/22/2017 2:29:00'),
	(N'Creating an impressive base to your organisation’s learning pathway',NULL,N'THE digital era has long arrived and is taking the world by storm. Why? Simply because, it’s accessible and fast. A study on E-Learning: Fact or Fiction?, which was retrieved from the SMC Business Council states that the United Airlines reduced its training time for e-ticketing training from 40 hours to 18 by converting from classroom events to a digital learning format. Moreover, the best scores among those who attended the classroom events were lower than the worst scores among those who took the digital version.
This is how learning is evolving into digital and has opened up to an opportunity of conveying learning in a digitalised manner for the personal and professional development of the masses. Hence, it’s imperative for organisations to stay au courant with the latest digital learning trends that can enable them to create a more effective learning avenue for your people. Let’s take a look at some of the current digital learning trends.',N'Johnson','5/21/2017 2:29:00'),
	(N'Malaysia’s central bank adopts agile mindset to fintech wave',NULL,N'BECAUSE the wave of disruption caused by the internet and increasing smartphone usage hit other sectors first, the banking industry has been able to observe the impact of this digital disruption on incumbents, learning lessons along the way.
And as the wave of fintech disruption is now beating on the walls of the financial sector, banking regulators have taken a balanced approach in dealing with the innovation and disruption threatened by fast and hungry startups versus their duty as regulators to ensure an orderly ecosystem where depositors are protected.',N'Mark','5/20/2017 2:29:00'),
	(N'Industry vets behind Ezyhaul bring innovation to logistics industry','i1.jpg',N'SINGAPORE-headquartered logistics startup Ezyhaul, founded in April 2016, recently expanded operations to Malaysia. With “Uber” having become a buzzword thrown around by startups, Ezyhaul considers itself an uber-type business not just because of a disruptive business model but also because of the passion and conviction of its founders.
The three founders all have a background in logistics – chief executive officer Raymond Gillon has 20 years’ experience, chief operating officer Mudasar Mohamed and director of sales Nicky Lum both have 12 years. They were colleagues at international supply-chain management company UTI Worldwide.',N'Emily Banster','5/16/2017 6:29:05'),
	(N'Axiata Welcomes Mitsui as strategic partner at Smart Cambodia',NULL,N'AXIATA Group Bhd now has a new strategic partner in its Cambodian business, after it signed a definitive agreement with Mitsui Co Ltd and its affiliates that will see the parties collectively emerge as a 10% strategy partner in Smart Axiata Co Ltd. 
With Mitsui emerging as a strategic partner, it will put Smart Axiata in a better position to leapfrog its digital leadership in the country.',N'Jane Elizabeth','5/18/2017 4:29:00'),
	(N'EY recommends six steps for organizations to reduce impact of ransomware attacks','i1.jpg',N'IN light of recent cyber attacks focused on global organizations through ransomware, EY is urging organisations worldwide to take immediate action, engage effective response measures to mitigate the effect of these attacks and help protect themselves against future attacks.
“The recent wave of cyber attacks reinforces the need that more needs to be done in cybersecurity. Many companies are complacent and don’t take cybersecurity seriously enough until they experience an incident," Ernst & Young Advisory Services Sdn Bhd partner Jason Yuen said.',N'Ron Edward','5/19/2017 13:29:00');
GO