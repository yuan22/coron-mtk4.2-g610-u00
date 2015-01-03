.class public Lcom/mediatek/lbs/GpsConfigManager;
.super Ljava/lang/Object;
.source "GpsConfigManager.java"


# static fields
.field public static final EPOAUTODOWNLOADINTERVAL_DEFAULT:I = 0x1c20

.field public static final EPOAUTODOWNLOADRETRYINTERVAL_DEFAULT:I = 0x12c

.field public static final EPOAUTODOWNLOADRETRYTIME_MAX:I = 0x5

.field public static final EPOAUTODOWNLOADRETRYTIME_MIN:I = 0x1

.field private static final EPO_FILE_DEST_DEFAULT:Ljava/lang/String; = "/data/misc/EPO.DAT"

.field private static final EPO_FILE_SOURCE_DEFAULT:Ljava/lang/String; = "/system/etc/EPO.DAT"

.field public static final GPS_CONF_FILE:Ljava/lang/String; = "/system/etc/gps_conf.xml"


# instance fields
.field private mEpoAutoDownLoadInterval:I

.field private mEpoAutoDownLoadRetryInterval:I

.field private mEpoAutoDownLoadRetryTime:I

.field private mEpoAutoDownloadFromWifi:Z

.field private mEpoFileDest:Ljava/lang/String;

.field private mEpoFileSource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownloadFromWifi:Z

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryTime:I

    .line 39
    const/16 v0, 0x1c20

    iput v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadInterval:I

    .line 40
    const/16 v0, 0x12c

    iput v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryInterval:I

    .line 41
    const-string v0, "/system/etc/EPO.DAT"

    iput-object v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoFileSource:Ljava/lang/String;

    .line 42
    const-string v0, "/data/misc/EPO.DAT"

    iput-object v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoFileDest:Ljava/lang/String;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 156
    const-string v0, "[GpsProfileManager]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method


# virtual methods
.method public getEpoAutoDownLoadInterval()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadInterval:I

    return v0
.end method

.method public getEpoAutoDownLoadRetryInterval()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryInterval:I

    return v0
.end method

.method public getEpoAutoDownLoadRetryTime()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryTime:I

    return v0
.end method

.method public getEpoAutoDownloadFromWifi()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownloadFromWifi:Z

    return v0
.end method

.method public getEpoFileDest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoFileDest:Ljava/lang/String;

    return-object v0
.end method

.method public getEpoFileSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoFileSource:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, tmp:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEpoAutoDownloadFromWifi=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownloadFromWifi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mEpoAutoDownLoadRetryTime=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mEpoAutoDownLoadInterval=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mEpoAutoDownLoadRetryInterval=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    return-object v0
.end method

.method public updateGpsConfig(Ljava/lang/String;)V
    .locals 13
    .parameter "path"

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x1

    .line 72
    const/4 v9, 0x0

    .line 73
    .local v9, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    .line 80
    .local v6, is:Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 81
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    .line 83
    .end local v6           #is:Ljava/io/InputStream;
    .local v7, is:Ljava/io/InputStream;
    :try_start_1
    const-string v10, "utf-8"

    invoke-interface {v9, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 85
    :cond_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 86
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 87
    .local v4, eventType:I
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 88
    .local v8, name:Ljava/lang/String;
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result v2

    .line 90
    .local v2, count:I
    const/4 v10, 0x2

    if-eq v4, v10, :cond_4

    .line 126
    :cond_1
    if-ne v4, v11, :cond_0

    .line 138
    if-eqz v7, :cond_2

    .line 139
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    :cond_2
    move-object v6, v7

    .line 144
    .end local v2           #count:I
    .end local v4           #eventType:I
    .end local v7           #is:Ljava/io/InputStream;
    .end local v8           #name:Ljava/lang/String;
    .restart local v6       #is:Ljava/io/InputStream;
    :cond_3
    :goto_0
    return-void

    .line 92
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v2       #count:I
    .restart local v4       #eventType:I
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #name:Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v10, "gps_conf_para"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 93
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 94
    invoke-interface {v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, attrName:Ljava/lang/String;
    invoke-interface {v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, attrValue:Ljava/lang/String;
    const-string v10, "epo_autodownload_fromwifi"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 98
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string v10, "YES"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v10, v11

    :goto_2
    iput-boolean v10, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownloadFromWifi:Z

    .line 93
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 99
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 100
    :cond_7
    const-string v10, "epo_autodownload_retrytime"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryTime:I

    .line 102
    iget v10, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryTime:I

    if-ge v10, v11, :cond_8

    .line 103
    const/4 v10, 0x1

    iput v10, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryTime:I

    .line 105
    :cond_8
    iget v10, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryTime:I

    if-le v10, v12, :cond_5

    .line 106
    const/4 v10, 0x5

    iput v10, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryTime:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_3

    .line 128
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v2           #count:I
    .end local v4           #eventType:I
    .end local v5           #i:I
    .end local v8           #name:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 129
    .end local v7           #is:Ljava/io/InputStream;
    .local v3, e:Ljava/io/FileNotFoundException;
    .restart local v6       #is:Ljava/io/InputStream;
    :goto_4
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 138
    if-eqz v6, :cond_3

    .line 139
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 140
    :catch_1
    move-exception v3

    .line 141
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v0       #attrName:Ljava/lang/String;
    .restart local v1       #attrValue:Ljava/lang/String;
    .restart local v2       #count:I
    .restart local v4       #eventType:I
    .restart local v5       #i:I
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #name:Ljava/lang/String;
    :cond_9
    :try_start_6
    const-string v10, "epo_autodownload_interval"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadInterval:I

    .line 110
    iget v10, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadInterval:I

    if-gtz v10, :cond_5

    .line 111
    const/16 v10, 0x1c20

    iput v10, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadInterval:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_3

    .line 130
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v2           #count:I
    .end local v4           #eventType:I
    .end local v5           #i:I
    .end local v8           #name:Ljava/lang/String;
    :catch_2
    move-exception v3

    move-object v6, v7

    .line 131
    .end local v7           #is:Ljava/io/InputStream;
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6       #is:Ljava/io/InputStream;
    :goto_5
    :try_start_7
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 138
    if-eqz v6, :cond_3

    .line 139
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 140
    :catch_3
    move-exception v3

    .line 141
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 113
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v0       #attrName:Ljava/lang/String;
    .restart local v1       #attrValue:Ljava/lang/String;
    .restart local v2       #count:I
    .restart local v4       #eventType:I
    .restart local v5       #i:I
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #name:Ljava/lang/String;
    :cond_a
    :try_start_9
    const-string v10, "epo_autodownload_retry_interval"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryInterval:I

    .line 115
    iget v10, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryInterval:I

    if-gtz v10, :cond_5

    .line 116
    const/16 v10, 0x12c

    iput v10, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoAutoDownLoadRetryInterval:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    .line 132
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v2           #count:I
    .end local v4           #eventType:I
    .end local v5           #i:I
    .end local v8           #name:Ljava/lang/String;
    :catch_4
    move-exception v3

    move-object v6, v7

    .line 133
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v3       #e:Ljava/io/IOException;
    .restart local v6       #is:Ljava/io/InputStream;
    :goto_6
    :try_start_a
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 138
    if-eqz v6, :cond_3

    .line 139
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    .line 140
    :catch_5
    move-exception v3

    .line 141
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 118
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v0       #attrName:Ljava/lang/String;
    .restart local v1       #attrValue:Ljava/lang/String;
    .restart local v2       #count:I
    .restart local v4       #eventType:I
    .restart local v5       #i:I
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #name:Ljava/lang/String;
    :cond_b
    :try_start_c
    const-string v10, "epo_file_source"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 119
    iput-object v1, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoFileSource:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_3

    .line 134
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v2           #count:I
    .end local v4           #eventType:I
    .end local v5           #i:I
    .end local v8           #name:Ljava/lang/String;
    :catch_6
    move-exception v3

    move-object v6, v7

    .line 135
    .end local v7           #is:Ljava/io/InputStream;
    .local v3, e:Ljava/lang/Exception;
    .restart local v6       #is:Ljava/io/InputStream;
    :goto_7
    :try_start_d
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 138
    if-eqz v6, :cond_3

    .line 139
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_0

    .line 140
    :catch_7
    move-exception v3

    .line 141
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 120
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v0       #attrName:Ljava/lang/String;
    .restart local v1       #attrValue:Ljava/lang/String;
    .restart local v2       #count:I
    .restart local v4       #eventType:I
    .restart local v5       #i:I
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #name:Ljava/lang/String;
    :cond_c
    :try_start_f
    const-string v10, "epo_file_dest"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 121
    iput-object v1, p0, Lcom/mediatek/lbs/GpsConfigManager;->mEpoFileDest:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_3

    .line 137
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v2           #count:I
    .end local v4           #eventType:I
    .end local v5           #i:I
    .end local v8           #name:Ljava/lang/String;
    :catchall_0
    move-exception v10

    move-object v6, v7

    .line 138
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    :goto_8
    if-eqz v6, :cond_d

    .line 139
    :try_start_10
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 142
    :cond_d
    :goto_9
    throw v10

    .line 140
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v2       #count:I
    .restart local v4       #eventType:I
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #name:Ljava/lang/String;
    :catch_8
    move-exception v3

    .line 141
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v6, v7

    .line 143
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 140
    .end local v2           #count:I
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #eventType:I
    .end local v8           #name:Ljava/lang/String;
    :catch_9
    move-exception v3

    .line 141
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 137
    .end local v3           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v10

    goto :goto_8

    .line 134
    :catch_a
    move-exception v3

    goto :goto_7

    .line 132
    :catch_b
    move-exception v3

    goto :goto_6

    .line 130
    :catch_c
    move-exception v3

    goto/16 :goto_5

    .line 128
    :catch_d
    move-exception v3

    goto/16 :goto_4
.end method
