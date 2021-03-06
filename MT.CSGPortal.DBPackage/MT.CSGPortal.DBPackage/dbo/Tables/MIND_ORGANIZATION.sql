﻿CREATE TABLE [dbo].[MIND_ORGANIZATION](
	[MID] [varchar](12) NOT NULL,
	[ORGANIZATION_GROUP_ID] [int] NOT NULL,
	[START_DATE_DD] [int] NOT NULL,
	[START_DATE_MM] [int] NOT NULL,
	[START_DATE_YYYY] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MID] ASC,
	[ORGANIZATION_GROUP_ID] ASC,
	[START_DATE_DD] ASC,
	[START_DATE_MM] ASC,
	[START_DATE_YYYY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MIND_ORGANIZATION]  WITH CHECK ADD  CONSTRAINT [MIND_ORG_MIND_FK] FOREIGN KEY([MID])
REFERENCES [dbo].[MIND] ([MID])
GO

ALTER TABLE [dbo].[MIND_ORGANIZATION] CHECK CONSTRAINT [MIND_ORG_MIND_FK]
GO
ALTER TABLE [dbo].[MIND_ORGANIZATION]  WITH CHECK ADD  CONSTRAINT [MIND_ORG_ORG_GRP_FK] FOREIGN KEY([ORGANIZATION_GROUP_ID])
REFERENCES [dbo].[ORGANIZATION_GROUP] ([ORGANIZATION_GROUP_ID])
GO

ALTER TABLE [dbo].[MIND_ORGANIZATION] CHECK CONSTRAINT [MIND_ORG_ORG_GRP_FK]