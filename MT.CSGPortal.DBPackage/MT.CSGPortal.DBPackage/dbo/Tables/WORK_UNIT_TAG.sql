﻿CREATE TABLE [dbo].[WORK_UNIT_TAG](
	[TAG_ID] [int] NOT NULL,
	[WORK_UNIT_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TAG_ID] ASC,
	[WORK_UNIT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WORK_UNIT_TAG]  WITH CHECK ADD  CONSTRAINT [PRJ_PRPSL_TAG_TAG_FK] FOREIGN KEY([TAG_ID])
REFERENCES [dbo].[TAG] ([TAG_ID])
GO

ALTER TABLE [dbo].[WORK_UNIT_TAG] CHECK CONSTRAINT [PRJ_PRPSL_TAG_TAG_FK]
GO
ALTER TABLE [dbo].[WORK_UNIT_TAG]  WITH CHECK ADD  CONSTRAINT [WRK_UNT_WRK_UNT_TAG_FK] FOREIGN KEY([WORK_UNIT_ID])
REFERENCES [dbo].[WORK_UNIT] ([WORK_UNIT_ID])
GO

ALTER TABLE [dbo].[WORK_UNIT_TAG] CHECK CONSTRAINT [WRK_UNT_WRK_UNT_TAG_FK]