.class public Lcom/mediatek/lbs/QuickGpsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QuickGpsReceiver.java"


# static fields
.field private static final ASSISTDATE_FILE_CHECKED:Ljava/lang/String; = "assistdate_file_checked"

.field private static final ASSISTDATE_FILE_MODIFY_DATE:Ljava/lang/String; = "assistdate_file_modify_date"

.field private static final GEMINI_PHONE:Z = true

.field private static final QUICKGPS_PROFILE:Ljava/lang/String; = "quickgps_profile"

.field private static final TAG:Ljava/lang/String; = "Settings/QuickgpsReceiver"


# instance fields
.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEpoFileStartTime:J

.field private mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

.field private mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

.field private mWifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoFileStartTime:J

    return-void
.end method

.method private checkCopyEpoFileCondition()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 282
    iget-object v6, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v6}, Lcom/mediatek/common/epo/MtkEpoClientManager;->getEpoFileInfo()Lcom/mediatek/common/epo/MtkEpoFileInfo;

    move-result-object v2

    .line 283
    .local v2, epoFileInfo:Lcom/mediatek/common/epo/MtkEpoFileInfo;
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v6}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoFileSource()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 286
    const-string v5, "source epo file is not exist, return false"

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 331
    :goto_0
    return v4

    .line 290
    :cond_0
    iget-object v6, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v6}, Lcom/mediatek/common/epo/MtkEpoClientManager;->getStatus()Z

    move-result v6

    if-nez v6, :cond_1

    .line 291
    const-string v5, "Epo disable, don\'t download the epo file"

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_1
    iput-wide v10, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoFileStartTime:J

    .line 297
    if-nez v2, :cond_2

    .line 298
    const-string v4, "EpoFileInfo is null, can copy the epo file"

    invoke-direct {p0, v4}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    move v4, v5

    .line 299
    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {v2}, Lcom/mediatek/common/epo/MtkEpoFileInfo;->getStartTimeString()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, downLoadTime:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkEpofileDownloadCondition: downloadtime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 306
    if-nez v1, :cond_3

    .line 307
    const-string v4, "don\'t have the epo file, the starttime is unkown"

    invoke-direct {p0, v4}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    move v4, v5

    .line 308
    goto :goto_0

    .line 311
    :cond_3
    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsReceiver;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 313
    .local v0, downLoadDate:Ljava/util/Date;
    if-nez v0, :cond_4

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date is invalid, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    move v4, v5

    .line 315
    goto :goto_0

    .line 319
    :cond_4
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoFileStartTime:J

    .line 321
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "source file last modified:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/sql/Timestamp;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v7}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->getSavedEpoFileModifyDate()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->getEpoFileCheckedStatus()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-eqz v6, :cond_5

    .line 325
    const-string v5, "this epo file has dealed ago"

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 330
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/mediatek/lbs/QuickGpsReceiver;->setSavedEpoFileModifyDate(J)V

    move v4, v5

    .line 331
    goto/16 :goto_0
.end method

.method private checkEpoFileOfDataMisc()V
    .locals 5

    .prologue
    .line 489
    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v3}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoFileDest()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, epofileDest:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".old"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, epofileold:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 494
    .local v2, fileold:Ljava/io/File;
    const-string v3, "checkEpoFileOfDataMisc"

    invoke-direct {p0, v3}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    const-string v3, "need restore the epo file from the old file when old file is exit"

    invoke-direct {p0, v3}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 497
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 498
    const-string v3, "restore epofile error"

    invoke-direct {p0, v3}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 501
    :cond_0
    return-void
.end method

.method private checkEpofileDownloadCondition()Z
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 178
    iget-object v8, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v8}, Lcom/mediatek/common/epo/MtkEpoClientManager;->getEpoFileInfo()Lcom/mediatek/common/epo/MtkEpoFileInfo;

    move-result-object v3

    .line 180
    .local v3, epoFileInfo:Lcom/mediatek/common/epo/MtkEpoFileInfo;
    iget-object v8, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v8}, Lcom/mediatek/common/epo/MtkEpoClientManager;->getStatus()Z

    move-result v8

    if-nez v8, :cond_0

    .line 181
    const-string v7, "Epo disable, don\'t download the epo file"

    invoke-direct {p0, v7}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 214
    :goto_0
    return v6

    .line 185
    :cond_0
    if-nez v3, :cond_1

    .line 186
    const-string v6, "EpoFileInfo is null"

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    move v6, v7

    .line 187
    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {v3}, Lcom/mediatek/common/epo/MtkEpoFileInfo;->getStartTimeString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, downLoadTime:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkEpofileDownloadCondition: downloadtime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 193
    if-nez v2, :cond_2

    .line 194
    const-string v6, "don\'t have the epo file, the starttime is unkown"

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    move v6, v7

    .line 195
    goto :goto_0

    .line 198
    :cond_2
    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsReceiver;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 199
    .local v1, downLoadDate:Ljava/util/Date;
    if-nez v1, :cond_3

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "date is invalid, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    move v6, v7

    .line 201
    goto :goto_0

    .line 204
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 205
    .local v0, c:Ljava/util/Calendar;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calender: year="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 208
    .local v4, interval:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " interval ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 209
    const-wide/32 v8, 0xea60

    iget-object v10, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v10}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoAutoDownLoadInterval()I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v8, v10

    cmp-long v8, v4, v8

    if-lez v8, :cond_4

    move v6, v7

    .line 210
    goto/16 :goto_0

    .line 213
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Epo starttime is not "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v8}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoAutoDownLoadInterval()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mins ago"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private checkNewEpoFileStartTime()V
    .locals 7

    .prologue
    .line 425
    iget-object v5, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v5}, Lcom/mediatek/common/epo/MtkEpoClientManager;->getEpoFileInfo()Lcom/mediatek/common/epo/MtkEpoFileInfo;

    move-result-object v2

    .line 427
    .local v2, epoFileInfo:Lcom/mediatek/common/epo/MtkEpoFileInfo;
    if-nez v2, :cond_0

    .line 428
    const-string v5, "EpoFileInfo is null, can copy the epo file"

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 457
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-virtual {v2}, Lcom/mediatek/common/epo/MtkEpoFileInfo;->getStartTimeString()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, downLoadTime:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkEpofileDownloadCondition: downloadtime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 436
    if-nez v1, :cond_1

    .line 437
    const-string v5, "don\'t have the epo file, the starttime is unkown"

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_1
    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsReceiver;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 443
    .local v0, downLoadDate:Ljava/util/Date;
    if-nez v0, :cond_2

    .line 444
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date is invalid, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 449
    .local v3, newEpoFileStartTime:J
    iget-wide v5, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoFileStartTime:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_3

    .line 450
    const-string v5, "new epofile is newer than old epofile, delete the old epofile"

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 451
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->rmEpoFileOfOld()V

    goto :goto_0

    .line 454
    :cond_3
    const-string v5, "new epofile is old than old profile, restore"

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 455
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkEpoFileOfDataMisc()V

    goto :goto_0
.end method

.method private copyEpoFileData()V
    .locals 15

    .prologue
    .line 340
    const/4 v7, 0x0

    .line 341
    .local v7, in:Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 342
    .local v10, out:Ljava/io/FileOutputStream;
    iget-object v12, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v12}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoFileDest()Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, epofileDest:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".bak"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, destEpoFile:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    .local v5, fileTmp:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .local v6, filedest:Ljava/io/File;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "copyEpoFileData:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 353
    const-string v12, "the dest file is exit, rename it"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 354
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".old"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 355
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "rename the exit file error:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 393
    :try_start_1
    const-string v12, "finally"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 394
    if-eqz v7, :cond_0

    throw v7

    .line 396
    :cond_0
    if-eqz v10, :cond_1

    .line 397
    throw v10

    .line 398
    const-string v12, "out.close"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 399
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    throw v5

    move-result v12

    if-nez v12, :cond_2

    .line 400
    const-string v12, "rename tmp file to epo file error"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 402
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkEpoFileOfDataMisc()V

    .line 416
    :cond_1
    :goto_0
    return-void

    .line 406
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkNewEpoFileStartTime()V

    .line 409
    const-wide/16 v12, 0x1

    invoke-direct {p0, v12, v13}, Lcom/mediatek/lbs/QuickGpsReceiver;->setEpoFileCheckedStatus(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v2

    .line 413
    .local v2, e:Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException: copyEpoFileData "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    :try_start_2
    new-instance v4, Ljava/io/File;

    iget-object v12, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v12}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoFileSource()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_6

    .line 363
    const-string v12, "source file is not exit,return"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 393
    :try_start_3
    const-string v12, "finally"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 394
    if-eqz v7, :cond_4

    throw v7

    .line 396
    :cond_4
    if-eqz v10, :cond_1

    .line 397
    throw v10

    .line 398
    const-string v12, "out.close"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 399
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    throw v5

    move-result v12

    if-nez v12, :cond_5

    .line 400
    const-string v12, "rename tmp file to epo file error"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 402
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkEpoFileOfDataMisc()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 412
    :catch_1
    move-exception v2

    .line 413
    .restart local v2       #e:Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException: copyEpoFileData "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 406
    .end local v2           #e:Ljava/io/IOException;
    :cond_5
    :try_start_4
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkNewEpoFileStartTime()V

    .line 409
    const-wide/16 v12, 0x1

    invoke-direct {p0, v12, v13}, Lcom/mediatek/lbs/QuickGpsReceiver;->setEpoFileCheckedStatus(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 368
    :cond_6
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 369
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v12

    if-nez v12, :cond_9

    .line 370
    const-string v12, "fileTmp.delete() return false"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 393
    :try_start_6
    const-string v12, "finally"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 394
    if-eqz v7, :cond_7

    throw v7

    .line 396
    :cond_7
    if-eqz v10, :cond_1

    .line 397
    throw v10

    .line 398
    const-string v12, "out.close"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 399
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    throw v5

    move-result v12

    if-nez v12, :cond_8

    .line 400
    const-string v12, "rename tmp file to epo file error"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 402
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkEpoFileOfDataMisc()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 412
    :catch_2
    move-exception v2

    .line 413
    .restart local v2       #e:Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException: copyEpoFileData "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 406
    .end local v2           #e:Ljava/io/IOException;
    :cond_8
    :try_start_7
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkNewEpoFileStartTime()V

    .line 409
    const-wide/16 v12, 0x1

    invoke-direct {p0, v12, v13}, Lcom/mediatek/lbs/QuickGpsReceiver;->setEpoFileCheckedStatus(J)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 375
    :cond_9
    :try_start_8
    new-instance v8, Ljava/io/FileInputStream;

    iget-object v12, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v12}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoFileSource()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 376
    .end local v7           #in:Ljava/io/FileInputStream;
    .local v8, in:Ljava/io/FileInputStream;
    :try_start_9
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 378
    .end local v10           #out:Ljava/io/FileOutputStream;
    .local v11, out:Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    :try_start_a
    new-array v0, v12, [B

    .line 380
    .local v0, buf:[B
    :goto_1
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, len:I
    if-lez v9, :cond_b

    .line 381
    const/4 v12, 0x0

    invoke-virtual {v11, v0, v12, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_1

    .line 387
    .end local v0           #buf:[B
    .end local v9           #len:I
    :catch_3
    move-exception v2

    move-object v10, v11

    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 388
    .end local v4           #file:Ljava/io/File;
    .end local v8           #in:Ljava/io/FileInputStream;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v7       #in:Ljava/io/FileInputStream;
    :goto_2
    :try_start_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileNotFoundException: copyEpoFileData "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 393
    :try_start_c
    const-string v12, "finally"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 394
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 396
    :cond_a
    if-eqz v10, :cond_1

    .line 397
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 398
    const-string v12, "out.close"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 399
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 400
    const-string v12, "rename tmp file to epo file error"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 402
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkEpoFileOfDataMisc()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_0

    .line 412
    :catch_4
    move-exception v2

    .line 413
    .local v2, e:Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException: copyEpoFileData "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 384
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #in:Ljava/io/FileInputStream;
    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v4       #file:Ljava/io/File;
    .restart local v8       #in:Ljava/io/FileInputStream;
    .restart local v9       #len:I
    .restart local v11       #out:Ljava/io/FileOutputStream;
    :cond_b
    :try_start_d
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 385
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/FileDescriptor;->sync()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 393
    :try_start_e
    const-string v12, "finally"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 394
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 396
    :cond_c
    if-eqz v11, :cond_e

    .line 397
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 398
    const-string v12, "out.close"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 399
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 400
    const-string v12, "rename tmp file to epo file error"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 402
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkEpoFileOfDataMisc()V

    move-object v10, v11

    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 403
    .end local v8           #in:Ljava/io/FileInputStream;
    .restart local v7       #in:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 406
    .end local v7           #in:Ljava/io/FileInputStream;
    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v8       #in:Ljava/io/FileInputStream;
    .restart local v11       #out:Ljava/io/FileOutputStream;
    :cond_d
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkNewEpoFileStartTime()V

    .line 409
    const-wide/16 v12, 0x1

    invoke-direct {p0, v12, v13}, Lcom/mediatek/lbs/QuickGpsReceiver;->setEpoFileCheckedStatus(J)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    :cond_e
    move-object v10, v11

    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 414
    .end local v8           #in:Ljava/io/FileInputStream;
    .restart local v7       #in:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 412
    .end local v7           #in:Ljava/io/FileInputStream;
    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v8       #in:Ljava/io/FileInputStream;
    .restart local v11       #out:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v2

    .line 413
    .restart local v2       #e:Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException: copyEpoFileData "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    move-object v10, v11

    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 415
    .end local v8           #in:Ljava/io/FileInputStream;
    .restart local v7       #in:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 406
    .end local v0           #buf:[B
    .end local v4           #file:Ljava/io/File;
    .end local v9           #len:I
    .local v2, e:Ljava/io/FileNotFoundException;
    :cond_f
    :try_start_f
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkNewEpoFileStartTime()V

    .line 409
    const-wide/16 v12, 0x1

    invoke-direct {p0, v12, v13}, Lcom/mediatek/lbs/QuickGpsReceiver;->setEpoFileCheckedStatus(J)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_0

    .line 389
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v2

    .line 390
    .local v2, e:Ljava/io/IOException;
    :goto_3
    :try_start_10
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException: copyEpoFileData "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 393
    :try_start_11
    const-string v12, "finally"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 394
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 396
    :cond_10
    if-eqz v10, :cond_1

    .line 397
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 398
    const-string v12, "out.close"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 399
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 400
    const-string v12, "rename tmp file to epo file error"

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 402
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkEpoFileOfDataMisc()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_0

    .line 412
    :catch_7
    move-exception v2

    .line 413
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException: copyEpoFileData "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 406
    :cond_11
    :try_start_12
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkNewEpoFileStartTime()V

    .line 409
    const-wide/16 v12, 0x1

    invoke-direct {p0, v12, v13}, Lcom/mediatek/lbs/QuickGpsReceiver;->setEpoFileCheckedStatus(J)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    goto/16 :goto_0

    .line 392
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 393
    :goto_4
    :try_start_13
    const-string v13, "finally"

    invoke-direct {p0, v13}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 394
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 396
    :cond_12
    if-eqz v10, :cond_13

    .line 397
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 398
    const-string v13, "out.close"

    invoke-direct {p0, v13}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 399
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_14

    .line 400
    const-string v13, "rename tmp file to epo file error"

    invoke-direct {p0, v13}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 402
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkEpoFileOfDataMisc()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    goto/16 :goto_0

    .line 412
    :catch_8
    move-exception v2

    .line 413
    .restart local v2       #e:Ljava/io/IOException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException: copyEpoFileData "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 414
    .end local v2           #e:Ljava/io/IOException;
    :cond_13
    :goto_5
    throw v12

    .line 406
    :cond_14
    :try_start_14
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkNewEpoFileStartTime()V

    .line 409
    const-wide/16 v13, 0x1

    invoke-direct {p0, v13, v14}, Lcom/mediatek/lbs/QuickGpsReceiver;->setEpoFileCheckedStatus(J)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    goto :goto_5

    .line 392
    .end local v7           #in:Ljava/io/FileInputStream;
    .restart local v4       #file:Ljava/io/File;
    .restart local v8       #in:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v12

    move-object v7, v8

    .end local v8           #in:Ljava/io/FileInputStream;
    .restart local v7       #in:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v7           #in:Ljava/io/FileInputStream;
    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v8       #in:Ljava/io/FileInputStream;
    .restart local v11       #out:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v12

    move-object v10, v11

    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8           #in:Ljava/io/FileInputStream;
    .restart local v7       #in:Ljava/io/FileInputStream;
    goto :goto_4

    .line 389
    .end local v7           #in:Ljava/io/FileInputStream;
    .restart local v8       #in:Ljava/io/FileInputStream;
    :catch_9
    move-exception v2

    move-object v7, v8

    .end local v8           #in:Ljava/io/FileInputStream;
    .restart local v7       #in:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v7           #in:Ljava/io/FileInputStream;
    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v8       #in:Ljava/io/FileInputStream;
    .restart local v11       #out:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v2

    move-object v10, v11

    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8           #in:Ljava/io/FileInputStream;
    .restart local v7       #in:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 387
    .end local v4           #file:Ljava/io/File;
    :catch_b
    move-exception v2

    goto/16 :goto_2

    .end local v7           #in:Ljava/io/FileInputStream;
    .restart local v4       #file:Ljava/io/File;
    .restart local v8       #in:Ljava/io/FileInputStream;
    :catch_c
    move-exception v2

    move-object v7, v8

    .end local v8           #in:Ljava/io/FileInputStream;
    .restart local v7       #in:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private getEpoFileCheckedStatus()J
    .locals 6

    .prologue
    .line 148
    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    const-string v4, "quickgps_profile"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 150
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    const-string v3, "assistdate_file_checked"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 151
    .local v0, date:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get EpoFileCheckedStatus from sharedpreference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 152
    return-wide v0
.end method

.method private getSavedEpoFileModifyDate()J
    .locals 6

    .prologue
    .line 124
    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    const-string v4, "quickgps_profile"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 126
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    const-string v3, "assistdate_file_modify_date"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 127
    .local v0, date:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get saveepofiledate from sharedpreference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 128
    return-wide v0
.end method

.method private handleBootCompletedAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkCopyEpoFileCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkEpoFileOfDataMisc()V

    .line 515
    const-string v0, "update the epo file"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 516
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->copyEpoFileData()V

    .line 518
    :cond_0
    return-void
.end method

.method private handleConnectivityAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 243
    const/4 v1, -0x1

    .line 244
    .local v1, networkType:I
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 246
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleConnectivityAction, networktype="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 256
    if-nez v1, :cond_2

    .line 258
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->stopQuickGpsService()V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    const-string v2, "WARNING: no active network"

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->stopQuickGpsService()V

    goto :goto_0

    .line 259
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v2}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoAutoDownloadFromWifi()Z

    move-result v2

    if-nez v2, :cond_3

    .line 262
    const-string v2, "don\'t open the config of epo autodownload from wifi"

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->checkEpofileDownloadCondition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/mediatek/lbs/QuickGpsReceiver;->startDownloadEpoFile()V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 521
    const-string v0, "Settings/QuickgpsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void
.end method

.method private rmEpoFileOfOld()V
    .locals 4

    .prologue
    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v3}, Lcom/mediatek/lbs/GpsConfigManager;->getEpoFileDest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".old"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, epofileold:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 469
    .local v1, fileold:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete the epo file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    const-string v2, "delete succcess"

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private setEpoFileCheckedStatus(J)V
    .locals 5
    .parameter "status"

    .prologue
    .line 136
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    const-string v3, "quickgps_profile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 138
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save EpoFileCheckedStatus to sharedpreference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 140
    const-string v2, "assistdate_file_checked"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    return-void
.end method

.method private setSavedEpoFileModifyDate(J)V
    .locals 5
    .parameter "date"

    .prologue
    .line 112
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    const-string v3, "quickgps_profile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 114
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 115
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save quickGpsFileDate to sharedpreference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 116
    const-string v2, "assistdate_file_modify_date"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    return-void
.end method

.method private startDownloadEpoFile()V
    .locals 5

    .prologue
    .line 221
    const-string v1, "start service to download epo file"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_EPODOWNLOAD_FROMWIFI"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    const-class v4, Lcom/mediatek/lbs/QuickGpsService;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 225
    return-void
.end method

.method private stopQuickGpsService()V
    .locals 3

    .prologue
    .line 234
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/mediatek/lbs/QuickGpsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 236
    return-void
.end method

.method private stringToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .parameter "time"

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 161
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1           #formatter:Ljava/text/SimpleDateFormat;
    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 163
    .restart local v1       #formatter:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 165
    .local v2, pos:Ljava/text/ParsePosition;
    invoke-virtual {v1, p1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 167
    .local v0, ctime:Ljava/util/Date;
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, action:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    .line 76
    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "is_open_quickgps"

    invoke-static {v3, v4, v2}, Landroid/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 78
    .local v1, is_open_quickgps:Z
    :goto_0
    if-nez v1, :cond_2

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quick gps is not open:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 104
    :cond_0
    :goto_1
    return-void

    .end local v1           #is_open_quickgps:Z
    :cond_1
    move v1, v2

    .line 76
    goto :goto_0

    .line 84
    .restart local v1       #is_open_quickgps:Z
    :cond_2
    const-string v2, "mtk-epo-client"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/epo/MtkEpoClientManager;

    iput-object v2, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    .line 85
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 86
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mWifiMgr:Landroid/net/wifi/WifiManager;

    .line 87
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mWifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_4

    .line 88
    :cond_3
    const-string v2, "mEpoMgr or mConnMgr or mWifiMgr is null"

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :cond_4
    new-instance v2, Lcom/mediatek/lbs/GpsConfigManager;

    invoke-direct {v2}, Lcom/mediatek/lbs/GpsConfigManager;-><init>()V

    iput-object v2, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    .line 93
    iget-object v2, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    const-string v3, "/system/etc/gps_conf.xml"

    invoke-virtual {v2, v3}, Lcom/mediatek/lbs/GpsConfigManager;->updateGpsConfig(Ljava/lang/String;)V

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GpsConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/lbs/QuickGpsReceiver;->mGpsConfigMgr:Lcom/mediatek/lbs/GpsConfigManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/lbs/QuickGpsReceiver;->log(Ljava/lang/String;)V

    .line 96
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/QuickGpsReceiver;->handleConnectivityAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 100
    :cond_5
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/QuickGpsReceiver;->handleBootCompletedAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1
.end method
