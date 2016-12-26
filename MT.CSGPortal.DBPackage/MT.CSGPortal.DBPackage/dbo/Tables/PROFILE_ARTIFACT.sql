﻿CREATE TABLE [dbo].[PROFILE_ARTIFACT](
	[PROFILE_ID] [int] NOT NULL,
	[ARTIFACT_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PROFILE_ID] ASC,
	[ARTIFACT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PROFILE_ARTIFACT]  WITH CHECK ADD  CONSTRAINT [ARTFCT_PRFL_TAG] FOREIGN KEY([ARTIFACT_ID])
REFERENCES [dbo].[ARTIFACT] ([ARTIFACT_ID])
GO

ALTER TABLE [dbo].[PROFILE_ARTIFACT] CHECK CONSTRAINT [ARTFCT_PRFL_TAG]
GO
ALTER TABLE [dbo].[PROFILE_ARTIFACT]  WITH CHECK ADD  CONSTRAINT [PRFL_PRFL_TAG] FOREIGN KEY([PROFILE_ID])
REFERENCES [dbo].[PROFILE] ([PROFILE_ID])
GO

ALTER TABLE [dbo].[PROFILE_ARTIFACT] CHECK CONSTRAINT [PRFL_PRFL_TAG]