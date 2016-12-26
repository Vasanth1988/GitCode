﻿CREATE TABLE [dbo].[ARTIFACT_CATEGORY_REL](
	[ARTIFACT_ID] [int] NOT NULL,
	[ARTIFACT_CATEGORY_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ARTIFACT_ID] ASC,
	[ARTIFACT_CATEGORY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ARTIFACT_CATEGORY_REL]  WITH CHECK ADD  CONSTRAINT [ARTFCT_ARTFCT_CTGRY_REL_FK] FOREIGN KEY([ARTIFACT_ID])
REFERENCES [dbo].[ARTIFACT] ([ARTIFACT_ID])
GO

ALTER TABLE [dbo].[ARTIFACT_CATEGORY_REL] CHECK CONSTRAINT [ARTFCT_ARTFCT_CTGRY_REL_FK]
GO
ALTER TABLE [dbo].[ARTIFACT_CATEGORY_REL]  WITH CHECK ADD  CONSTRAINT [ARTFCT_CTG_ARTFCT_CTG_REL_FK] FOREIGN KEY([ARTIFACT_CATEGORY_ID])
REFERENCES [dbo].[ARTIFACT_CATEGORY] ([ARTIFACT_CATEGORY_ID])
GO

ALTER TABLE [dbo].[ARTIFACT_CATEGORY_REL] CHECK CONSTRAINT [ARTFCT_CTG_ARTFCT_CTG_REL_FK]